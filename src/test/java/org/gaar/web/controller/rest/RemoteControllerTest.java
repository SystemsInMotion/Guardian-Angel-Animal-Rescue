package org.gaar.web.controller.rest;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.gaar.web.controller.rest.RemoteController;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.MethodRule;
import org.junit.rules.TestWatchman;
import org.junit.runner.RunWith;
import org.junit.runners.model.FrameworkMethod;
import org.petfinder.entity.PetfinderPetRecord;
import org.petfinder.entity.PetfinderPetRecordList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:/rest-context.xml" })
public class RemoteControllerTest {
	
	@SuppressWarnings("deprecation")
	@Rule public MethodRule watchman = new TestWatchman() {
	    public void starting(FrameworkMethod method) {
	      logger.info("{} being run...", method.getName());
	    }
	  };
	  
	private static Logger logger = LoggerFactory.getLogger(RemoteControllerTest.class);
	// static RequestSpecification req = given().contentType(ContentType.JSON);
	// static ResponseSpecification res =
	// expect().statusCode(200).contentType(ContentType.JSON);

	@Autowired
	private RemoteController remoteController;

	@Before
	public void before() {
		// this.remoteController = new RemoteControllextr();
	}

	@Test
	public void getPets() {
		final PetfinderPetRecordList petRecordList = remoteController.doGetPets();
		assertNotNull(petRecordList);
		final List<PetfinderPetRecord> petRecords = petRecordList.getPet();
		// final RequestSpecification reqSpec = given();
		// final ResponseSpecification spec =
		// given().spec(req).expect().spec(res);
		// .body()
		// .when().get(walletURL);
	}

}
