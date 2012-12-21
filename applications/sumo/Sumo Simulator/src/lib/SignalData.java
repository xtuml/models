package lib;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.StringTokenizer;

/**
 * Base class for any signal that send from or to the GUI Watch
 */
public class SignalData implements Serializable, Runnable {
	
	public static final long serialVersionUID  = 0;
	
	// client to server signals
	public static final int SIGNAL_TURN     = 0;
	public static final int SIGNAL_GO       = 1;
	public static final int SIGNAL_SET_NAME = 2;
	public static final int SIGNAL_TICK = 3;
	
	//server to client signals
	public static final int SIGNAL_LINE_DETECTED = 0;
	public static final int SIGNAL_TOUCH_LEFT    = 1;
	public static final int SIGNAL_TOUCH_RIGHT   = 2;
	public static final int SIGNAL_RELEASE_LEFT    = 3;
	public static final int SIGNAL_RELEASE_RIGHT   = 4;
	
	public int signalNo;
	
	public SignalData(int signalNo) {
		this.signalNo = signalNo;
	}
	public void unserialize(StringTokenizer in) {}
	
	public void serialize(DataOutputStream dos) {
		serializeInt(dos, signalNo);
	}
	
	@Override
	public void run() {}
	
	protected static void serializeString(DataOutputStream dos, String value) {
		char[] chars = (value + ",").toCharArray();
		for (char c : chars) {
			try {
				dos.write(c);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	protected static void serializeInt(DataOutputStream dos, int value) {
		char[] chars = (value + ",").toCharArray();
		for (char c : chars) {
			try {
				dos.write(c);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	protected static void serializeFloat(DataOutputStream dos, float value) {
		char[] chars = (value + ",").toCharArray();
		for (char c : chars) {
			try {
				dos.write(c);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
