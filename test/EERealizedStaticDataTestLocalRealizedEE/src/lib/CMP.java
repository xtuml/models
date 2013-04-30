
package lib;
public class CMP
{
	private static String eeData = "DEFAULT";
    private static String projectName = " System Project";
    	
	public static String GetData()
	{
		return eeData+projectName;
	}
	public static void SetData(String data)
	{
		eeData = data+projectName ;
	}
	public static Class<?> preserveMe() {
		return CMP.class;
	}
}