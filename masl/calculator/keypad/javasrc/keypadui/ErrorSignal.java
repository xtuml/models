package keypadui;

import java.util.StringTokenizer;

public class ErrorSignal extends SignalData {

    public static final long serialVersionUID = 0;
    
    public String message;
    
    public ErrorSignal() {
        super( SIGNAL_NO_ERROR );
    }
    
    public ErrorSignal( String message ) {
        super( SIGNAL_NO_ERROR );
        this.message = message;
    }
    
    @Override
    public void unserialize( StringTokenizer in ) {
        message = in.nextToken();
    }

}
