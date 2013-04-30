package library;

import lib.LOG;

public class RealizedTestUDTWithAccessors {
  private boolean value;
  
  public boolean getValue() {
	  LOG.LogInfo("RealizedTestUDTWithAccessors getValue() executed.");
	  return value;
  }
  
  public void setValue(boolean value) {
	  LOG.LogInfo("RealizedTestUDTWithAccessors setValue() executed.");
	  this.value = value;
  }
}
