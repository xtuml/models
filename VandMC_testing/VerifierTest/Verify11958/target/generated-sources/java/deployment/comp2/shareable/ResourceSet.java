package deployment.comp2.shareable;


import io.ciera.runtime.summit.classes.IInstanceSet;
import io.ciera.runtime.summit.exceptions.XtumlException;


public interface ResourceSet extends IInstanceSet<ResourceSet,Resource> {

    // attributes
    public void setDerivedValue( int m_derivedValue ) throws XtumlException;
    public void setIvalue( int m_ivalue ) throws XtumlException;


    // selections


}
