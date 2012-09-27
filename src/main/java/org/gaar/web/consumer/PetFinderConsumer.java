package org.gaar.web.consumer;

import java.math.BigInteger;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;

import org.gaar.util.StringUtils;
import org.petfinder.entity.Petfinder;
import org.petfinder.entity.PetfinderAuthData;
import org.petfinder.entity.PetfinderBreedList;
import org.petfinder.entity.PetfinderPetRecord;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.DigestUtils;
import org.springframework.web.client.RestTemplate;

/**
 * Class to consume PetFinder services. PetFinder API documentation can be found
 * at http://www.petfinder.com/developers/api-docs
 * 
 * @author kskronek
 * 
 */
public class PetFinderConsumer {

	Logger logger = LoggerFactory.getLogger(PetFinderConsumer.class);

	private static final String ANIMAL = "animal";
	private static final String ANIMAL_ID = "id";
	private static final String BREED = "breed";
	private static final String FORMAT = "format";
	private static final String LOCATION = "location";
	private static final String OUTPUT = "output";
	private static final String SEX = "sex";
	private static final String SHELTERID = "shelterid";
	private static final String SIZE = "size";

	private static final String API_KEY = "15c639ff6d160dc55ff6d37677bb0880";
	private static final String API_SECRET = "f14226e0353d1fceca8fcbd17ed06881";
	private static final String METHOD_AUTH_TOKEN = "auth.getToken?";
	private static final String METHOD_BREED_LIST = "breed.list?";
	private static final String METHOD_RANDOM_PET = "pet.getRandom?";
	private static final String METHOD_GET_PET = "pet.get?";

	private static final String PETFINDER_HOST = "http://api.petfinder.com/";

	private static final String QUERY_AUTH_TOKEN = "key=" + API_KEY;

	private RestTemplate restTemplate = new RestTemplate();

	private static PetfinderAuthData authData;

	/**
	 * Method authToken calls the PetFinder API to retrieve a new token. The
	 * token is contained within PetfinderAuthData and expires after an hour.
	 * 
	 * @return PetfinderAuthData
	 */
	public PetfinderAuthData authToken() {
		final String sig = signatureParam(QUERY_AUTH_TOKEN);
		final String url = StringUtils.concat(PETFINDER_HOST, METHOD_AUTH_TOKEN, QUERY_AUTH_TOKEN, sig);
		final Petfinder petfinder = restTemplate.getForObject(url, Petfinder.class);
		final PetfinderAuthData auth = petfinder.getAuth();
		logger.debug("authToken : " + auth.getToken());
		return auth;
	}

	/**
	 * Method breedList.
	 * 
	 * @param animal
	 *            String
	 * @return PetfinderBreedList
	 */
	public PetfinderBreedList breedList(String animal) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put(ANIMAL, animal);

		final String query = buildQuery(params);
		logger.debug("breedList(): query: " + query);

		final String sig = signatureParam(query);
		final String url = StringUtils.concat(PETFINDER_HOST, METHOD_BREED_LIST, query, sig);
		logger.debug("breedList(): url: " + url);

		final Petfinder petfinder = restTemplate.getForObject(url, Petfinder.class);
		final PetfinderBreedList breeds = petfinder.getBreeds();

		return breeds;
	}

	protected String buildQuery(Map<String, Object> params) {
		logger.debug("buildQuery()");
		StringBuilder sb = new StringBuilder();
		sb.append("key=").append(API_KEY);
		sb.append("&token=").append(this.getAuthData().getToken());
		if (params != null && !params.isEmpty()) {
			for (String key : params.keySet()) {
				final String value = String.valueOf(params.get(key));
				if (params.get(key) != null && StringUtils.hasText(value)) {
					sb.append("&").append(key).append("=").append(value);
				}
			}
		}
		final String string = sb.toString();
		logger.debug("buildQuery() : built query : " + string);
		return string;
	}

	/**
	 * Method getAuthData is a private method to only get a new
	 * PetfinderAuthData if the original one was never instantiated or has
	 * expired or is about to expire.
	 * 
	 * @return PetfinderAuthData
	 */
	private PetfinderAuthData getAuthData() {
		/*
		 * subtracting some time to ensure token is still good by the time it is
		 * used
		 */
		final BigInteger now = BigInteger.valueOf(GregorianCalendar.getInstance().getTimeInMillis() - 500);
		if (authData == null || authData.getExpires().compareTo(now) < 1) {
			authData = authToken();
		}
		return authData;
	}

	public PetfinderPetRecord getPet(BigInteger animalId, String format) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put(ANIMAL_ID, animalId);
		params.put(FORMAT, format);

		final String query = buildQuery(params);
		logger.debug("getPet(): query: " + query);

		final String sig = signatureParam(query);
		final String url = StringUtils.concat(PETFINDER_HOST, METHOD_GET_PET, query, sig);
		logger.debug("getPet(): url: " + url);

		final Petfinder petfinder = restTemplate.getForObject(url, Petfinder.class);
		final PetfinderPetRecord pet = petfinder.getPet();

		return pet;
	}

	public PetfinderPetRecord randomPet(String animal, String breed, String size, Character sex, String location,
			String shelterId, String output) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put(ANIMAL, animal);
		params.put(BREED, breed);
		params.put(SIZE, size);
		params.put(SEX, sex);
		params.put(LOCATION, location);
		params.put(SHELTERID, shelterId);
		params.put(OUTPUT, output);

		final String query = buildQuery(params);
		logger.debug("randomPet(): query: " + query);
		final String sig = signatureParam(query);
		final String url = StringUtils.concat(PETFINDER_HOST, METHOD_RANDOM_PET, query, sig);
		logger.debug("randomPet(): url: " + url);
		final Petfinder petfinder = restTemplate.getForObject(url, Petfinder.class);
		final PetfinderPetRecord randomPet = petfinder.getPet();
		logger.debug("randomPet(): randomPet: " + randomPet);
		return randomPet;
	}

	/**
	 * Method generateSignature generates a MD5 hash of the query string. The
	 * generated hash is appended to the query string as
	 * "&sig={generatedMD5Signature}".
	 * 
	 * @param query
	 *            String
	 * @param params
	 *            String[]
	 * @return String the generated MD5 hash as a hex string
	 */
	private String signatureParam(String query) {
		logger.debug("generateSignature() : query parameter : " + query);
		StringBuilder sb = new StringBuilder();
		sb.append(API_SECRET).append(query);
		final String string = sb.toString();
		logger.debug("generateSignature() : query to hash : " + string);
		final String md5DigestAsHex = DigestUtils.md5DigestAsHex(string.getBytes());
		logger.debug("generateSignature() : md5 : " + md5DigestAsHex);
		return "&sig=" + md5DigestAsHex;
	}
}
