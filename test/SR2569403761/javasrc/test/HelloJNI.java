package test;

public class HelloJNI {

    static {
        System.load(System.getProperty("test.jni.lib"));
    }
    
    public native String getMessage();
	
    // Main not used during test
    // Here to allow alternate confirmation of successful JNI binding.
    public static void main(String[] args) {
        HelloJNI app = new HelloJNI();
        System.out.println(app.getMessage());
        System.gc();
    }
}