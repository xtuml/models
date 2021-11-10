package deployment.comp2.shareable.impl;


import deployment.comp2.shareable.Resource;
import deployment.comp2.shareable.ResourceSet;

import io.ciera.runtime.summit.classes.InstanceSet;
import io.ciera.runtime.summit.exceptions.XtumlException;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;


public class ResourceSetImpl extends InstanceSet<ResourceSet,Resource> implements ResourceSet {

    public ResourceSetImpl() {
    }

    public ResourceSetImpl(Comparator<? super Resource> comp) {
        super(comp);
    }

    // attributes
    @Override
    public void setDerivedValue( int m_derivedValue ) throws XtumlException {
        for ( Resource resource : this ) resource.setDerivedValue( m_derivedValue );
    }
    @Override
    public void setIvalue( int m_ivalue ) throws XtumlException {
        for ( Resource resource : this ) resource.setIvalue( m_ivalue );
    }


    // selections


    @Override
    public Resource nullElement() {
        return ResourceImpl.EMPTY_RESOURCE;
    }

    @Override
    public ResourceSet emptySet() {
      return new ResourceSetImpl();
    }

    @Override
    public ResourceSet emptySet(Comparator<? super Resource> comp) {
      return new ResourceSetImpl(comp);
    }

    @Override
    public List<Resource> elements() {
        return Arrays.asList(toArray(new Resource[0]));
    }

}
