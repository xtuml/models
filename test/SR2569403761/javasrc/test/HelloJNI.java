package test;

public class HelloJNI {

    static {
        System.load(System.getProperty("test.jni.lib"));
    }
    
    public native void displayMessage();
	
    public static void main(String[] args) {
        HelloJNI app = new HelloJNI();
        app.displayMessage();
        System.gc();
    }
}