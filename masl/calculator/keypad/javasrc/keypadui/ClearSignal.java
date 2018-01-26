package keypadui;

import java.io.DataOutputStream;

public class ClearSignal extends SignalData {

    public static final long serialVersionUID = 0;
    
    public ClearSignal() {
        super( SIGNAL_NO_CLEAR );
    }

    @Override
    public void serialize( DataOutputStream dos ) {
        super.serialize( dos );
        SignalData.serializeInt( dos, 0 );
    }
    
}
