.//============================================================================
.// Custom model compiler extension to export component and port information 
.// as XML
.//============================================================================
<?xml version="1.0" encoding="UTF-8" ?>
.select any s_sys from instances of S_SYS
.select many c_cs from instances of C_C
.for each c_c in c_cs
  <component name="${c_c.Name}">
  .select many c_pos related by c_c->C_PO[R4010]
  .for each c_po in c_pos
    <port name="${c_po.Name}" />
  .end for
  </component>
.end for
.emit to file "${s_sys.Name}.xml"
.//============================================================================
.// End custom MC extension
.//============================================================================
