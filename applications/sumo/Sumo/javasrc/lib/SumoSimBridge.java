package lib;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.StringTokenizer;

import org.xtuml.bp.core.ComponentInstance_c;
import org.xtuml.bp.core.CorePlugin;
import org.xtuml.bp.core.PendingEvent_c;

public class SumoSimBridge {
	
	public static SimConnection requester;
	
	public static PendingEvent_c lineDetectedEvent;
	public static PendingEvent_c touchLeftEvent;
	public static PendingEvent_c releaseLeftEvent;
	public static PendingEvent_c touchRightEvent;
	public static PendingEvent_c releaseRightEvent;

	/**
	 * Feed the Java side of the Bridge with a pre-created event
	 * that can be fired at any point in time. As soon as it has
	 * been fired, these methods should be invoked again, to provide
	 * a replace the event that was fired. This will enable asynchronous
	 * events to be passed in the Java->model direction.
	 */
	public static void feedLineDetectedEvent(Object evt) {
		lineDetectedEvent = (PendingEvent_c)evt;
	}
	public static void feedTouchLeftEvent(Object evt) {
		touchLeftEvent = (PendingEvent_c)evt;
	}
	public static void feedTouchRightEvent(Object evt) {
		touchRightEvent = (PendingEvent_c)evt;
	}
	public static void feedReleaseLeftEvent(Object evt) {
		releaseLeftEvent = (PendingEvent_c)evt;
	}
	public static void feedReleaseRightEvent(Object evt) {
		releaseRightEvent = (PendingEvent_c)evt;
	}
	
	/**
	 * Call this method to establish a socket connection with the GUI
	 */
	public static void connect() {
	    requester = new SimConnection();
	    requester.start();
	}
	/**
	 * Send message setTime to GUI
	 * @param direction in seconds
	 */
	public static void turn(int direction) {
		requester.sendMessage(new Turn(direction));
	}
	
	/**
	 * Send message setData to GUI. 
	 * @param orientation as specified in <code>SignalData</code>
	 */
	public static void go(int orientation) {
		requester.sendMessage(new Go(orientation));
	}
	
	public static void register(String name) {
		requester.sendMessage(new SetName(name));
	}
	
	public static void tick() {
		requester.sendMessage(new SignalData(SignalData.SIGNAL_TICK));
	}
	
	/**
	 * When instantiated, the <code>GuiConnection</code> will connect to the
	 * Watch GUI. It will then sit in a loop waiting for signals from the GUI.
	 * The loop is terminated when the GUI is closed or some other client
	 * (another Verifier session or generated) steals the connection. There can
	 * only be one
	 */
	public static class SimConnection extends Thread {
		Socket requestSocket;
		DataOutputStream out;
		BufferedReader in;
	 	SignalData data;

		public void run() {
			try {
				requestSocket = new Socket("localhost", 2004);
				CorePlugin.out.println("Connected to localhost on port 2004");
				out = new DataOutputStream(requestSocket.getOutputStream());
				out.flush();
				in = new BufferedReader(new InputStreamReader(requestSocket.getInputStream()));
				
				// The keep alive will force the underlying  
				// TCP/IP connection to handle heart beat probing,
				// which allow this thread to detect server side 
				// disconnects. If it isn't kept alive, readLine
				// will block forever and the thread will never be
				// terminated.
				requestSocket.setKeepAlive(true);
				do {
    				String msg = in.readLine();
    				if (msg == null) {
    					CorePlugin.out.println("Connection closed by server");
    					break;
    				}
					
					StringTokenizer tokenizer = new StringTokenizer(msg, ",");
					switch (Integer.parseInt(tokenizer.nextToken())) {
					case SignalData.SIGNAL_LINE_DETECTED:
						if (ComponentInstance_c.getOneI_EXEOnR2964(lineDetectedEvent) != null) {
							lineDetectedEvent.Fire();
						}
		    			CorePlugin.out.println("SIM: lineDetected()");
						break;
					case SignalData.SIGNAL_TOUCH_LEFT:
						if (ComponentInstance_c.getOneI_EXEOnR2964(touchLeftEvent) != null) {
							touchLeftEvent.Fire();
						}
		    			CorePlugin.out.println("SIM: touchLeft()");
						break;
					case SignalData.SIGNAL_TOUCH_RIGHT:
						if (ComponentInstance_c.getOneI_EXEOnR2964(touchRightEvent) != null) {
							touchRightEvent.Fire();
						}
		    			CorePlugin.out.println("SIM: touchRight()");
						break;
					case SignalData.SIGNAL_RELEASE_LEFT:
						if (ComponentInstance_c.getOneI_EXEOnR2964(releaseLeftEvent) != null) {
							releaseLeftEvent.Fire();
						}
		    			CorePlugin.out.println("SIM: releaseLeft()");
						break;
					case SignalData.SIGNAL_RELEASE_RIGHT:
						if (ComponentInstance_c.getOneI_EXEOnR2964(releaseRightEvent) != null) {
							releaseRightEvent.Fire();
						}
		    			CorePlugin.out.println("SIM: releaseRight()");
						break;

					default:
						break;
					}
				} while (requestSocket.isConnected());
				CorePlugin.out.println("Client disconnected");
			} catch (UnknownHostException unknownHost) {
				CorePlugin.out.println("You are trying to connect to an unknown host.");
			} catch (IOException ioException) {
				CorePlugin.out.println("Connection lost.");
			} finally {
				try {
					requestSocket.close();
				} catch( IOException ioException) {
					ioException.printStackTrace();
				}
			}
		}
		
		private void sendMessage(SignalData data) {
			try {
				data.serialize(out);
				out.write('\n');
				out.flush();
			} catch(IOException ioException) {
				ioException.printStackTrace();
			}
		}
	}
}
