package com.utils;

public class GenerateUtility {
	
	public static String generateRandomName() {
		String prefix = "Auto_";
		return prefix + String.valueOf(System.currentTimeMillis());
	}

}
