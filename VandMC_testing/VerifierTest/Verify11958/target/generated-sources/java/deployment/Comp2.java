package deployment;


import deployment.comp2.shareable.Report;
import deployment.comp2.shareable.Resource;
import deployment.comp2.shareable.ResourceSet;
import deployment.comp2.shareable.Thing;
import deployment.comp2.shareable.ThingSet;
import deployment.comp2.shareable.impl.ReportImpl;
import deployment.comp2.shareable.impl.ResourceImpl;
import deployment.comp2.shareable.impl.ResourceSetImpl;
import deployment.comp2.shareable.impl.ThingImpl;
import deployment.comp2.shareable.impl.ThingSetImpl;

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


public class Comp2 extends Component<Comp2> {

    private Map<String, Class<?>> classDirectory;

    public Comp2(IApplication app, IRunContext runContext, int populationId) {
        super(app, runContext, populationId);
        Resource_extent = new ResourceSetImpl();
        Thing_extent = new ThingSetImpl();

        LOG = null;
        Report = null;
        TIM = null;
        classDirectory = new TreeMap<>();
        classDirectory.put("Resource", ResourceImpl.class);
        classDirectory.put("Thing", ThingImpl.class);
    }

    // domain functions
    public void Test2() throws XtumlException {
        context().LOG().LogInfo( "Test2 function running in component Comp2" );
        context().LOG().LogInfo( "- testing shared class instance" );
        String report = context().Report().UsageReport();
        context().LOG().LogInfo( "UsageReport in Comp2 returned: " + report );
        Resource res1 = ResourceImpl.create( context() );
        context().LOG().LogInfo( "Generating event to shared class instance in Comp2 - tick 3 times:" );
        context().generate(new ResourceImpl.tick(getRunContext(), context().getId()).to(res1));
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
        Test2();
    }

    @Override
    public String getVersion() {
        Properties prop = new Properties();
        try {
            prop.load(getClass().getResourceAsStream("Comp2Properties.properties"));
        } catch (IOException e) { /* do nothing */ }
        return prop.getProperty("version", "Unknown");
    }
    @Override
    public String getVersionDate() {
        Properties prop = new Properties();
        try {
            prop.load(getClass().getResourceAsStream("Comp2Properties.properties"));
        } catch (IOException e) { /* do nothing */ }
        return prop.getProperty("version_date", "Unknown");
    }

    @Override
    public boolean addInstance( IModelInstance<?,?> instance ) throws XtumlException {
        if ( null == instance ) throw new BadArgumentException( "Null instance passed." );
        if ( instance.isEmpty() ) throw new EmptyInstanceException( "Cannot add empty instance to population." );
        if ( instance instanceof Resource ) return Resource_extent.add( (Resource)instance );
        else if ( instance instanceof Thing ) return Thing_extent.add( (Thing)instance );
        return false;
    }

    @Override
    public boolean removeInstance( IModelInstance<?,?> instance ) throws XtumlException {
        if ( null == instance ) throw new BadArgumentException( "Null instance passed." );
        if ( instance.isEmpty() ) throw new EmptyInstanceException( "Cannot remove empty instance from population." );
        if ( instance instanceof Resource ) return Resource_extent.remove( (Resource)instance );
        else if ( instance instanceof Thing ) return Thing_extent.remove( (Thing)instance );
        return false;
    }

    @Override
    public Comp2 context() {
        return this;
    }

    @Override
    public Class<?> getClassByKeyLetters(String keyLetters) {
        return classDirectory.get(keyLetters);
    }

}
