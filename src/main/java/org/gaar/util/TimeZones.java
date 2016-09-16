package org.gaar.util;

import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;

public class TimeZones {

	public static void main(String[] args) {
		String[] ids = TimeZone.getAvailableIDs();

		Map<String, String> map = new TreeMap<String, String>();
		for (String id : ids) {
			map.put(id, TimeZone.getTimeZone(id).getDisplayName(Locale.US));
		}

		System.out.println("ID" + "\t" + "Display Name");
		for (String key : map.keySet()) {
			System.out.println(key + "\t" + map.get(key));
		}
	}

}
