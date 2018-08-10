package lib;

import java.io.DataOutputStream;
import java.util.StringTokenizer;

public class SetName extends SignalData {
	public static final long serialVersionUID = 0;
	
	public String name;
	
	public SetName() {
		super(SIGNAL_SET_NAME);
	}
	
	public SetName(String direction) {
		super(SIGNAL_SET_NAME);
		this.name = direction;
	}
	
	@Override
	public void unserialize(StringTokenizer in) {
		name = in.nextToken();
	}
	
	@Override
	public void serialize(DataOutputStream dos) {
		super.serialize(dos);
		SignalData.serializeString(dos, name);
	}
}
