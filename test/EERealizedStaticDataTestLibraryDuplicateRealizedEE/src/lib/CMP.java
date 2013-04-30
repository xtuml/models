package lib;

public class CMP
{
	private static String eeData = "DEFAULT LIB Project";

	public static String GetData()
	{
		return eeData;
	}
	public static void SetData(String data)
	{
		eeData = data;
	}
	public static Class<?> preserveMe() {
		return CMP.class;
	}
}