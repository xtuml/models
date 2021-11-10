package deployment.comp1.shareable;


import deployment.Comp1;

import io.ciera.runtime.summit.classes.IModelInstance;
import io.ciera.runtime.summit.exceptions.XtumlException;


public interface Resource extends IModelInstance<Resource,Comp1>, deployment.shareable.Resource {

    // attributes
    public int getIvalue() throws XtumlException;
    public void setIvalue( int m_ivalue ) throws XtumlException;
    public void setDerivedValue( int m_derivedValue ) throws XtumlException;
    public int getDerivedValue() throws XtumlException;


    // operations
    public void Increment() throws XtumlException;


    // selections


}
