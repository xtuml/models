package keypadui;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.StringTokenizer;

// Base class for any signal that send from or to the GUI Watch
public class SignalData implements Serializable, Runnable {
    
    public static final long serialVersionUID  = 0;
    
    // client to server signals
    public static final int SIGNAL_NO_RESULT   = 0;
    public static final int SIGNAL_NO_ERROR    = 1;
    
    //server to client signals
    public static final int SIGNAL_NO_KEY      = 0;
    public static final int SIGNAL_NO_CLEAR    = 1;
    
    public int signalNo;
    
    public SignalData( int signalNo ) {
        this.signalNo = signalNo;
    }
    public void unserialize( StringTokenizer in ) {}
    
    public void serialize( DataOutputStream dos ) {
        char[] chars = String.format( "%d,", signalNo ).toCharArray();
        for ( char c : chars ) {
            try {
                dos.write( c );
            } catch ( IOException e ) {
                e.printStackTrace();
            }
        }
    }
    
    @Override
    public void run() {}
    
    protected static void serializeInt( DataOutputStream dos, int value ) {
        char[] chars = String.format( "%-32d,", value ).toCharArray();
        for ( char c : chars ) {
            try {
                dos.write( c );
            } catch ( IOException e ) {
                e.printStackTrace();
            }
        }
    }

}
