package externalcodebindingtest.library;

import lib.BPBoolean;
import lib.BPFloat;
import lib.BPInteger;
import lib.BPString;

import org.xtuml.bp.core.ComponentInstance_c;

public interface IExceptionTestInterfaceToProvider {
	void MissingMessage(ComponentInstance_c comp);
    void BadArgumentList(ComponentInstance_c comp, int Integer, float Real, String string, boolean flag, TestStructuredDataType sdt, int extra);
    void BadStructuredDataType(ComponentInstance_c comp, TestStructuredDataType sdt);
    float BadReturnInteger(ComponentInstance_c comp);
    int BadReturnBoolean(ComponentInstance_c comp);
    boolean BadReturnString(ComponentInstance_c comp);
    String BadReturnReal(ComponentInstance_c comp);
    TestStructuredDataType BadReturnSDT(ComponentInstance_c comp);
    void NoBody(ComponentInstance_c comp);
    void UnexpectedInteger(ComponentInstance_c comp, int Integer);
    void UnexpectedString(ComponentInstance_c comp, String string);
    void UnexpectedBoolean(ComponentInstance_c comp, boolean bool);
    void UnexpectedReal(ComponentInstance_c comp, float real);
    void UnexpectedBPInteger(ComponentInstance_c comp, BPInteger Integer);
    void UnexpectedBPString(ComponentInstance_c comp, BPString string);
    void UnexpectedBPBoolean(ComponentInstance_c comp, BPBoolean bool);
    void UnexpectedBPReal(ComponentInstance_c comp, BPFloat real);
    void MissingEnumeration(ComponentInstance_c comp);
    void BadEnumeration(ComponentInstance_c comp, TestEnumeration test);
}
