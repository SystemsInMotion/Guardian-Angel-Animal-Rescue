package org.gaar.web.consumer;

import org.junit.Before;
import org.junit.Test;

public class PetFinderConsumerTest {

	PetFinderConsumer consumer;
	
	@Before
	public void before() {
		this.consumer = new PetFinderConsumer();
	}
	
	@Test
	public void breedList() {
		String animal = "cat";
		this.consumer.breedList(animal);
	}
}
