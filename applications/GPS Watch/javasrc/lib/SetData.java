package lib;

import java.io.DataOutputStream;
import java.util.StringTokenizer;

import uidatatypes.Unit;

public class SetData extends SignalData {
	public static final long serialVersionUID = 0;
	
	public float value;
	public Unit unit;
	
	public SetData() {
		super(SIGNAL_NO_SET_DATA);
	}
	
	public SetData(float value, Unit unit) {
		super(SIGNAL_NO_SET_DATA);
		this.value = value;
		this.unit = unit;
	}
	
	@Override
	public void unserialize(StringTokenizer in) {
		value = Float.parseFloat(in.nextToken());
		unit = Unit.valueOf(Integer.parseInt(in.nextToken()));
	}
	
	@Override
	public void serialize(DataOutputStream dos) {
		super.serialize(dos);
		SignalData.serializeFloat(dos, value);
		SignalData.serializeInt(dos, unit.getValue());
	}
}
