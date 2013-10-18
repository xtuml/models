.select many Attributes from instances of O_ATTR
.for each Attr in Attributes
  .select one Class related by Attr->O_OBJ[R102]
  .select one Rattr related by Attr->O_RATTR[R106]
  .if (not_empty Rattr)
    .assign C4_R = Rattr

.select one Base_Attr related by C4_R->O_BATTR[R113]
.select many Direct_Bases related by C4_R->O_REF[R108]->O_RTIDA[R111]->O_OIDA[R110]->O_ATTR[R105]->O_BATTR[R106]
.select many Indirect_Refs related by C4_R->O_REF[R108]->O_RTIDA[R111]->O_OIDA[R110]->O_ATTR[R105]->O_RATTR[R106]
.select many Indirect_Bases from instances of O_BATTR where (False)
.select many Visited_Refs from instances of O_RATTR where (False)
.while (not_empty Indirect_Refs)
  .select many Bs related by Indirect_Refs->O_REF[R108]->O_RTIDA[R111]->O_OIDA[R110]->O_ATTR[R105]->O_BATTR[R106]
  .assign Indirect_Bases = Indirect_Bases | Bs 
  .assign Visited_Refs = Visited_Refs | Indirect_Refs
 .select many Indirect_Refs related by Indirect_Refs->O_REF[R108]->O_RTIDA[R111]->O_OIDA[R110]->O_ATTR[R105]->O_RATTR[R106]
  .assign Indirect_Refs = Indirect_Refs - (Visited_Refs & Indirect_Refs)
.end while
.assign All_Bases = Direct_Bases | Indirect_Bases
.assign C  = (cardinality All_Bases)
.if (C == 0)
  .print "ERROR: No base (Orphaned)"
.end if
.if (C > 1)
  .print "ERROR: Too many bases (${C})"
.end if
.if (C != 1)
  .print "${Class.Name} ${Attr.Name}"
.end if


  .end if
.end for

.exit 17