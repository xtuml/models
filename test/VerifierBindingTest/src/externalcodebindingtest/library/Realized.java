package externalcodebindingtest.library;

import lib.BPBoolean;
import lib.BPFloat;
import lib.BPInteger;
import lib.BPString;
import lib.LOG;

import org.xtuml.bp.core.ComponentInstance_c;

public class Realized implements IExceptionTestInterfaceFromProvider {

	IExceptionTestInterfaceToProvider port;
	
    public Realized(IExceptionTestInterfaceToProvider port) {
    	this.port = port;
    }
    
	@Override
	public void PerformTest(ComponentInstance_c comp) {
      try {
    	  port.MissingMessage(null);
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  port.BadArgumentList(null, 0, 0.0f, "test", false, new TestStructuredDataType(), 1);
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  TestStructuredDataType tsdt = new TestStructuredDataType();
    	  tsdt.Integer = 1;
    	  tsdt.Real = 0.1f;
    	  port.BadStructuredDataType(null, tsdt);
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  port.UnexpectedInteger(null, 0);
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  port.UnexpectedString(null, "wrong");
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  port.UnexpectedBoolean(null, false);
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  port.UnexpectedReal(null, 0.1f);
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  port.UnexpectedBPInteger(null, new BPInteger(0));
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  port.UnexpectedBPString(null, new BPString("wrong"));
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  port.UnexpectedBPBoolean(null, new BPBoolean(false));
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  port.UnexpectedBPReal(null, new BPFloat(0.1f));
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  int result = port.BadReturnBoolean(null);
    	  LOG.LogInteger(result);
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  float result = port.BadReturnInteger(null);
    	  LOG.LogReal("result = ", result);
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  int result = port.BadReturnBoolean(null);
    	  LOG.LogInteger(result);
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  boolean result = port.BadReturnString(null);
    	  String bool = "false";
    	  if (result) {
    		  bool = "true";
    	  }
    	  LOG.LogInfo("result was: " + bool);
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  TestStructuredDataType result = port.BadReturnSDT(null);
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
      try {
    	  port.NoBody(null);
      }
      catch (Exception vbe) {
    	LOG.LogSuccess("Expected exception thrown: " + vbe.getMessage());  
      }
	}
}
