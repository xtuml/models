package lib;

import java.io.DataOutputStream;
import java.util.StringTokenizer;

public class Go extends SignalData {
	public static final long serialVersionUID = 0;
	
	public int direction;
	
	public Go() {
		super(SIGNAL_GO);
	}
	
	public Go(int direction) {
		super(SIGNAL_GO);
		this.direction = direction;
	}
	
	@Override
	public void unserialize(StringTokenizer in) {
		direction = Integer.parseInt(in.nextToken());
	}
	
	@Override
	public void serialize(DataOutputStream dos) {
		super.serialize(dos);
		SignalData.serializeInt(dos, direction);
	}
}
