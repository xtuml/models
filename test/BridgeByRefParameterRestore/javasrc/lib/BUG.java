package lib;

import org.xtuml.bp.core.CorePlugin;

public class BUG {

	public static void Set(BPBoolean Inst_Ref, String Name) {
		try {
			Inst_Ref.setValue(Boolean.parseBoolean(Name.toLowerCase()));
		} catch (Exception ex) {
			ex.printStackTrace(CorePlugin.err);
		}
	}

	public static void Invert(BPBoolean Inst_Ref) {
		Inst_Ref.setValue(!Inst_Ref.getValue());
	}

	public static void Assert_Equals(boolean Value, String Name) {
		try {
			boolean b = Value == Boolean.parseBoolean(Name.toLowerCase());
			String s = Value + " == '" + Name + "' ==> " + b;
			if (b) {
				CorePlugin.out.println(s);
			} else {
				CorePlugin.err.println(s);
			}
		} catch (Exception ex) {
			ex.printStackTrace(CorePlugin.err);
		}
	}
}
