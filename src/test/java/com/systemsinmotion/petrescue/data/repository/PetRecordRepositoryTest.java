package com.systemsinmotion.petrescue.data.repository;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.systemsinmotion.petrescue.entity.AnimalType;
import com.systemsinmotion.petrescue.entity.PetRecord;

@ContextConfiguration(locations = { "classpath:/META-INF/spring/dao-config.xml" })
@RunWith(SpringJUnit4ClassRunner.class)
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = true)
@Transactional
public class PetRecordRepositoryTest {
	private static final String NEW_NAME = "Oliver";

	PetRecord pet;

	@Autowired
	PetRecordRepository petRecordRepository;

	@Before
	public void beforeClass() {
		this.pet = new PetRecord();
		this.pet.setName("Teddy Test Pet");
		this.pet.setAnimalType(AnimalType.PIG);
		this.pet.setShelterId("MI666");
		this.pet = petRecordRepository.save(this.pet);
	}

	@After
	public void afterClass() {
	}

	@Test
	public void findAll() {
		final List<PetRecord> pets = petRecordRepository.findAll();
		assertNotNull(pets);
		assertTrue(pets.size() >= 1);
	}

	@Test
	public void find() {
		final PetRecord pig = petRecordRepository.findOne(this.pet.getId());
		assertNotNull(pig);
		assertEquals(pet, pig);
	}
	
	@Test
	public void update() {
		this.pet.setName(NEW_NAME);
		petRecordRepository.saveAndFlush(pet);
		final PetRecord pig = petRecordRepository.findOne(this.pet.getId());
		assertNotNull(pig);
		assertEquals(NEW_NAME, pig.getName());
	}
}
