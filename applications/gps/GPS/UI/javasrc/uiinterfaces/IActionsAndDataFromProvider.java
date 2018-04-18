//========================================================================
//
//(c) Copyright 2007-2012 by Mentor Graphics Corp. All rights reserved.
//
//========================================================================
 
package uiinterfaces;

import org.xtuml.bp.core.ComponentInstance_c;



public interface IActionsAndDataFromProvider {
	
	// "From Provider" message definitions of form:
	//   <ReturnType> <BPMessageName>(ComponentInstance_c senderReceiver,  list of <BPArgument>s);
	public void lapResetPressed(ComponentInstance_c senderReceiver);
	public void lightPressed(ComponentInstance_c senderReceiver);
	public void modePressed(ComponentInstance_c senderReceiver);
	public void startStopPressed(ComponentInstance_c senderReceiver);
	public void setTargetPressed(ComponentInstance_c senderReceiver);

}