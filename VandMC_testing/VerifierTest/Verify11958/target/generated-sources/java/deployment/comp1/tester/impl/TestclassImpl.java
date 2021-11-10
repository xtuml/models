package deployment.comp1.tester.impl;


import deployment.Comp1;
import deployment.comp1.tester.Testclass;

import io.ciera.runtime.instanceloading.AttributeChangedDelta;
import io.ciera.runtime.instanceloading.InstanceCreatedDelta;
import io.ciera.runtime.summit.application.IRunContext;
import io.ciera.runtime.summit.classes.IInstanceIdentifier;
import io.ciera.runtime.summit.classes.InstanceIdentifier;
import io.ciera.runtime.summit.classes.ModelInstance;
import io.ciera.runtime.summit.exceptions.EmptyInstanceException;
import io.ciera.runtime.summit.exceptions.InstancePopulationException;
import io.ciera.runtime.summit.exceptions.XtumlException;
import io.ciera.runtime.summit.statemachine.Event;
import io.ciera.runtime.summit.statemachine.IEvent;
import io.ciera.runtime.summit.types.IWhere;
import io.ciera.runtime.summit.types.IXtumlType;
import io.ciera.runtime.summit.types.UniqueId;

import shareable.Usage;


public class TestclassImpl extends ModelInstance<Testclass,Comp1> implements Testclass {

    public static final String KEY_LETTERS = "testclass";
    public static final Testclass EMPTY_TESTCLASS = new EmptyTestclass();

    private Comp1 context;

    // constructors
    private TestclassImpl( Comp1 context ) {
        this.context = context;
        m_consumes = new Usage();
        statemachine = new TestclassStateMachine(this, context());
    }

    private TestclassImpl( Comp1 context, Usage m_consumes, int initialState ) {
        this.context = context;
        this.m_consumes = m_consumes;
        statemachine = new TestclassStateMachine(this, context(), initialState);
    }

    private TestclassImpl( Comp1 context, UniqueId instanceId, Usage m_consumes, int initialState ) {
        super(instanceId);
        this.context = context;
        this.m_consumes = m_consumes;
        statemachine = new TestclassStateMachine(this, context(), initialState);
    }

    public static Testclass create( Comp1 context ) throws XtumlException {
        Testclass newTestclass = new TestclassImpl( context );
        if ( context.addInstance( newTestclass ) ) {
            newTestclass.getRunContext().addChange(new InstanceCreatedDelta(newTestclass, KEY_LETTERS));
            return newTestclass;
        }
        else throw new InstancePopulationException( "Instance already exists within this population." );
    }

    public static Testclass create( Comp1 context, Usage m_consumes, int initialState ) throws XtumlException {
        Testclass newTestclass = new TestclassImpl( context, m_consumes, initialState );
        if ( context.addInstance( newTestclass ) ) {
            return newTestclass;
        }
        else throw new InstancePopulationException( "Instance already exists within this population." );
    }

    public static Testclass create( Comp1 context, UniqueId instanceId, Usage m_consumes, int initialState ) throws XtumlException {
        Testclass newTestclass = new TestclassImpl( context, instanceId, m_consumes, initialState );
        if ( context.addInstance( newTestclass ) ) {
            return newTestclass;
        }
        else throw new InstancePopulationException( "Instance already exists within this population." );
    }

    private final TestclassStateMachine statemachine;
    
    @Override
    public void accept(IEvent event) throws XtumlException {
        statemachine.transition(event);
    }

    @Override
    public int getCurrentState() {
        return statemachine.getCurrentState();
    }


    // attributes
    private Usage m_consumes;
    @Override
    public void setConsumes(Usage m_consumes) throws XtumlException {
        checkLiving();
        if (m_consumes.inequality( this.m_consumes)) {
            final Usage oldValue = this.m_consumes;
            this.m_consumes = m_consumes;
            getRunContext().addChange(new AttributeChangedDelta(this, KEY_LETTERS, "m_consumes", oldValue, this.m_consumes));
        }
    }
    @Override
    public Usage getConsumes() throws XtumlException {
        checkLiving();
        return m_consumes;
    }


    // instance identifiers

    // operations


    // static operations


    // events
    public static class cycle extends Event {
        public cycle(IRunContext runContext, int populationId) {
            super(runContext, populationId);
        }
        @Override
        public int getId() {
            return 0;
        }
        @Override
        public String getClassName() {
            return "Testclass";
        }
    }


    // selections


    @Override
    public IRunContext getRunContext() {
        return context().getRunContext();
    }

    @Override
    public Comp1 context() {
        return context;
    }

    @Override
    public String getKeyLetters() {
        return KEY_LETTERS;
    }

    @Override
    public Testclass self() {
        return this;
    }

    @Override
    public Testclass oneWhere(IWhere<IXtumlType> condition) throws XtumlException {
        if (null == condition) throw new XtumlException("Null condition passed to selection.");
        if (condition.evaluate(this)) return this;
        else return EMPTY_TESTCLASS;
    }

}

class EmptyTestclass extends ModelInstance<Testclass,Comp1> implements Testclass {

    // attributes
    public void setConsumes( Usage m_consumes ) throws XtumlException {
        throw new EmptyInstanceException( "Cannot set attribute of empty instance." );
    }
    public Usage getConsumes() throws XtumlException {
        throw new EmptyInstanceException( "Cannot get attribute of empty instance." );
    }


    // operations


    // selections


    @Override
    public String getKeyLetters() {
        return TestclassImpl.KEY_LETTERS;
    }

    @Override
    public Testclass self() {
        return this;
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    public Testclass oneWhere(IWhere<IXtumlType> condition) throws XtumlException {
        if (null == condition) throw new XtumlException("Null condition passed to selection.");
        return TestclassImpl.EMPTY_TESTCLASS;
    }

}
