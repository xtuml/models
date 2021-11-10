package deployment;


import deployment.comp1.shareable.Report;
import deployment.comp1.shareable.Resource;
import deployment.comp1.shareable.ResourceSet;
import deployment.comp1.shareable.Thing;
import deployment.comp1.shareable.ThingSet;
import deployment.comp1.shareable.impl.ReportImpl;
import deployment.comp1.shareable.impl.ResourceImpl;
import deployment.comp1.shareable.impl.ResourceSetImpl;
import deployment.comp1.shareable.impl.ThingImpl;
import deployment.comp1.shareable.impl.ThingSetImpl;
import deployment.comp1.tester.Testclass;
import deployment.comp1.tester.TestclassSet;
import deployment.comp1.tester.impl.TestclassImpl;
import deployment.comp1.tester.impl.TestclassSetImpl;

import io.ciera.runtime.summit.application.IApplication;
import io.ciera.runtime.summit.application.IRunContext;
import io.ciera.runtime.summit.classes.IModelInstance;
import io.ciera.runtime.summit.components.Component;
import io.ciera.runtime.summit.exceptions.BadArgumentException;
import io.ciera.runtime.summit.exceptions.EmptyInstanceException;
import io.ciera.runtime.summit.exceptions.XtumlException;
import io.ciera.runtime.summit.util.LOG;
import io.ciera.runtime.summit.util.TIM;
import io.ciera.runtime.summit.util.impl.LOGImpl;
import io.ciera.runtime.summit.util.impl.TIMImpl;

import java.io.IOException;
import java.util.Map;
import java.util.Properties;
import java.util.TreeMap;


public class Comp1 extends Component<Comp1> {

    private Map<String, Class<?>> classDirectory;

    public Comp1(IApplication app, IRunContext runContext, int populationId) {
        super(app, runContext, populationId);
        Resource_extent = new ResourceSetImpl();
        Testclass_extent = new TestclassSetImpl();
        Thing_extent = new ThingSetImpl();

        LOG = null;
        Report = null;
        TIM = null;
        classDirectory = new TreeMap<>();
        classDirectory.put("Resource", ResourceImpl.class);
        classDirectory.put("testclass", TestclassImpl.class);
        classDirectory.put("Thing", ThingImpl.class);
    }

    // domain functions
    public void Test() throws XtumlException {
        context().LOG().LogInfo( "Test function running in component Comp1" );
        context().LOG().LogInfo( "- testing shared class instance" );
        Resource res1 = ResourceImpl.create( context() );
        context().LOG().LogInfo( "Invoking operation on shared class instance - value should be 1" );
        res1.Increment();
        context().LOG().LogInteger( res1.getIvalue() );
        context().LOG().LogInfo( "Derived attribute of shared class instance - value should be 2" );
        context().LOG().LogInteger( res1.getDerivedValue() );
        context().LOG().LogInfo( "Generating event to shared class instance in Comp1 - tick 3 times:" );
        context().generate(new ResourceImpl.tick(getRunContext(), context().getId()).to(res1));
        context().LOG().LogInfo( "Invoking class-based operation on shared class: create Thing instance:" );
        new ThingImpl.CLASS(context()).classOperation();
        context().LOG().LogInfo( "Invoking function in shared package - event generation:" );
        context().sharedFunction();
        String report = context().Report().UsageReport();
        context().LOG().LogInfo( "UsageReport in Comp1 returned: " + report );
    }

    public void sharedFunction() throws XtumlException {
        context().LOG().LogInfo( "Shared function generating event -> 'hear' to Thing instance" );
        Thing t = context().Thing_instances().any();
        context().generate(new ThingImpl.hear(getRunContext(), context().getId()).to(t));
    }



    // relates and unrelates


    // instance selections
    private ResourceSet Resource_extent;
    public ResourceSet Resource_instances() {
        return Resource_extent;
    }
    private TestclassSet Testclass_extent;
    public TestclassSet Testclass_instances() {
        return Testclass_extent;
    }
    private ThingSet Thing_extent;
    public ThingSet Thing_instances() {
        return Thing_extent;
    }


    // relationship selections


    // ports


    // utilities
    private LOG LOG;
    public LOG LOG() {
        if ( null == LOG ) LOG = new LOGImpl<>( this );
        return LOG;
    }
    private Report Report;
    public Report Report() {
        if ( null == Report ) Report = new ReportImpl<>( this );
        return Report;
    }
    private TIM TIM;
    public TIM TIM() {
        if ( null == TIM ) TIM = new TIMImpl<>( this );
        return TIM;
    }


    // component initialization function
    @Override
    public void initialize() throws XtumlException {
        Test();
    }

    @Override
    public String getVersion() {
        Properties prop = new Properties();
        try {
            prop.load(getClass().getResourceAsStream("Comp1Properties.properties"));
        } catch (IOException e) { /* do nothing */ }
        return prop.getProperty("version", "Unknown");
    }
    @Override
    public String getVersionDate() {
        Properties prop = new Properties();
        try {
            prop.load(getClass().getResourceAsStream("Comp1Properties.properties"));
        } catch (IOException e) { /* do nothing */ }
        return prop.getProperty("version_date", "Unknown");
    }

    @Override
    public boolean addInstance( IModelInstance<?,?> instance ) throws XtumlException {
        if ( null == instance ) throw new BadArgumentException( "Null instance passed." );
        if ( instance.isEmpty() ) throw new EmptyInstanceException( "Cannot add empty instance to population." );
        if ( instance instanceof Resource ) return Resource_extent.add( (Resource)instance );
        else if ( instance instanceof Testclass ) return Testclass_extent.add( (Testclass)instance );
        else if ( instance instanceof Thing ) return Thing_extent.add( (Thing)instance );
        return false;
    }

    @Override
    public boolean removeInstance( IModelInstance<?,?> instance ) throws XtumlException {
        if ( null == instance ) throw new BadArgumentException( "Null instance passed." );
        if ( instance.isEmpty() ) throw new EmptyInstanceException( "Cannot remove empty instance from population." );
        if ( instance instanceof Resource ) return Resource_extent.remove( (Resource)instance );
        else if ( instance instanceof Testclass ) return Testclass_extent.remove( (Testclass)instance );
        else if ( instance instanceof Thing ) return Thing_extent.remove( (Thing)instance );
        return false;
    }

    @Override
    public Comp1 context() {
        return this;
    }

    @Override
    public Class<?> getClassByKeyLetters(String keyLetters) {
        return classDirectory.get(keyLetters);
    }

}
