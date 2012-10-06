package org.gaar.cache;

import java.net.URL;

import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Ehcache;
import net.sf.ehcache.Element;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;


@Component("cacheWrapper")
@Scope("singleton")
public class EhcacheWrapper<K, V> implements CacheWrapper<K, V> {

	//private static final Logger LOG = LoggerFactory.getLogger(SessionListener.class);

	private static final String CACHE_NAME = "petFinderCache";
	private static final String EHCACHE_XML = "/ehcache.xml";
	public static final String FULL_RESULT_KEY_SUFFIX = "_full";
	public static final String PAGE_RESULT_KEY_SUFFIX = "_page";

	CacheManager cacheManager;

	public EhcacheWrapper() {
		URL url = getClass().getResource(EHCACHE_XML);
		cacheManager = new CacheManager(url);
	}

	@SuppressWarnings("unchecked")
	public V get(final K key) {
		Element element = getCache().get(key);
		if (element != null) {
			return (V) element.getValue();
		}
		return null;
	}

	public Ehcache getCache() {
		return cacheManager.getEhcache(CACHE_NAME);
	}

	public void put(final K key, final V value) {
		getCache().put(new Element(key, value));
	}

	/*public void removeAll(String userName) {
		LOG.info("Removing all cached search results for user:" + userName);
		getCache().remove(userName + FULL_RESULT_KEY_SUFFIX);
		getCache().remove(userName + PAGE_RESULT_KEY_SUFFIX);
	}*/
}
