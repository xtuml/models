package deployment.comp1.shareable.impl;


import deployment.comp1.shareable.Report;

import io.ciera.runtime.summit.components.IComponent;
import io.ciera.runtime.summit.util.Utility;


public class ReportImpl<C extends IComponent<C>> extends Utility<C> implements Report {

    public ReportImpl( C context ) {
        super( context );
    }

    public String UsageReport() {
        return " 'Executed Bridge Operation in shared pkg' ";
    }



}
