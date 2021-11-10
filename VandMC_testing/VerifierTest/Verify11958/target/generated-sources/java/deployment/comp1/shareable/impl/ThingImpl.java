package deployment.comp1.shareable.impl;


import deployment.Comp1;
import deployment.comp1.shareable.Thing;
import deployment.comp1.shareable.impl.ThingImpl;

import io.ciera.runtime.instanceloading.InstanceCreatedDelta;
import io.ciera.runtime.summit.application.ActionHome;
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


public class ThingImpl extends ModelInstance<Thing,Comp1> implements Thing {

    public static final String KEY_LETTERS = "Thing";
    public static final Thing EMPTY_THING = new EmptyThing();

    private Comp1 context;

    // constructors
    private ThingImpl( Comp1 context ) {
        this.context = context;
        statemachine = new ThingStateMachine(this, context());
    }


    private ThingImpl( Comp1 context, UniqueId instanceId, int initialState ) {
        super(instanceId);
        this.context = context;
        statemachine = new ThingStateMachine(this, context(), initialState);
    }

    public static Thing create( Comp1 context ) throws XtumlException {
        Thing newThing = new ThingImpl( context );
        if ( context.addInstance( newThing ) ) {
            newThing.getRunContext().addChange(new InstanceCreatedDelta(newThing, KEY_LETTERS));
            return newThing;
        }
        else throw new InstancePopulationException( "Instance already exists within this population." );
    }


    public static Thing create( Comp1 context, UniqueId instanceId, int initialState ) throws XtumlException {
        Thing newThing = new ThingImpl( context, instanceId, initialState );
        if ( context.addInstance( newThing ) ) {
            return newThing;
        }
        else throw new InstancePopulationException( "Instance already exists within this population." );
    }

    private final ThingStateMachine statemachine;
    
    @Override
    public void accept(IEvent event) throws XtumlException {
        statemachine.transition(event);
    }

    @Override
    public int getCurrentState() {
        return statemachine.getCurrentState();
    }


    // attributes


    // instance identifiers

    // operations


    // static operations
    public static class CLASS extends ActionHome<Comp1> {

        public CLASS( Comp1 context ) {
            super( context );
        }

        public void classOperation() throws XtumlException {
            Thing t = ThingImpl.create( context() );
            context().LOG().LogInfo( "Instance of shared class (Thing) created.." );
        }



    }


    // events
    public static class hear extends Event {
        public hear(IRunContext runContext, int populationId) {
            super(runContext, populationId);
        }
        @Override
        public int getId() {
            return 0;
        }
        @Override
        public String getClassName() {
            return "Thing";
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
    public Thing self() {
        return this;
    }

    @Override
    public Thing oneWhere(IWhere<IXtumlType> condition) throws XtumlException {
        if (null == condition) throw new XtumlException("Null condition passed to selection.");
        if (condition.evaluate(this)) return this;
        else return EMPTY_THING;
    }

}

class EmptyThing extends ModelInstance<Thing,Comp1> implements Thing {

    // attributes


    // operations


    // selections


    @Override
    public String getKeyLetters() {
        return ThingImpl.KEY_LETTERS;
    }

    @Override
    public Thing self() {
        return this;
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    public Thing oneWhere(IWhere<IXtumlType> condition) throws XtumlException {
        if (null == condition) throw new XtumlException("Null condition passed to selection.");
        return ThingImpl.EMPTY_THING;
    }

}
