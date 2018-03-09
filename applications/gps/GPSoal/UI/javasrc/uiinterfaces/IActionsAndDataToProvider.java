//========================================================================
//
//(c) Copyright 2007-2012 by Mentor Graphics Corp. All rights reserved.
//
//========================================================================
 
package uiinterfaces;

import uidatatypes.Unit;

import org.xtuml.bp.core.ComponentInstance_c;


public interface IActionsAndDataToProvider {
	
	// "To Provider" message definitions of form:
	//   <ReturnType> <BPMessageName>(ComponentInstance_c senderReceiver,  list of <BPArgument>s);
	public void init(ComponentInstance_c senderReceiver);
	public void setData(ComponentInstance_c senderReceiver, Float value, Unit unit);
	public void setTime(ComponentInstance_c senderReceiver, int time);
	
}