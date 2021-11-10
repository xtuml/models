package deployment.comp1.tester.impl;


import deployment.comp1.tester.Testclass;
import deployment.comp1.tester.TestclassSet;

import io.ciera.runtime.summit.classes.InstanceSet;
import io.ciera.runtime.summit.exceptions.XtumlException;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

import shareable.Usage;


public class TestclassSetImpl extends InstanceSet<TestclassSet,Testclass> implements TestclassSet {

    public TestclassSetImpl() {
    }

    public TestclassSetImpl(Comparator<? super Testclass> comp) {
        super(comp);
    }

    // attributes
    @Override
    public void setConsumes( Usage m_consumes ) throws XtumlException {
        for ( Testclass testclass : this ) testclass.setConsumes( m_consumes );
    }


    // selections


    @Override
    public Testclass nullElement() {
        return TestclassImpl.EMPTY_TESTCLASS;
    }

    @Override
    public TestclassSet emptySet() {
      return new TestclassSetImpl();
    }

    @Override
    public TestclassSet emptySet(Comparator<? super Testclass> comp) {
      return new TestclassSetImpl(comp);
    }

    @Override
    public List<Testclass> elements() {
        return Arrays.asList(toArray(new Testclass[0]));
    }

}
