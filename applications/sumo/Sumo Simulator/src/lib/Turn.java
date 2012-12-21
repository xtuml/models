package lib;

import java.io.DataOutputStream;
import java.util.StringTokenizer;

public class Turn extends SignalData {
	
	public static final long serialVersionUID = 0;
	public int orientation;
	
	public Turn() {
		super(SIGNAL_TURN);
	}
	
	public Turn(int orientation) {
		super(SIGNAL_TURN);
		this.orientation = orientation;
	}
	
	@Override
	public void unserialize(StringTokenizer in) {
		orientation = Integer.parseInt(in.nextToken());
	}
	
	@Override
	public void serialize(DataOutputStream dos) {
		super.serialize(dos);
		SignalData.serializeInt(dos, orientation);
	}
}
