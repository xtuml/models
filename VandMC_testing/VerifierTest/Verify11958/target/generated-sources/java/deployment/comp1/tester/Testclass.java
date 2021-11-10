package deployment.comp1.tester;


import deployment.Comp1;

import io.ciera.runtime.summit.classes.IModelInstance;
import io.ciera.runtime.summit.exceptions.XtumlException;

import shareable.Usage;


public interface Testclass extends IModelInstance<Testclass,Comp1> {

    // attributes
    public void setConsumes( Usage m_consumes ) throws XtumlException;
    public Usage getConsumes() throws XtumlException;


    // operations


    // selections


}
