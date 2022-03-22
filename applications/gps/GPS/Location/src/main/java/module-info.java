import io.ciera.runtime.api.domain.Domain;

import location.Location;

module Location {

    exports location;

    opens location.classes to io.ciera.runtime;

    provides Domain with Location;

    requires org.xtuml.masl.util;
    requires transitive io.ciera.runtime;

}
