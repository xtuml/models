package keypadui;

import java.util.StringTokenizer;

public class ResultSignal extends SignalData {

    public static final long serialVersionUID = 0;
    
    public float value;
    
    public ResultSignal() {
        super( SIGNAL_NO_RESULT );
    }
    
    public ResultSignal( float value ) {
        super( SIGNAL_NO_RESULT );
        this.value = value;
    }
    
    @Override
    public void unserialize( StringTokenizer in ) {
        value = Float.parseFloat( in.nextToken() );
    }
    
}
