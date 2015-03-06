package messagetest.testinterface;

import java.util.ArrayList;

import lib.BPInteger;
import testdatatypes.Jarred_Sdt_t;

import org.xtuml.bp.core.ComponentInstance_c;

public interface IJarredTestInterfaceFromProvider {
	public void pingRequirer(ComponentInstance_c senderReceiver, int simpleBV_p,
			ArrayList<Integer> arrayBV_p, Jarred_Sdt_t sdtBV_p,
			BPInteger simpleBR_p, ArrayList<Integer> arrayBR_p,
			Jarred_Sdt_t sdtBR_p, String name);
	public void pingRequirerS(ComponentInstance_c senderReceiver, int simpleBV_p,
			ArrayList<Integer> arrayBV_p, Jarred_Sdt_t sdtBV_p,
			BPInteger simpleBR_p, ArrayList<Integer> arrayBR_p,
			Jarred_Sdt_t sdtBR_p, String name);
	public void pingRequirerC(ComponentInstance_c senderReceiver, int simpleBV_p,
			ArrayList<Integer> arrayBV_p, Jarred_Sdt_t sdtBV_p,
			BPInteger simpleBR_p, ArrayList<Integer> arrayBR_p,
			Jarred_Sdt_t sdtBR_p, String name);
	public void pingRequirerSig(ComponentInstance_c senderReceiver, int simple_p,
			ArrayList<Integer> array_p, Jarred_Sdt_t sdt_p, String name);
	public void pingRequirerSigS(ComponentInstance_c senderReceiver, int simple_p,
			ArrayList<Integer> array_p, Jarred_Sdt_t sdt_p, String name);
	public void pingRequirerSigC(ComponentInstance_c senderReceiver, int simple_p,
			ArrayList<Integer> array_p, Jarred_Sdt_t sdt_p, String name);
	public void complete(ComponentInstance_c senderReceiver, String result, String name);
	public int getResultFromRequirer(ComponentInstance_c senderReceiver, String name);
	public ArrayList<Integer> getArrayFromRequirer(ComponentInstance_c senderReceiver, String name);
	public Jarred_Sdt_t getSDTFromRequirer(ComponentInstance_c senderReceiver, String name);
}
