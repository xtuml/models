.//============================================================================
.// Custom model compiler extension to export component, port, and interface
.// message information as XML
.//============================================================================
<?xml version="1.0" encoding="UTF-8" ?>
.select any s_sys from instances of S_SYS
.select many c_cs from instances of C_C
.for each c_c in c_cs
  <component name="${c_c.Name}">
  .select many c_pos related by c_c->C_PO[R4010]
  .for each c_po in c_pos
    <port name="${c_po.Name}">
    .select any c_ir related by c_po->C_IR[R4016]
    .if ( not_empty c_ir )
      .select one c_i related by c_ir->C_I[R4012]
      .if ( not_empty c_i )
        .select many c_eps related by c_i->C_EP[R4003]
        .if ( not_empty c_eps )
          .for each c_ep in c_eps
            .select any c_as related by c_ep->C_AS[R4004]
            .if ( not_empty c_as )
      <message name="${c_as.Name}" />
            .end if
            .select any c_io related by c_ep->C_IO[R4004]
            .if ( not_empty c_io )
      <message name="${c_io.Name}" />
            .end if
          .end for
        .end if
      .end if
    .end if
    </port>
  .end for
  </component>
.end for
.emit to file "${s_sys.Name}.xml"
.//============================================================================
.// End custom MC extension
.//============================================================================
