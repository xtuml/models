package lib;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.StringTokenizer;

import org.xtuml.bp.core.CorePlugin;


public class GuiBridge {
    
    private static GuiConnection requester = null;
    private static final int SOCKET_ERROR = -1;
    
    /**
     * Call this method to establish a socket connection with the GUI
     */
    public static int connect() {
        if ( null == requester ) requester = new GuiConnection();
        try {
            requester.connect();
        } catch (UnknownHostException unknownHost) {
            CorePlugin.out.println("You are trying to connect to an unknown host.");
            requester.tearDown();
            requester = null;
            return SOCKET_ERROR;
        } catch (IOException ioException) {
            CorePlugin.out.println("Connection lost.");
            requester.tearDown();
            requester = null;
            return SOCKET_ERROR;
        }
        return 1;
    }
    
    /**
     * Call this method to check the socket for a message
     */
    public static int poll() {
        if ( null != requester ) {
            try {
                return requester.poll();
            } catch ( IOException e ) {
                CorePlugin.out.println("Connection lost.");
                requester.tearDown();
                requester = null;
                return SOCKET_ERROR;
            }
        }
        else return SOCKET_ERROR;
    }

    /**
     * Send message setTime to GUI
     * @param time in seconds
     */
    public static void setTime(int time) {
        if (requester != null) {
            try {
                requester.sendMessage(new SetTime(time));
            } catch ( IOException e ) {
                CorePlugin.out.println("Connection lost.");
                requester.tearDown();
                requester = null;
            }
        }
    }
    
    /**
     * Send message setData to GUI. 
     * @param value
     * @param unit as specified in <code>SignalData</code>
     */
    public static void setData(float value, int unit) {
        if (requester != null) {
            try {
                requester.sendMessage(new SetData(value, unit));
            } catch ( IOException e ) {
                CorePlugin.out.println("Connection lost.");
                requester.tearDown();
                requester = null;
            }
        }
    }
    
    /**
     * Send message setIndicator to GUI.
     * @param value
     */
    public static void setIndicator(int value) {
        if (requester != null) {
            try {
                requester.sendMessage( new SetIndicator(value));
            } catch ( IOException e ) {
                CorePlugin.out.println("Connection lost.");
                requester.tearDown();
                requester = null;
            }
        }
    }
    
    /**
     * When instantiated, the <code>GuiConnection</code> will connect to the
     * Watch GUI. It will then sit in a loop waiting for signals from the GUI.
     * The loop is terminated when the GUI is closed or some other client
     * (another Verifier session or generated) steals the connection. There can
     * only be one
     */
    private static class GuiConnection {
        Socket requestSocket;
        DataOutputStream out;
        BufferedReader in;

        private void connect() throws IOException {
            requestSocket = new Socket("localhost", 2003);
            requestSocket.setSoTimeout( 10 ); // set read timeout for 10 milliseconds
            CorePlugin.out.println("Connected to localhost on port 2003");
            out = new DataOutputStream(requestSocket.getOutputStream());
            out.flush();
            in = new BufferedReader(new InputStreamReader(requestSocket.getInputStream()));
        }
        
        private int poll() throws IOException {
            try {
                String msg = in.readLine();
                if (msg == null) {
                    CorePlugin.out.println("Connection closed by server");
                    return SOCKET_ERROR;
                }
                StringTokenizer tokenizer = new StringTokenizer(msg, ",");
                return Integer.parseInt(tokenizer.nextToken());
            } catch ( IOException e ) {
                if ( e instanceof SocketTimeoutException ) { /* do nothing */ }
                else throw e;
            }
            return SignalData.SIGNAL_NO_NULL_SIGNAL;
        }
        
        private void sendMessage( SignalData data ) throws IOException {
            data.serialize(out);
            out.write('\n');
            out.flush();
        }
        
        private void tearDown() {
            try {
                if ( null != requestSocket ) requestSocket.close();
                if ( null != out ) out.close();
                if ( null != in ) in.close();
            } catch ( IOException e ) {}
        }
    }
}
