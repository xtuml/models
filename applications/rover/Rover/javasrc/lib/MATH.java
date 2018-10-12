package lib;

import java.lang.Math;

public class MATH {
 
	public static float bearing(float x1, float x2, float y1, float y2) 
	{
		float b = (float)(90 - (180/Math.PI)*Math.atan2(y2-y1, x2-x1));
		
		if ( b < 0 ) {
			b = 360 + b;
		}
		return b;
	}

	public static float abs(float a) 
	{
		return Math.abs(a);
	}
}