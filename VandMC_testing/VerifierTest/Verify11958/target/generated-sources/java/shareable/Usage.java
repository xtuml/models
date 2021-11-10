package shareable;


import io.ciera.runtime.summit.exceptions.XtumlException;
import io.ciera.runtime.summit.types.IXtumlType;
import io.ciera.runtime.summit.types.IntegerUDT;


public class Usage extends IntegerUDT implements IXtumlType {

    public Usage() {
        super();
    }

    public Usage(Object value) throws XtumlException {
        super(value);
    }

    @SuppressWarnings("unchecked")
    public Usage promote(Object o) throws XtumlException {
        return new Usage(cast(o));
    }

}
