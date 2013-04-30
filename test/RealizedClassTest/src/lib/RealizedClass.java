package lib;

import java.util.UUID;

public class RealizedClass {
	public static void ByRef(BPInteger number, BPFloat fraction,
			BPBoolean logic, BPString word) {
		number.setValue(10);
		fraction.setValue((float) 1.1);
		word.setValue("Hello Back");
		logic.setValue(true);

	}
	public static void ByValue(int number, float fraction,
			boolean logic, String word) {
		number = 10;
		fraction = (float) 1.1;
		word = "Hello World";
		logic = true;

	}
	public static void ByValueAndByRef(int number, BPInteger digit, String word, BPString sentence){
		number = 100;
		digit.setValue(100);
		word = "Hello World";
		sentence.setValue("Hello World");
		
	}
	public static int ReturnInteger(){
		return 500;
	}
	public static float ReturnReal(){
		return (float) 0.5;
	}
	public static boolean ReturnBoolean(){
		return true;
	}
	public static String ReturnString(){
		return "Hello World";
	}
	public static UUID ReturnUniqueID(){
		return UUID.randomUUID();
	}
	
}
