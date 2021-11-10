package deployment.comp1.tester.impl;


import deployment.Comp1;
import deployment.comp1.tester.Testclass;
import deployment.comp1.tester.impl.TestclassImpl;

import io.ciera.runtime.summit.exceptions.XtumlException;
import io.ciera.runtime.summit.statemachine.EventHandle;
import io.ciera.runtime.summit.statemachine.ITransition;
import io.ciera.runtime.summit.statemachine.StateMachine;


public class TestclassStateMachine extends StateMachine<Testclass,Comp1> {

    public static final int cycling = 0;


    private Testclass self;

    public TestclassStateMachine(Testclass self, Comp1 context) {
        this(self, context, cycling);
    }

    public TestclassStateMachine(Testclass self, Comp1 context, int initialState) {
        super(context, initialState);
        this.self = self;
    }

    private void cycling_entry_action() throws XtumlException {
        context().LOG().LogInfo( "cycling away..." );
        EventHandle cy = new TestclassImpl.cycle(getRunContext(), context().getId()).toSelf(self());
        context().TIM().timer_start( cy, 2000000 );
    }



    private void cycling_cycle_txn_to_cycling_action() throws XtumlException {
    }



    @Override
    public ITransition[][] getStateEventMatrix() {
        return new ITransition[][] {
            { (event) -> {cycling_cycle_txn_to_cycling_action();cycling_entry_action();return cycling;}
            }
        };
    }

    @Override
    public Testclass self() {
        return self;
    }

    @Override
    public String getClassName() {
        return "Testclass";
    }

}
