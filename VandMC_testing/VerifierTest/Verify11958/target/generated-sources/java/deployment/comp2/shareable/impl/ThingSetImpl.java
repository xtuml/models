package deployment.comp2.shareable.impl;


import deployment.comp2.shareable.Thing;
import deployment.comp2.shareable.ThingSet;

import io.ciera.runtime.summit.classes.InstanceSet;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;


public class ThingSetImpl extends InstanceSet<ThingSet,Thing> implements ThingSet {

    public ThingSetImpl() {
    }

    public ThingSetImpl(Comparator<? super Thing> comp) {
        super(comp);
    }

    // attributes


    // selections


    @Override
    public Thing nullElement() {
        return ThingImpl.EMPTY_THING;
    }

    @Override
    public ThingSet emptySet() {
      return new ThingSetImpl();
    }

    @Override
    public ThingSet emptySet(Comparator<? super Thing> comp) {
      return new ThingSetImpl(comp);
    }

    @Override
    public List<Thing> elements() {
        return Arrays.asList(toArray(new Thing[0]));
    }

}
