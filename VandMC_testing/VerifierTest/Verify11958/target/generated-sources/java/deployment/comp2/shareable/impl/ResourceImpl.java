package deployment.comp2.shareable.impl;


import deployment.Comp2;
import deployment.comp2.shareable.Resource;

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


public class ResourceImpl extends ModelInstance<Resource,Comp2> implements Resource {

    public static final String KEY_LETTERS = "Resource";
    public static final Resource EMPTY_RESOURCE = new EmptyResource();

    private Comp2 context;

    // constructors
    private ResourceImpl( Comp2 context ) {
        this.context = context;
        m_ivalue = 0;
        m_derivedValue = 0;
        statemachine = new ResourceStateMachine(this, context());
    }

    private ResourceImpl( Comp2 context, int m_ivalue, int m_derivedValue, int initialState ) {
        this.context = context;
        this.m_ivalue = m_ivalue;
        this.m_derivedValue = m_derivedValue;
        statemachine = new ResourceStateMachine(this, context(), initialState);
    }

    private ResourceImpl( Comp2 context, UniqueId instanceId, int m_ivalue, int m_derivedValue, int initialState ) {
        super(instanceId);
        this.context = context;
        this.m_ivalue = m_ivalue;
        this.m_derivedValue = m_derivedValue;
        statemachine = new ResourceStateMachine(this, context(), initialState);
    }

    public static Resource create( Comp2 context ) throws XtumlException {
        Resource newResource = new ResourceImpl( context );
        if ( context.addInstance( newResource ) ) {
            newResource.getRunContext().addChange(new InstanceCreatedDelta(newResource, KEY_LETTERS));
            return newResource;
        }
        else throw new InstancePopulationException( "Instance already exists within this population." );
    }

    public static Resource create( Comp2 context, int m_ivalue, int m_derivedValue, int initialState ) throws XtumlException {
        Resource newResource = new ResourceImpl( context, m_ivalue, m_derivedValue, initialState );
        if ( context.addInstance( newResource ) ) {
            return newResource;
        }
        else throw new InstancePopulationException( "Instance already exists within this population." );
    }

    public static Resource create( Comp2 context, UniqueId instanceId, int m_ivalue, int m_derivedValue, int initialState ) throws XtumlException {
        Resource newResource = new ResourceImpl( context, instanceId, m_ivalue, m_derivedValue, initialState );
        if ( context.addInstance( newResource ) ) {
            return newResource;
        }
        else throw new InstancePopulationException( "Instance already exists within this population." );
    }

    private final ResourceStateMachine statemachine;
    
    @Override
    public void accept(IEvent event) throws XtumlException {
        statemachine.transition(event);
    }

    @Override
    public int getCurrentState() {
        return statemachine.getCurrentState();
    }


    // attributes
    private int m_ivalue;
    @Override
    public int getIvalue() throws XtumlException {
        checkLiving();
        return m_ivalue;
    }
    @Override
    public void setIvalue(int m_ivalue) throws XtumlException {
        checkLiving();
        if (m_ivalue != this.m_ivalue) {
            final int oldValue = this.m_ivalue;
            this.m_ivalue = m_ivalue;
            getRunContext().addChange(new AttributeChangedDelta(this, KEY_LETTERS, "m_ivalue", oldValue, this.m_ivalue));
        }
    }
    private int m_derivedValue;
    @Override
    public void setDerivedValue(int m_derivedValue) throws XtumlException {
        checkLiving();
        if (m_derivedValue != this.m_derivedValue) {
            final int oldValue = this.m_derivedValue;
            this.m_derivedValue = m_derivedValue;
            getRunContext().addChange(new AttributeChangedDelta(this, KEY_LETTERS, "m_derivedValue", oldValue, this.m_derivedValue));
        }
    }
    @Override
    public int getDerivedValue() throws XtumlException {
        checkLiving();
        {
            context().LOG().LogInfo( "Evaluating MDA - double ivalue" );
            self().setDerivedValue(self().getIvalue() * 2);
        }
        return m_derivedValue;
    }


    // instance identifiers

    // operations
    @Override
    public void Increment() throws XtumlException {
        context().LOG().LogInfo( "Shared instance-based operation: incrementing.." );
        self().setIvalue(self().getIvalue() + 1);
    }



    // static operations


    // events
    public static class tick extends Event {
        public tick(IRunContext runContext, int populationId) {
            super(runContext, populationId);
        }
        @Override
        public int getId() {
            return 0;
        }
        @Override
        public String getClassName() {
            return "Resource";
        }
    }


    // selections


    @Override
    public IRunContext getRunContext() {
        return context().getRunContext();
    }

    @Override
    public Comp2 context() {
        return context;
    }

    @Override
    public String getKeyLetters() {
        return KEY_LETTERS;
    }

    @Override
    public Resource self() {
        return this;
    }

    @Override
    public Resource oneWhere(IWhere<IXtumlType> condition) throws XtumlException {
        if (null == condition) throw new XtumlException("Null condition passed to selection.");
        if (condition.evaluate(this)) return this;
        else return EMPTY_RESOURCE;
    }

}

class EmptyResource extends ModelInstance<Resource,Comp2> implements Resource {

    // attributes
    public int getIvalue() throws XtumlException {
        throw new EmptyInstanceException( "Cannot get attribute of empty instance." );
    }
    public void setIvalue( int m_ivalue ) throws XtumlException {
        throw new EmptyInstanceException( "Cannot set attribute of empty instance." );
    }
    public void setDerivedValue( int m_derivedValue ) throws XtumlException {
        throw new EmptyInstanceException( "Cannot set attribute of empty instance." );
    }
    public int getDerivedValue() throws XtumlException {
        throw new EmptyInstanceException( "Cannot get attribute of empty instance." );
    }


    // operations
    public void Increment() throws XtumlException {
        throw new EmptyInstanceException( "Cannot invoke operation on empty instance." );
    }


    // selections


    @Override
    public String getKeyLetters() {
        return ResourceImpl.KEY_LETTERS;
    }

    @Override
    public Resource self() {
        return this;
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    public Resource oneWhere(IWhere<IXtumlType> condition) throws XtumlException {
        if (null == condition) throw new XtumlException("Null condition passed to selection.");
        return ResourceImpl.EMPTY_RESOURCE;
    }

}
