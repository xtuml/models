package lib;

import java.util.Random;

public class RAND {

	static Random gen = null;
	public static int Random(int range) {
		if (gen == null) {
			gen = new Random();
		}
		int result = gen.nextInt() % range;
		if (result < 0) {
			result = -result;
		}
		return result;
	}
}
