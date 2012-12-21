//========================================================================
//
//(c) Copyright 2007-2012 by Mentor Graphics Corp. All rights reserved.
//
//========================================================================
 
package library;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.StringTokenizer;

import lib.SetData;
import lib.SetTime;
import lib.SignalData;
import uidatatypes.Unit;
import uiinterfaces.IActionsAndDataFromProvider;
import uiinterfaces.IActionsAndDataToProvider;

import com.mentor.nucleus.bp.core.ComponentInstance_c;
import com.mentor.nucleus.bp.core.CorePlugin;


public class UI implements IActionsAndDataToProvider
{
	public static IActionsAndDataFromProvider uiComm;
	
	public static GuiConnection requester;
	
	public UI(IActionsAndDataFromProvider UIComm) {
		uiComm = UIComm;
		CorePlugin.out.println("Initializing realized UI component.");
		if ( uiComm != null ) {
			CorePlugin.out.println("The UIComm port value is now set.");
		}
    }
	
	/**
	 * Call this method to establish a socket connection with the GUI
	 */
	@Override
	public void init(ComponentInstance_c senderReceiver) {
	    requester = new GuiConnection();
	    requester.start();
	}

	/**
	 * Send message setTime to GUI
	 * @param time in seconds
	 */
	@Override
	public void setTime(ComponentInstance_c senderReceiver, int time) {
		if (requester != null) {
			requester.sendMessage(new SetTime(time));
		} else {
			CorePlugin.out.println("requester is null.  You need to execute initialization.");
		}
	}
	
	/**
	 * Send message setData to GUI. 
	 * @param value
	 * @param unit as specified in <code>SignalData</code>
	 */
	@Override
	public void setData(ComponentInstance_c senderReceiver, Float value, Unit unit) {
		if (requester != null) {
			requester.sendMessage(new SetData(value, unit));
		} else {
			CorePlugin.out.println("requester is null.  You need to execute initialization.");
		}
	}

	/**
	 * When instantiated, the <code>GuiConnection</code> will connect to the
	 * Watch GUI. It will then sit in a loop waiting for signals from the GUI.
	 * The loop is terminated when the GUI is closed or some other client
	 * (another Verifier session or generated) steals the connection. There can
	 * only be one
	 */
	public static class GuiConnection extends Thread {
		Socket requestSocket;
		DataOutputStream out;
		BufferedReader in;
	 	SignalData data;

		public void run() {
			try {
				requestSocket = new Socket("localhost", 2003);
				CorePlugin.out.println("Connected to localhost on port 2003");
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
    				} else { 
    					CorePlugin.out.println("Read data from server.");
    				}
					
					StringTokenizer tokenizer = new StringTokenizer(msg, ",");
					switch (Integer.parseInt(tokenizer.nextToken())) {
					case SignalData.SIGNAL_NO_TARGET_PRESSED:
			    		uiComm.setTargetPressed(null);
		    			CorePlugin.out.println("UI: sending targetPressed message out UIComm port");
						break;
					case SignalData.SIGNAL_NO_START_STOP_PRESSED:
						if ( uiComm == null ) {
							CorePlugin.out.println("Communication port is empty");
						} else {
							uiComm.startStopPressed(null);
							CorePlugin.out.println("UI: sending startStopPressed message out UIComm port");
						}
						break;
					case SignalData.SIGNAL_NO_LAP_RESET_PRESSED:
			    		uiComm.lapResetPressed(null);
		    			CorePlugin.out.println("UI: sending lapResetPressed message out UIComm port");
						break;
					case SignalData.SIGNAL_NO_LIGHT_PRESSED:
			    		uiComm.lightPressed(null);
		    			CorePlugin.out.println("UI: sending lightPressed message out UIComm port");
						break;
					case SignalData.SIGNAL_NO_MODE_PRESSED:
			    		uiComm.modePressed(null);
		    			CorePlugin.out.println("UI: sending modePressed message out UIComm port");
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