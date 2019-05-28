package lib;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.StringTokenizer;

public class SumoSimulatorProxy  {

	private SumoSimulatorProxy.ApplicationConnection server;
	private SumoRing sumoRing;
	
	public SumoSimulatorProxy(SumoRing sumoRing) {
		this.sumoRing = sumoRing;
		// the connection handle lives for the entire duration of this program
		new ConnectionHandler().start();
	}
	

	public void send(SignalData data) {
		if (server != null && !server.connection.isClosed()) {
			server.sendSignal(data);
		}
	}
	
	/**
	 * The <code>ConnectionHandler</code> sits and waits for clients
	 * to connect. As soon as a new connection is detected, any existing
	 * connections are released, allowing the most recently connected client
	 * to control and be controlled by the GUI.
	 */
	public class ConnectionHandler extends Thread {

		ServerSocket providerSocket;
		@Override
		public void run() {
			try {
				providerSocket = new ServerSocket(2004);
				System.out.println("Waiting for connection");
				Socket connection = providerSocket.accept();
				while (true) {
					server = new ApplicationConnection(connection);
					server.start();
					Socket newConnection = providerSocket.accept();
					connection.close();
					connection = newConnection;
				}
			} catch (IOException ioException) {
				ioException.printStackTrace();
			} finally {
				try {
					providerSocket.close();
				} catch(IOException ioException){
					ioException.printStackTrace();
				}
				new ConnectionHandler().start();
			}
		}
	}
	
	/**
	 * The <code>ApplicationConnection</code> is the connection to the underlying 
	 * application that takes input from the GUI and displays data via the GUI.
	 * Messages are from the application are received on this thread. Message sending 
	 * occurs from the UI thread. 
	 */
	public class ApplicationConnection extends Thread {
		Socket connection = null;
		DataOutputStream out;
		BufferedReader in;
		String message = "";
		
	 	public ApplicationConnection(Socket connection) {
	 		this.connection = connection;
	 	}
	 	
		public void sendSignal(SignalData data) {
			try{
				data.serialize(out);
				out.write('\n');
				out.flush();
			} catch(IOException ioException){
				ioException.printStackTrace();
			}
		}
		public void run() {
			try {
				System.out.println("Connection received from " + connection.getInetAddress().getHostName());
				out = new DataOutputStream(connection.getOutputStream());
				out.flush();
				in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
				
				// main loop
				while (true) {
					try {
						String msg = in.readLine();
						// data arrives in a comma separated list
						StringTokenizer tokenizer = new StringTokenizer(msg, ",");
						SignalData data = null;
						
						// work out the data type of the incoming message
						// and set the action (run()) to be carried out
						switch (Integer.parseInt(tokenizer.nextToken())) {
						case SignalData.SIGNAL_TURN:
							data = new Turn() {
								public static final long serialVersionUID = 0;
								@Override
								public void run() {
									sumoRing.turn(orientation);
								}
							};
							break;
						case SignalData.SIGNAL_GO:
							data = new Go() {
								public static final long serialVersionUID = 0;
								@Override
								public void run() {
									sumoRing.go(direction);
								}
							};
							break;
						case SignalData.SIGNAL_SET_NAME:
							data = new SetName() {
								public static final long serialVersionUID = 0;
								@Override
								public void run() {
									sumoRing.registerSumo(name);
								}
							};
							break;
						case SignalData.SIGNAL_TICK:
							data = new SignalData(SignalData.SIGNAL_TICK) {
								public static final long serialVersionUID = 0;
								@Override
								public void run() {
									sumoRing.tick();
								}
							};
							break;
						default:
							break;
						}
						
						// initialize data from the incoming message
						data.unserialize(tokenizer);
						
						// execute the associated action
						data.run();
					} catch (IOException ioe) {
						System.out.println("Connection closed by client.");
						break;
					}
				}
			} catch (IOException ioe) {
				ioe.printStackTrace();
			} finally {
				try {
					connection.close();
					sumoRing.reset();
					
				} catch (IOException ioException){
					ioException.printStackTrace();
				}
			}
		}
	}
}