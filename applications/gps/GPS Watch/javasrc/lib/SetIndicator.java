package lib;

import java.io.DataOutputStream;
import java.util.StringTokenizer;

public class SetIndicator extends SignalData {
	public static final long serialVersionUID = 0;
	
	public int value;
	
	public SetIndicator() {
		super(SIGNAL_NO_SET_INDICATOR);
	}
	
	public SetIndicator(int value) {
		super(SIGNAL_NO_SET_INDICATOR);
		this.value = value;
	}
	
	@Override
	public void unserialize(StringTokenizer in) {
		value = Integer.parseInt(in.nextToken());
	}
	
	@Override
	public void serialize(DataOutputStream dos) {
		super.serialize(dos);
		SignalData.serializeInt(dos, value);
	}
}
