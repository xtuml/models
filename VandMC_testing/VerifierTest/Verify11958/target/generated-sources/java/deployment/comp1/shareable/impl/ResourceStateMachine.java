package deployment.comp1.shareable.impl;


import deployment.Comp1;
import deployment.comp1.shareable.Resource;
import deployment.comp1.shareable.impl.ResourceImpl;

import io.ciera.runtime.summit.exceptions.XtumlException;
import io.ciera.runtime.summit.statemachine.EventHandle;
import io.ciera.runtime.summit.statemachine.ITransition;
import io.ciera.runtime.summit.statemachine.StateMachine;


public class ResourceStateMachine extends StateMachine<Resource,Comp1> {

    public static final int ticking = 0;


    private Resource self;

    public ResourceStateMachine(Resource self, Comp1 context) {
        this(self, context, ticking);
    }

    public ResourceStateMachine(Resource self, Comp1 context, int initialState) {
        super(context, initialState);
        this.self = self;
    }

    private void ticking_entry_action() throws XtumlException {
        context().LOG().LogInfo( "Shared state action: ticking away..." );
        self().setIvalue(self().getIvalue() + 1);
        if ( self().getIvalue() < 3 ) {
            EventHandle tk = new ResourceImpl.tick(getRunContext(), context().getId()).toSelf(self());
            context().TIM().timer_start( tk, 1000000 );
        }
        else {
            context().LOG().LogInfo( "Shared state action: stopping after 3 ticks." );
        }
    }



    private void ticking_tick_txn_to_ticking_action() throws XtumlException {
        context().LOG().LogInfo( "Tick event - executing transition activity!" );
    }



    @Override
    public ITransition[][] getStateEventMatrix() {
        return new ITransition[][] {
            { (event) -> {ticking_tick_txn_to_ticking_action();ticking_entry_action();return ticking;}
            }
        };
    }

    @Override
    public Resource self() {
        return self;
    }

    @Override
    public String getClassName() {
        return "Resource";
    }

}
