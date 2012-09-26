package org.gaar.web.consumer;

import java.math.BigInteger;
import java.util.GregorianCalendar;

import org.petfinder.entity.Petfinder;
import org.petfinder.entity.PetfinderAuthData;
import org.petfinder.entity.PetfinderBreedList;
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
	private static final String API_KEY = "15c639ff6d160dc55ff6d37677bb0880";
	private static final String API_SECRET = "f14226e0353d1fceca8fcbd17ed06881";
	private static final String KEY = "key=";
	private static final String MD5_BASE = API_SECRET + KEY + API_KEY;
	private static final String METHOD_AUTH_TOKEN = "auth.getToken?";
	private static final String PETFINDER_HOST = "http://api.petfinder.com/";
	private static final String QUERY_SIGNATURE = "&sig={sig}";
	private static final String QUERY_AUTH_TOKEN = KEY + "{key}";

	private RestTemplate restTemplate = new RestTemplate();

	private static PetfinderAuthData authData;

	/**
	 * Method authToken calls the PetFinder API to retrieve a new token. The
	 * token is contained within PetfinderAuthData and expires after an hour.
	 * 
	 * @return PetfinderAuthData
	 */
	public PetfinderAuthData authToken() {
		String sig = generateSignature(QUERY_AUTH_TOKEN);
		final String query = PETFINDER_HOST + METHOD_AUTH_TOKEN + QUERY_AUTH_TOKEN + QUERY_SIGNATURE;
		final Petfinder petfinder = restTemplate.getForObject(query, Petfinder.class, API_KEY, sig);
		final PetfinderAuthData auth = petfinder.getAuth();
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
		final PetfinderAuthData authData2 = getAuthData();
		return null;
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
	private String generateSignature(String query, String... params) {
		StringBuilder sb = new StringBuilder();
		sb.append(MD5_BASE);
		for (String param : params) {
		}
		return DigestUtils.md5DigestAsHex(sb.toString().getBytes());
	}

	/**
	 * Method getAuthData is a private method to only get a new
	 * PetfinderAuthData if the original one was never instantiated or has
	 * expired or is about to expire.
	 * 
	 * @return PetfinderAuthData
	 */
	private PetfinderAuthData getAuthData() {
		// subtracting some time to ensure token is still good by the time it is
		// used
		final BigInteger now = BigInteger.valueOf(GregorianCalendar.getInstance().getTimeInMillis() - 500);
		if (authData == null || authData.getExpires().compareTo(now) < 1) {
			authData = authToken();
		}
		return authData;
	}
}
