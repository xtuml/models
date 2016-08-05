package library;

import org.xtuml.bp.core.ComponentInstance_c;

public interface IUDTTestInterfaceToProvider {
	public void testUDT(ComponentInstance_c sender, int testValue);
    public int returnTestUDT(ComponentInstance_c sender);
	public void testNestedUDT(ComponentInstance_c sender, int testValue);
    public int returnNestedTestUDT(ComponentInstance_c sender);
	public void testRealizedUDTNoAccessors(ComponentInstance_c sender, RealizedTestUDTNoAccessors testValue);
    public RealizedTestUDTNoAccessors returnRealizedUDTNoAccessors(ComponentInstance_c sender);
	public void testNestedRealizedUDTNoAccessors(ComponentInstance_c sender, RealizedTestUDTNoAccessors testValue);
    public RealizedTestUDTNoAccessors returnNestedRealizedUDTNoAccessors(ComponentInstance_c sender);
	public void testRealizedUDTWithAccessors(ComponentInstance_c sender, RealizedTestUDTWithAccessors testValue);
    public RealizedTestUDTWithAccessors returnRealizedUDTWithAccessors(ComponentInstance_c sender);
	public void testNestedRealizedUDTWithAccessors(ComponentInstance_c sender, RealizedTestUDTWithAccessors testValue);
    public RealizedTestUDTWithAccessors returnNestedRealizedUDTWithAccessors(ComponentInstance_c sender);
	public void testSDTWithRealizedUDTs(ComponentInstance_c sender, RealizedUDTTestSDT testValue);
    public RealizedUDTTestSDT returnSDTWithRealizedUDTs(ComponentInstance_c sender);
	public void testNestedSDTWithRealizedUDTs(ComponentInstance_c sender, RealizedUDTTestSDT testValue);
    public RealizedUDTTestSDT returnNestedSDTWithRealizedUDTs(ComponentInstance_c sender);
	public void testEnumeration(ComponentInstance_c sender, TestEnumeration testValue);
    public TestEnumeration returnTestEnumeration(ComponentInstance_c sender);
	public void testNestedEnumeration(ComponentInstance_c sender, TestEnumeration testValue);
    public TestEnumeration returnNestedEnumeration(ComponentInstance_c sender);
    public void executeTest(ComponentInstance_c sender);
    
	public void testUDTSig(ComponentInstance_c sender, int testValue);
	public void testNestedUDTSig(ComponentInstance_c sender, int testValue);
	public void testRealizedUDTNoAccessorsSig(ComponentInstance_c sender, RealizedTestUDTNoAccessors testValue);
	public void testNestedRealizedUDTNoAccessorsSig(ComponentInstance_c sender, RealizedTestUDTNoAccessors testValue);
	public void testRealizedUDTWithAccessorsSig(ComponentInstance_c sender, RealizedTestUDTWithAccessors testValue);
	public void testNestedRealizedUDTWithAccessorsSig(ComponentInstance_c sender, RealizedTestUDTWithAccessors testValue);
	public void testSDTWithRealizedUDTsSig(ComponentInstance_c sender, RealizedUDTTestSDT testValue);
	public void testNestedSDTWithRealizedUDTsSig(ComponentInstance_c sender, RealizedUDTTestSDT testValue);
	public void testEnumerationSig(ComponentInstance_c sender, TestEnumeration testValue);
	public void testNestedEnumerationSig(ComponentInstance_c sender, TestEnumeration testValue);
	public void executeSignalTest(ComponentInstance_c sender);
}
