package keypadui;

import java.io.DataOutputStream;

public class KeySignal extends SignalData {

    public static final long serialVersionUID = 0;
    
    // key codes
    protected static final int KEYCODE_ZERO    = 0;
    protected static final int KEYCODE_ONE     = 1;
    protected static final int KEYCODE_TWO     = 2;
    protected static final int KEYCODE_THREE   = 3;
    protected static final int KEYCODE_FOUR    = 4;
    protected static final int KEYCODE_FIVE    = 5;
    protected static final int KEYCODE_SIX     = 6;
    protected static final int KEYCODE_SEVEN   = 7;
    protected static final int KEYCODE_EIGHT   = 8;
    protected static final int KEYCODE_NINE    = 9;
    protected static final int KEYCODE_PLUS    = 10;
    protected static final int KEYCODE_MINUS   = 11;
    protected static final int KEYCODE_TIMES   = 12;
    protected static final int KEYCODE_DIVIDE  = 13;
    protected static final int KEYCODE_EQUAL   = 14;
    protected static final int KEYCODE_POINT   = 15;
    
    public int code;
    
    public KeySignal() {
        super( SIGNAL_NO_KEY );
    }
    
    public KeySignal( int code ) {
        super( SIGNAL_NO_KEY );
        this.code = code;
    }
    
    @Override
    public void serialize( DataOutputStream dos ) {
        super.serialize( dos );
        SignalData.serializeInt( dos, code );
    }

}
