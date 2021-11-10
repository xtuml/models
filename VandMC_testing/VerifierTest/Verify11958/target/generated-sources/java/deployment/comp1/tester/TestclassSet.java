package deployment.comp1.tester;


import io.ciera.runtime.summit.classes.IInstanceSet;
import io.ciera.runtime.summit.exceptions.XtumlException;

import shareable.Usage;


public interface TestclassSet extends IInstanceSet<TestclassSet,Testclass> {

    // attributes
    public void setConsumes( Usage m_consumes ) throws XtumlException;


    // selections


}
