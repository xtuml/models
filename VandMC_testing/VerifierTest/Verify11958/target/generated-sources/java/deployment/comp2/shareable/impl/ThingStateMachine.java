package deployment.comp2.shareable.impl;


import deployment.Comp2;
import deployment.comp2.shareable.Resource;
import deployment.comp2.shareable.Thing;
import deployment.comp2.shareable.impl.ResourceImpl;

import io.ciera.runtime.summit.exceptions.XtumlException;
import io.ciera.runtime.summit.statemachine.EventHandle;
import io.ciera.runtime.summit.statemachine.ITransition;
import io.ciera.runtime.summit.statemachine.StateMachine;


public class ThingStateMachine extends StateMachine<Thing,Comp2> {

    public static final int listening = 0;


    private Thing self;

    public ThingStateMachine(Thing self, Comp2 context) {
        this(self, context, listening);
    }

    public ThingStateMachine(Thing self, Comp2 context, int initialState) {
        super(context, initialState);
        this.self = self;
    }

    private void listening_entry_action() throws XtumlException {
        context().LOG().LogInfo( "Thing instance heard something..responding with delay" );
        Resource res = context().Resource_instances().any();
        EventHandle tk = new ResourceImpl.tick(getRunContext(), context().getId()).to(res);
        context().TIM().timer_start( tk, 1500000 );
    }



    private void listening_hear_txn_to_listening_action() throws XtumlException {
    }



    @Override
    public ITransition[][] getStateEventMatrix() {
        return new ITransition[][] {
            { (event) -> {listening_hear_txn_to_listening_action();listening_entry_action();return listening;}
            }
        };
    }

    @Override
    public Thing self() {
        return self;
    }

    @Override
    public String getClassName() {
        return "Thing";
    }

}
