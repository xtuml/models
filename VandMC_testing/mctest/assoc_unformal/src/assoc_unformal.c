/*----------------------------------------------------------------------------
 * File:  assoc_unformal.c
 *
 * UML Component Port Messages
 * Component/Module Name:  assoc_unformal
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "assoc_unformal_sys_types.h"
#include "ARCH_bridge.h"
#include "LOG_bridge.h"
#include "NVS_bridge.h"
#include "PERSIST_bridge.h"
#include "assoc_unformal_classes.h"

/*
 * Interface:  instrumentation
 * Provided Port:  Port1
 * To Provider Message:  start_test
 */
void
assoc_unformal_Port1_start_test()
{
  /* ::setup(  ) */
  assoc_unformal_setup();
  /* ::test(  ) */
  assoc_unformal_test();
  /* ::xit(  ) */
  assoc_unformal_xit();
}

/*
 * UML Domain Functions (Synchronous Services)
 */


/*
 * Domain Function:  test
 */
void
assoc_unformal_test()
{
  assoc_unformal_A * a=0; Escher_ObjectSet_s as_space={0}; Escher_ObjectSet_s * as = &as_space; /* as (A) */ assoc_unformal_A * a1; assoc_unformal_B * b=0; i_t bcounter; Escher_ObjectSet_s bbs_space={0}; Escher_ObjectSet_s * bbs = &bbs_space; /* bbs (BB) */ assoc_unformal_BB * bb=0; assoc_unformal_D * d=0; Escher_ObjectSet_s cs_space={0}; Escher_ObjectSet_s * cs = &cs_space; /* cs (C) */
 assoc_unformal_C * c=0; assoc_unformal_E * e=0; assoc_unformal_F * f = 0; /* f (F) */
 Escher_ObjectSet_s es_space={0}; Escher_ObjectSet_s * es = &es_space; /* es (E) */
 assoc_unformal_G * g = 0; /* g (G) */
 assoc_unformal_H * h1=0; assoc_unformal_H * h2 = 0; /* h2 (H) */
 assoc_unformal_H * h3 = 0; /* h3 (H) */
 assoc_unformal_H * h = 0; /* h (H) */
 assoc_unformal_H * hp = 0; /* hp (H) */
 assoc_unformal_H * hf = 0; /* hf (H) */
 assoc_unformal_I * i=0; assoc_unformal_K * k = 0; /* k (K) */
 assoc_unformal_L * l = 0; /* l (L) */
 assoc_unformal_O * o=0; Escher_ObjectSet_s os_space={0}; Escher_ObjectSet_s * os = &os_space; /* os (O) */
 assoc_unformal_O * o1 = 0; /* o1 (O) */
 assoc_unformal_OO * oo1=0; assoc_unformal_OO * oo2 = 0; /* oo2 (OO) */
 assoc_unformal_OO * oo3 = 0; /* oo3 (OO) */
 assoc_unformal_OO * oo4 = 0; /* oo4 (OO) */
 assoc_unformal_N * n=0; Escher_ObjectSet_s ns_space={0}; Escher_ObjectSet_s * ns = &ns_space; /* ns (N) */
 assoc_unformal_N * n1; assoc_unformal_N * n2; assoc_unformal_N * boss = 0; /* boss (N) */
 assoc_unformal_M * m = 0; /* m (M) */
 assoc_unformal_P * p=0; assoc_unformal_Q * q = 0; /* q (Q) */
 assoc_unformal_R * r = 0; /* r (R) */
 assoc_unformal_S * s=0; Escher_ObjectSet_s ts_space={0}; Escher_ObjectSet_s * ts = &ts_space; /* ts (T) */
 assoc_unformal_T * t=0; assoc_unformal_U * u = 0; /* u (U) */
 assoc_unformal_W * w=0; assoc_unformal_W * husband = 0; /* husband (W) */
 assoc_unformal_W * huz=0; assoc_unformal_W * wife = 0; /* wife (W) */
 assoc_unformal_V * v=0; assoc_unformal_X * x=0; Escher_ObjectSet_s xs_space={0}; Escher_ObjectSet_s * xs = &xs_space; /* xs (X) */
 i_t cardxs; Escher_ObjectSet_s ys_space={0}; Escher_ObjectSet_s * ys = &ys_space; /* friendship (Y) */ assoc_unformal_X * x1 = 0; /* x1 (X) */
 assoc_unformal_Z * z=0; Escher_ObjectSet_s zs_space={0}; Escher_ObjectSet_s * zs = &zs_space; /* zs (Z) */
 assoc_unformal_J * j=0; 
  /* SELECT any a FROM INSTANCES OF A */
  a = (assoc_unformal_A *) Escher_SetGetAny( &pG_assoc_unformal_A_extent.active );
  /* IF ( empty a ) */
  if ( ( 0 == a ) ) {
    /* LOG::LogFailure( message:'test1.20:  Failed to select a.' ) */
    LOG_LogFailure( "test1.20:  Failed to select a." );
  }
  /* SELECT many as FROM INSTANCES OF A */
  Escher_CopySet( as, &pG_assoc_unformal_A_extent.active );
  /* IF ( ( cardinality as != 5 ) ) */
  if ( ( Escher_SetCardinality( as ) != 5 ) ) {
    /* LOG::LogFailure( message:'test1.21:  Wrong number of As.' ) */
    LOG_LogFailure( "test1.21:  Wrong number of As." );
  }
  /* CREATE OBJECT INSTANCE a1 OF A */
  a1 = (assoc_unformal_A *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_A_CLASS_NUMBER );
  /* SELECT any a FROM INSTANCES OF A WHERE ( SELECTED.i == 1 ) */
  a = 0;
  { assoc_unformal_A * selected;
    Escher_Iterator_s iteraassoc_unformal_A;
    Escher_IteratorReset( &iteraassoc_unformal_A, &pG_assoc_unformal_A_extent.active );
    while ( (selected = (assoc_unformal_A *) Escher_IteratorNext( &iteraassoc_unformal_A )) != 0 ) {
      if ( ( selected->i == 1 ) ) {
        a = selected;
        break;
      }
    }
  }
  /* IF ( empty a ) */
  if ( ( 0 == a ) ) {
    /* LOG::LogFailure( message:'test1.22:  Failed to select a where.' ) */
    LOG_LogFailure( "test1.22:  Failed to select a where." );
  }
  /* DELETE OBJECT INSTANCE a1 */
  if ( 0 == a1 ) {
    XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) a1, assoc_unformal_DOMAIN_ID, assoc_unformal_A_CLASS_NUMBER );
  /* SELECT any b FROM INSTANCES OF B WHERE ( SELECTED.i == 20 ) */
  b = 0;
  { assoc_unformal_B * selected;
    Escher_Iterator_s iterbassoc_unformal_B;
    Escher_IteratorReset( &iterbassoc_unformal_B, &pG_assoc_unformal_B_extent.active );
    while ( (selected = (assoc_unformal_B *) Escher_IteratorNext( &iterbassoc_unformal_B )) != 0 ) {
      if ( ( selected->i == 20 ) ) {
        b = selected;
        break;
      }
    }
  }
  /* IF ( not empty b ) */
  if ( !( 0 == b ) ) {
    /* LOG::LogFailure( message:'test1.23:  Selected non-existant B.' ) */
    LOG_LogFailure( "test1.23:  Selected non-existant B." );
  }
  /* SELECT any b FROM INSTANCES OF B WHERE ( SELECTED.i == 2 ) */
  b = 0;
  { assoc_unformal_B * selected;
    Escher_Iterator_s iterbassoc_unformal_B;
    Escher_IteratorReset( &iterbassoc_unformal_B, &pG_assoc_unformal_B_extent.active );
    while ( (selected = (assoc_unformal_B *) Escher_IteratorNext( &iterbassoc_unformal_B )) != 0 ) {
      if ( ( selected->i == 2 ) ) {
        b = selected;
        break;
      }
    }
  }
  /* IF ( empty b ) */
  if ( ( 0 == b ) ) {
    /* LOG::LogFailure( message:'test1.24:  Failed to select b where.' ) */
    LOG_LogFailure( "test1.24:  Failed to select b where." );
  }
  /* SELECT any a FROM INSTANCES OF A WHERE ( SELECTED.i == 3 ) */
  a = 0;
  { assoc_unformal_A * selected;
    Escher_Iterator_s iteraassoc_unformal_A;
    Escher_IteratorReset( &iteraassoc_unformal_A, &pG_assoc_unformal_A_extent.active );
    while ( (selected = (assoc_unformal_A *) Escher_IteratorNext( &iteraassoc_unformal_A )) != 0 ) {
      if ( ( selected->i == 3 ) ) {
        a = selected;
        break;
      }
    }
  }
  /* SELECT one b RELATED BY a->B[R1] */
  b = a->B_R1;
  /* IF ( empty b ) */
  if ( ( 0 == b ) ) {
    /* LOG::LogFailure( message:'test1.40:  Failed to select b across R1.' ) */
    LOG_LogFailure( "test1.40:  Failed to select b across R1." );
  }
  /* IF ( ( b.i != 4 ) ) */
  if ( ( b->i != 4 ) ) {
    /* LOG::LogFailure( message:'test1.41:  Selected wrong b across R1.' ) */
    LOG_LogFailure( "test1.41:  Selected wrong b across R1." );
  }
  /* SELECT one a RELATED BY b->A[R1] */
  a = b->A_R1;
  /* IF ( empty a ) */
  if ( ( 0 == a ) ) {
    /* LOG::LogFailure( message:'test1.44:  Failed to select a across R1.' ) */
    LOG_LogFailure( "test1.44:  Failed to select a across R1." );
  }
  /* IF ( ( a.i != 3 ) ) */
  if ( ( a->i != 3 ) ) {
    /* LOG::LogFailure( message:'test1.45:  Selected wrong a across R1.' ) */
    LOG_LogFailure( "test1.45:  Selected wrong a across R1." );
  }
  /* UNRELATE a FROM b ACROSS R1 */
  assoc_unformal_A_R1_Unlink( b, a );
  /* RELATE a TO b ACROSS R1 */
  assoc_unformal_A_R1_Link( b, a );
  /* ASSIGN bcounter = 0 */
  bcounter = 0;
  /* SELECT many bbs FROM INSTANCES OF BB */
  Escher_CopySet( bbs, &pG_assoc_unformal_BB_extent.active );
  /* FOR EACH bb IN bbs */
  { Escher_Iterator_s iterassoc_unformal_BBbb;
  assoc_unformal_BB * assoc_unformal_BBiterassoc_unformal_BBbb;
  Escher_IteratorReset( &iterassoc_unformal_BBbb, bbs );
  while ( (assoc_unformal_BBiterassoc_unformal_BBbb = (assoc_unformal_BB *)Escher_IteratorNext( &iterassoc_unformal_BBbb )) != 0 ) {
    bb = assoc_unformal_BBiterassoc_unformal_BBbb; {
    Escher_ObjectSet_s aas_space={0}; Escher_ObjectSet_s * aas = &aas_space; /* aas (AA) */
 i_t c; 
    /* SELECT many aas RELATED BY bb->AA[R14] */
    Escher_ClearSet( aas );
    if ( 0 != bb ) {
      Escher_CopySet( aas, &bb->AA_R14 );
    }
    /* ASSIGN c = cardinality aas */
    c = Escher_SetCardinality( aas );
    /* ASSIGN bcounter = ( bcounter + c ) */
    bcounter = ( bcounter + c );
        Escher_ClearSet( aas ); /* aas (AA) */
  }}}
  /* IF ( ( 3 != bcounter ) ) */
  if ( ( 3 != bcounter ) ) {
    /* LOG::LogFailure( message:'test1.460:  wrong M-M simples' ) */
    LOG_LogFailure( "test1.460:  wrong M-M simples" );
  }
  /* SELECT any d FROM INSTANCES OF D WHERE ( SELECTED.name == 'DeeTwo' ) */
  d = 0;
  { assoc_unformal_D * selected;
    Escher_Iterator_s iterdassoc_unformal_D;
    Escher_IteratorReset( &iterdassoc_unformal_D, &pG_assoc_unformal_D_extent.active );
    while ( (selected = (assoc_unformal_D *) Escher_IteratorNext( &iterdassoc_unformal_D )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, "DeeTwo" ) == 0 ) ) {
        d = selected;
        break;
      }
    }
  }
  /* IF ( empty d ) */
  if ( ( 0 == d ) ) {
    /* LOG::LogFailure( message:'test1.52:  Failed to select d from Ds.' ) */
    LOG_LogFailure( "test1.52:  Failed to select d from Ds." );
  }
  /* SELECT many cs RELATED BY d->C[R2] */
  Escher_ClearSet( cs );
  if ( 0 != d ) {
    Escher_CopySet( cs, &d->C_R2 );
  }
  /* IF ( ( cardinality cs != 4 ) ) */
  if ( ( Escher_SetCardinality( cs ) != 4 ) ) {
    /* LOG::LogFailure( message:'test1.62:  Failed to select Cs from D.' ) */
    LOG_LogFailure( "test1.62:  Failed to select Cs from D." );
  }
  /* FOR EACH c IN cs */
  { Escher_Iterator_s iterassoc_unformal_Cc;
  assoc_unformal_C * assoc_unformal_Citerassoc_unformal_Cc;
  Escher_IteratorReset( &iterassoc_unformal_Cc, cs );
  while ( (assoc_unformal_Citerassoc_unformal_Cc = (assoc_unformal_C *)Escher_IteratorNext( &iterassoc_unformal_Cc )) != 0 ) {
    c = assoc_unformal_Citerassoc_unformal_Cc; {
    /* SELECT one d RELATED BY c->D[R2] */
    d = c->D_R2;
    /* IF ( ( d.name != 'DeeTwo' ) ) */
    if ( ( Escher_strcmp( d->name, "DeeTwo" ) != 0 ) ) {
      /* LOG::LogFailure( message:'test1.63:  Failed to select D from C.' ) */
      LOG_LogFailure( "test1.63:  Failed to select D from C." );
    }
  }}}
  /* SELECT any e FROM INSTANCES OF E WHERE ( SELECTED.eID == 2 ) */
  e = 0;
  { assoc_unformal_E * selected;
    Escher_Iterator_s itereassoc_unformal_E;
    Escher_IteratorReset( &itereassoc_unformal_E, &pG_assoc_unformal_E_extent.active );
    while ( (selected = (assoc_unformal_E *) Escher_IteratorNext( &itereassoc_unformal_E )) != 0 ) {
      if ( ( selected->eID == 2 ) ) {
        e = selected;
        break;
      }
    }
  }
  /* IF ( empty e ) */
  if ( ( 0 == e ) ) {
    /* LOG::LogFailure( message:'test1.70:  Failed to select E.' ) */
    LOG_LogFailure( "test1.70:  Failed to select E." );
  }
  /* SELECT any f RELATED BY e->F[R3] */
  f = 0;
  {  if ( 0 != e ) {
  assoc_unformal_G * G_R3;
  Escher_Iterator_s iG_R3;
  Escher_IteratorReset( &iG_R3, &e->G_R3 );
  while ( ( 0 == f ) && ( 0 != ( G_R3 = (assoc_unformal_G *) Escher_IteratorNext( &iG_R3 ) ) ) ) {
  f = G_R3->F_R3;
}}}
  /* IF ( empty f ) */
  if ( ( 0 == f ) ) {
    /* LOG::LogFailure( message:'test1.71:  Failed to select F.' ) */
    LOG_LogFailure( "test1.71:  Failed to select F." );
    /* IF ( ( f.fID != 3 ) ) */
    if ( ( f->fID != 3 ) ) {
      /* LOG::LogFailure( message:'test1.72:  Selected wrong F across R3.' ) */
      LOG_LogFailure( "test1.72:  Selected wrong F across R3." );
    }
  }
  /* SELECT many es RELATED BY f->E[R3] */
  Escher_ClearSet( es );
  {  if ( 0 != f ) {
  assoc_unformal_G * G_R3;
  Escher_Iterator_s iG_R3;
  Escher_IteratorReset( &iG_R3, &f->G_R3 );
  while ( 0 != ( G_R3 = (assoc_unformal_G *) Escher_IteratorNext( &iG_R3 ) ) ) {
  {assoc_unformal_E * E_R3 = G_R3->E_R3;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) es, E_R3 ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) es, E_R3 );
  }}
}}}
  /* IF ( ( cardinality es != 2 ) ) */
  if ( ( Escher_SetCardinality( es ) != 2 ) ) {
    /* LOG::LogFailure( message:'test1.73:  Selected wrong count of Fs.' ) */
    LOG_LogFailure( "test1.73:  Selected wrong count of Fs." );
  }
  /* SELECT any g RELATED BY e->G[R3] */
  g = (assoc_unformal_G *) Escher_SetGetAny( &e->G_R3 );
  /* IF ( ( g.gID != 3 ) ) */
  if ( ( g->gID != 3 ) ) {
    /* LOG::LogFailure( message:'test1.74:  Selected incorrect G.' ) */
    LOG_LogFailure( "test1.74:  Selected incorrect G." );
  }
  /* FOR EACH e IN es */
  { Escher_Iterator_s iterassoc_unformal_Ee;
  assoc_unformal_E * assoc_unformal_Eiterassoc_unformal_Ee;
  Escher_IteratorReset( &iterassoc_unformal_Ee, es );
  while ( (assoc_unformal_Eiterassoc_unformal_Ee = (assoc_unformal_E *)Escher_IteratorNext( &iterassoc_unformal_Ee )) != 0 ) {
    e = assoc_unformal_Eiterassoc_unformal_Ee; {
    /* IF ( ( ( e.eID == 1 ) and ( e.eID == 2 ) ) ) */
    if ( ( ( e->eID == 1 ) && ( e->eID == 2 ) ) ) {
      /* LOG::LogFailure( message:'test1.75:  Selected incorrect Es.' ) */
      LOG_LogFailure( "test1.75:  Selected incorrect Es." );
    }
  }}}
  /* SELECT any h1 FROM INSTANCES OF H WHERE ( SELECTED.hID == 1 ) */
  h1 = 0;
  { assoc_unformal_H * selected;
    Escher_Iterator_s iterh1assoc_unformal_H;
    Escher_IteratorReset( &iterh1assoc_unformal_H, &pG_assoc_unformal_H_extent.active );
    while ( (selected = (assoc_unformal_H *) Escher_IteratorNext( &iterh1assoc_unformal_H )) != 0 ) {
      if ( ( selected->hID == 1 ) ) {
        h1 = selected;
        break;
      }
    }
  }
  /* IF ( empty h1 ) */
  if ( ( 0 == h1 ) ) {
    /* LOG::LogFailure( message:'test1.80:  Failed to select H.' ) */
    LOG_LogFailure( "test1.80:  Failed to select H." );
  }
  /* SELECT one h2 RELATED BY h1->H[R4.precedes] */
  h2 = h1->H_R4_precedes;
  /* IF ( ( h2.hID != 2 ) ) */
  if ( ( h2->hID != 2 ) ) {
    /* LOG::LogFailure( message:'test1.81:  Selected incorrect H.' ) */
    LOG_LogFailure( "test1.81:  Selected incorrect H." );
  }
  /* SELECT one h3 RELATED BY h2->H[R4.precedes] */
  h3 = h2->H_R4_precedes;
  /* IF ( ( h3.hID != 3 ) ) */
  if ( ( h3->hID != 3 ) ) {
    /* LOG::LogFailure( message:'test1.82:  Selected incorrect H.' ) */
    LOG_LogFailure( "test1.82:  Selected incorrect H." );
  }
  /* SELECT one h RELATED BY h1->H[R4.precedes]->H[R4.precedes] */
  h = 0;
  {  if ( 0 != h1 ) {
  assoc_unformal_H * H_R4_precedes = h1->H_R4_precedes;
  if ( 0 != H_R4_precedes ) {
  h = H_R4_precedes->H_R4_precedes;
}}}
  /* IF ( ( h.hID != 3 ) ) */
  if ( ( h->hID != 3 ) ) {
    /* LOG::LogFailure( message:'test1.83:  Selected incorrect H.' ) */
    LOG_LogFailure( "test1.83:  Selected incorrect H." );
  }
  /* SELECT one h RELATED BY h3->H[R4.follows]->H[R4.follows] */
  h = 0;
  {  if ( 0 != h3 ) {
  assoc_unformal_H * H_R4_follows = h3->H_R4_follows;
  if ( 0 != H_R4_follows ) {
  h = H_R4_follows->H_R4_follows;
}}}
  /* IF ( ( h.hID != 1 ) ) */
  if ( ( h->hID != 1 ) ) {
    /* LOG::LogFailure( message:'test1.84:  Selected incorrect H.' ) */
    LOG_LogFailure( "test1.84:  Selected incorrect H." );
  }
  /* SELECT any h FROM INSTANCES OF H WHERE ( SELECTED.hID == 2 ) */
  h = 0;
  { assoc_unformal_H * selected;
    Escher_Iterator_s iterhassoc_unformal_H;
    Escher_IteratorReset( &iterhassoc_unformal_H, &pG_assoc_unformal_H_extent.active );
    while ( (selected = (assoc_unformal_H *) Escher_IteratorNext( &iterhassoc_unformal_H )) != 0 ) {
      if ( ( selected->hID == 2 ) ) {
        h = selected;
        break;
      }
    }
  }
  /* IF ( empty h ) */
  if ( ( 0 == h ) ) {
    /* LOG::LogFailure( message:'test1.85:  Failed to select H.' ) */
    LOG_LogFailure( "test1.85:  Failed to select H." );
  }
  /* SELECT one hp RELATED BY h->H[R4.follows] */
  hp = h->H_R4_follows;
  /* IF ( ( hp.hID != 1 ) ) */
  if ( ( hp->hID != 1 ) ) {
    /* LOG::LogFailure( message:'test1.86:  Selected incorrect H.' ) */
    LOG_LogFailure( "test1.86:  Selected incorrect H." );
  }
  /* SELECT one hf RELATED BY h->H[R4.precedes] */
  hf = h->H_R4_precedes;
  /* IF ( ( hf.hID != 3 ) ) */
  if ( ( hf->hID != 3 ) ) {
    /* LOG::LogFailure( message:'test1.87:  Selected incorrect H.' ) */
    LOG_LogFailure( "test1.87:  Selected incorrect H." );
  }
  /* SELECT one h RELATED BY h3->H[R4.precedes] */
  h = h3->H_R4_precedes;
  /* IF ( ( h.hID != 4 ) ) */
  if ( ( h->hID != 4 ) ) {
    /* LOG::LogFailure( message:'test1.88:  Selected incorrect H.' ) */
    LOG_LogFailure( "test1.88:  Selected incorrect H." );
  }
  /* SELECT any i FROM INSTANCES OF I WHERE ( SELECTED.iID == 200 ) */
  i = 0;
  { assoc_unformal_I * selected;
    Escher_Iterator_s iteriassoc_unformal_I;
    Escher_IteratorReset( &iteriassoc_unformal_I, &pG_assoc_unformal_I_extent.active );
    while ( (selected = (assoc_unformal_I *) Escher_IteratorNext( &iteriassoc_unformal_I )) != 0 ) {
      if ( ( selected->iID == 200 ) ) {
        i = selected;
        break;
      }
    }
  }
  /* IF ( empty i ) */
  if ( ( 0 == i ) ) {
    /* LOG::LogFailure( message:'test1.90:  Failed to select I.' ) */
    LOG_LogFailure( "test1.90:  Failed to select I." );
  }
  /* SELECT one k RELATED BY i->K[R5] */
  k = 0;
  if ( assoc_unformal_K_CLASS_NUMBER == i->R5_object_id )  k = (assoc_unformal_K *) i->R5_subtype;
  /* IF ( empty k ) */
  if ( ( 0 == k ) ) {
    /* LOG::LogFailure( message:'test1.91:  Failed to select K.' ) */
    LOG_LogFailure( "test1.91:  Failed to select K." );
    /* IF ( ( k.kID != 22 ) ) */
    if ( ( k->kID != 22 ) ) {
      /* LOG::LogFailure( message:'test1.92:  Selected incorrect K.' ) */
      LOG_LogFailure( "test1.92:  Selected incorrect K." );
    }
  }
  /* SELECT one l RELATED BY i->K[R5]->L[R6] */
  l = 0;
  {  if ( 0 != i ) {
  assoc_unformal_K * R5_subtype = (assoc_unformal_K *) i->R5_subtype;
  if ( 0 != R5_subtype ) {
  if ( assoc_unformal_L_CLASS_NUMBER == R5_subtype->R6_object_id )  l = (assoc_unformal_L *) R5_subtype->R6_subtype;
}}}
  /* IF ( empty l ) */
  if ( ( 0 == l ) ) {
    /* LOG::LogFailure( message:'test1.93:  Failed to select L.' ) */
    LOG_LogFailure( "test1.93:  Failed to select L." );
    /* IF ( ( l.lID != 222 ) ) */
    if ( ( l->lID != 222 ) ) {
      /* LOG::LogFailure( message:'test1.94:  Selected incorrect L.' ) */
      LOG_LogFailure( "test1.94:  Selected incorrect L." );
    }
  }
  /* SELECT any o FROM INSTANCES OF O WHERE ( SELECTED.voo == 'Cort' ) */
  o = 0;
  { assoc_unformal_O * selected;
    Escher_Iterator_s iteroassoc_unformal_O;
    Escher_IteratorReset( &iteroassoc_unformal_O, &pG_assoc_unformal_O_extent.active );
    while ( (selected = (assoc_unformal_O *) Escher_IteratorNext( &iteroassoc_unformal_O )) != 0 ) {
      if ( ( Escher_strcmp( selected->voo, "Cort" ) == 0 ) ) {
        o = selected;
        break;
      }
    }
  }
  /* SELECT many os RELATED BY o->O[R8.teaches] */
  Escher_ClearSet( os );
  if ( 0 != o ) {
    Escher_CopySet( os, &o->O_R8_teaches );
  }
  /* IF ( ( cardinality os != 3 ) ) */
  if ( ( Escher_SetCardinality( os ) != 3 ) ) {
    /* LOG::LogFailure( message:'test1.C2:  Failed to select Os.' ) */
    LOG_LogFailure( "test1.C2:  Failed to select Os." );
  }
  /* SELECT one o1 RELATED BY o->O[R8.learns from] */
  o1 = o->O_R8_learns_from;
  /* IF ( ( o1.voo != 'Kenny' ) ) */
  if ( ( Escher_strcmp( o1->voo, "Kenny" ) != 0 ) ) {
    /* LOG::LogFailure( message:'test1.C3:  Selected incorrect O.' ) */
    LOG_LogFailure( "test1.C3:  Selected incorrect O." );
  }
  /* SELECT any o FROM INSTANCES OF O WHERE ( SELECTED.voo == 'Ellen' ) */
  o = 0;
  { assoc_unformal_O * selected;
    Escher_Iterator_s iteroassoc_unformal_O;
    Escher_IteratorReset( &iteroassoc_unformal_O, &pG_assoc_unformal_O_extent.active );
    while ( (selected = (assoc_unformal_O *) Escher_IteratorNext( &iteroassoc_unformal_O )) != 0 ) {
      if ( ( Escher_strcmp( selected->voo, "Ellen" ) == 0 ) ) {
        o = selected;
        break;
      }
    }
  }
  /* SELECT one o1 RELATED BY o->O[R8.learns from] */
  o1 = o->O_R8_learns_from;
  /* IF ( ( o1.voo != 'Cort' ) ) */
  if ( ( Escher_strcmp( o1->voo, "Cort" ) != 0 ) ) {
    /* LOG::LogFailure( message:'test1.C4:  Selected incorrect O.' ) */
    LOG_LogFailure( "test1.C4:  Selected incorrect O." );
  }
  /* SELECT any o FROM INSTANCES OF O WHERE ( SELECTED.voo == 'Amy' ) */
  o = 0;
  { assoc_unformal_O * selected;
    Escher_Iterator_s iteroassoc_unformal_O;
    Escher_IteratorReset( &iteroassoc_unformal_O, &pG_assoc_unformal_O_extent.active );
    while ( (selected = (assoc_unformal_O *) Escher_IteratorNext( &iteroassoc_unformal_O )) != 0 ) {
      if ( ( Escher_strcmp( selected->voo, "Amy" ) == 0 ) ) {
        o = selected;
        break;
      }
    }
  }
  /* SELECT one o1 RELATED BY o->O[R8.learns from] */
  o1 = o->O_R8_learns_from;
  /* IF ( ( o1.voo != 'Cort' ) ) */
  if ( ( Escher_strcmp( o1->voo, "Cort" ) != 0 ) ) {
    /* LOG::LogFailure( message:'test1.C5:  Selected incorrect O.' ) */
    LOG_LogFailure( "test1.C5:  Selected incorrect O." );
  }
  /* SELECT any oo1 FROM INSTANCES OF OO WHERE ( SELECTED.number == 1 ) */
  oo1 = 0;
  { assoc_unformal_OO * selected;
    Escher_Iterator_s iteroo1assoc_unformal_OO;
    Escher_IteratorReset( &iteroo1assoc_unformal_OO, &pG_assoc_unformal_OO_extent.active );
    while ( (selected = (assoc_unformal_OO *) Escher_IteratorNext( &iteroo1assoc_unformal_OO )) != 0 ) {
      if ( ( selected->number == 1 ) ) {
        oo1 = selected;
        break;
      }
    }
  }
  /* SELECT any oo2 RELATED BY oo1->OO[R15.right] */
  oo2 = (assoc_unformal_OO *) Escher_SetGetAny( &oo1->OO_R15_right );
  /* IF ( ( 2 != oo2.number ) ) */
  if ( ( 2 != oo2->number ) ) {
    /* LOG::LogFailure( message:'test1.OO1a:  incorrect OO simple MM.' ) */
    LOG_LogFailure( "test1.OO1a:  incorrect OO simple MM." );
  }
  /* SELECT any oo3 RELATED BY oo2->OO[R15.right] */
  oo3 = (assoc_unformal_OO *) Escher_SetGetAny( &oo2->OO_R15_right );
  /* IF ( ( 3 != oo3.number ) ) */
  if ( ( 3 != oo3->number ) ) {
    /* LOG::LogFailure( message:'test1.OO1b:  incorrect OO simple MM.' ) */
    LOG_LogFailure( "test1.OO1b:  incorrect OO simple MM." );
  }
  /* SELECT any oo4 RELATED BY oo3->OO[R15.right] */
  oo4 = (assoc_unformal_OO *) Escher_SetGetAny( &oo3->OO_R15_right );
  /* IF ( ( 4 != oo4.number ) ) */
  if ( ( 4 != oo4->number ) ) {
    /* LOG::LogFailure( message:'test1.OO1c:  incorrect OO simple MM.' ) */
    LOG_LogFailure( "test1.OO1c:  incorrect OO simple MM." );
  }
  /* SELECT any n FROM INSTANCES OF N WHERE ( SELECTED.name == 'Chris' ) */
  n = 0;
  { assoc_unformal_N * selected;
    Escher_Iterator_s iternassoc_unformal_N;
    Escher_IteratorReset( &iternassoc_unformal_N, &pG_assoc_unformal_N_extent.active );
    while ( (selected = (assoc_unformal_N *) Escher_IteratorNext( &iternassoc_unformal_N )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, "Chris" ) == 0 ) ) {
        n = selected;
        break;
      }
    }
  }
  /* SELECT many ns RELATED BY n->N[R7.manages] */
  Escher_ClearSet( ns );
  {  if ( 0 != n ) {
  assoc_unformal_M * M_R7_manages;
  Escher_Iterator_s iM_R7_manages;
  Escher_IteratorReset( &iM_R7_manages, &n->M_R7_manages );
  while ( 0 != ( M_R7_manages = (assoc_unformal_M *) Escher_IteratorNext( &iM_R7_manages ) ) ) {
  {assoc_unformal_N * N_R7_manages = M_R7_manages->N_R7_manages;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) ns, N_R7_manages ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) ns, N_R7_manages );
  }}
}}}
  /* IF ( ( cardinality ns != 2 ) ) */
  if ( ( Escher_SetCardinality( ns ) != 2 ) ) {
    /* LOG::LogFailure( message:'test1.B2:  Failed to select Ns.' ) */
    LOG_LogFailure( "test1.B2:  Failed to select Ns." );
  }
  /* CREATE OBJECT INSTANCE n1 OF N */
  n1 = (assoc_unformal_N *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_N_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE n2 OF N */
  n2 = (assoc_unformal_N *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_N_CLASS_NUMBER );
  /* DELETE OBJECT INSTANCE n2 */
  if ( 0 == n2 ) {
    XTUML_EMPTY_HANDLE_TRACE( "N", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) n2, assoc_unformal_DOMAIN_ID, assoc_unformal_N_CLASS_NUMBER );
  /* ASSIGN n1.name = 'Vijay' */
  Escher_strcpy( n1->name, "Vijay" );
  /* FOR EACH n IN ns */
  { Escher_Iterator_s iterassoc_unformal_Nn;
  assoc_unformal_N * assoc_unformal_Niterassoc_unformal_Nn;
  Escher_IteratorReset( &iterassoc_unformal_Nn, ns );
  while ( (assoc_unformal_Niterassoc_unformal_Nn = (assoc_unformal_N *)Escher_IteratorNext( &iterassoc_unformal_Nn )) != 0 ) {
    n = assoc_unformal_Niterassoc_unformal_Nn; {
    /* IF ( ( ( n.name != 'Dave' ) and ( n.name != 'Pete' ) ) ) */
    if ( ( ( Escher_strcmp( n->name, "Dave" ) != 0 ) && ( Escher_strcmp( n->name, "Pete" ) != 0 ) ) ) {
      /* LOG::LogFailure( message:'test1.B3:  Selected incorrect Ns.' ) */
      LOG_LogFailure( "test1.B3:  Selected incorrect Ns." );
    }
  }}}
  /* DELETE OBJECT INSTANCE n1 */
  if ( 0 == n1 ) {
    XTUML_EMPTY_HANDLE_TRACE( "N", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) n1, assoc_unformal_DOMAIN_ID, assoc_unformal_N_CLASS_NUMBER );
  /* SELECT any n FROM INSTANCES OF N WHERE ( SELECTED.name == 'Pete' ) */
  n = 0;
  { assoc_unformal_N * selected;
    Escher_Iterator_s iternassoc_unformal_N;
    Escher_IteratorReset( &iternassoc_unformal_N, &pG_assoc_unformal_N_extent.active );
    while ( (selected = (assoc_unformal_N *) Escher_IteratorNext( &iternassoc_unformal_N )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, "Pete" ) == 0 ) ) {
        n = selected;
        break;
      }
    }
  }
  /* SELECT one boss RELATED BY n->N[R7.works for] */
  boss = 0;
  {  if ( 0 != n ) {
  assoc_unformal_M * M_R7_works_for = n->M_R7_works_for;
  if ( 0 != M_R7_works_for ) {
  boss = M_R7_works_for->N_R7_works_for;
}}}
  /* IF ( empty boss ) */
  if ( ( 0 == boss ) ) {
    /* LOG::LogFailure( message:'test1.B4:  Failed to select boss.' ) */
    LOG_LogFailure( "test1.B4:  Failed to select boss." );
  }
  else {
    /* IF ( ( boss.name != 'Chris' ) ) */
    if ( ( Escher_strcmp( boss->name, "Chris" ) != 0 ) ) {
      /* LOG::LogFailure( message:'test1.B5:  Selected incorrect boss.' ) */
      LOG_LogFailure( "test1.B5:  Selected incorrect boss." );
    }
  }
  /* SELECT any n FROM INSTANCES OF N WHERE ( SELECTED.name == 'Dave' ) */
  n = 0;
  { assoc_unformal_N * selected;
    Escher_Iterator_s iternassoc_unformal_N;
    Escher_IteratorReset( &iternassoc_unformal_N, &pG_assoc_unformal_N_extent.active );
    while ( (selected = (assoc_unformal_N *) Escher_IteratorNext( &iternassoc_unformal_N )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, "Dave" ) == 0 ) ) {
        n = selected;
        break;
      }
    }
  }
  /* SELECT one m RELATED BY n->M[R7.works for] */
  m = n->M_R7_works_for;
  /* IF ( empty m ) */
  if ( ( 0 == m ) ) {
    /* LOG::LogFailure( message:'test1.B6:  Failed to select M.' ) */
    LOG_LogFailure( "test1.B6:  Failed to select M." );
    /* IF ( ( m.department != 'MEC' ) ) */
    if ( ( Escher_strcmp( m->department, "MEC" ) != 0 ) ) {
      /* LOG::LogFailure( message:'test1.B7:  Selected incorrect department.' ) */
      LOG_LogFailure( "test1.B7:  Selected incorrect department." );
    }
  }
  /* SELECT any n FROM INSTANCES OF N WHERE ( SELECTED.name == 'Pete' ) */
  n = 0;
  { assoc_unformal_N * selected;
    Escher_Iterator_s iternassoc_unformal_N;
    Escher_IteratorReset( &iternassoc_unformal_N, &pG_assoc_unformal_N_extent.active );
    while ( (selected = (assoc_unformal_N *) Escher_IteratorNext( &iternassoc_unformal_N )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, "Pete" ) == 0 ) ) {
        n = selected;
        break;
      }
    }
  }
  /* SELECT many ns RELATED BY n->N[R7.manages] */
  Escher_ClearSet( ns );
  {  if ( 0 != n ) {
  assoc_unformal_M * M_R7_manages;
  Escher_Iterator_s iM_R7_manages;
  Escher_IteratorReset( &iM_R7_manages, &n->M_R7_manages );
  while ( 0 != ( M_R7_manages = (assoc_unformal_M *) Escher_IteratorNext( &iM_R7_manages ) ) ) {
  {assoc_unformal_N * N_R7_manages = M_R7_manages->N_R7_manages;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) ns, N_R7_manages ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) ns, N_R7_manages );
  }}
}}}
  /* IF ( ( cardinality ns != 2 ) ) */
  if ( ( Escher_SetCardinality( ns ) != 2 ) ) {
    /* LOG::LogFailure( message:'test1.B2:  Failed to select Ns.' ) */
    LOG_LogFailure( "test1.B2:  Failed to select Ns." );
  }
  /* FOR EACH n IN ns */
  { Escher_Iterator_s iterassoc_unformal_Nn;
  assoc_unformal_N * assoc_unformal_Niterassoc_unformal_Nn;
  Escher_IteratorReset( &iterassoc_unformal_Nn, ns );
  while ( (assoc_unformal_Niterassoc_unformal_Nn = (assoc_unformal_N *)Escher_IteratorNext( &iterassoc_unformal_Nn )) != 0 ) {
    n = assoc_unformal_Niterassoc_unformal_Nn; {
    /* IF ( ( ( n.name != 'Alex' ) and ( n.name != 'Jenn' ) ) ) */
    if ( ( ( Escher_strcmp( n->name, "Alex" ) != 0 ) && ( Escher_strcmp( n->name, "Jenn" ) != 0 ) ) ) {
      /* LOG::LogFailure( message:'test1.B3:  Selected incorrect Ns.' ) */
      LOG_LogFailure( "test1.B3:  Selected incorrect Ns." );
    }
  }}}
  /* SELECT any p FROM INSTANCES OF P WHERE ( SELECTED.eyedee == 'Rox' ) */
  p = 0;
  { assoc_unformal_P * selected;
    Escher_Iterator_s iterpassoc_unformal_P;
    Escher_IteratorReset( &iterpassoc_unformal_P, &pG_assoc_unformal_P_extent.active );
    while ( (selected = (assoc_unformal_P *) Escher_IteratorNext( &iterpassoc_unformal_P )) != 0 ) {
      if ( ( Escher_strcmp( selected->eyedee, "Rox" ) == 0 ) ) {
        p = selected;
        break;
      }
    }
  }
  /* SELECT one q RELATED BY p->Q[R9] */
  q = 0;
  {  if ( 0 != p ) {
  assoc_unformal_R * R_R9 = p->R_R9;
  if ( 0 != R_R9 ) {
  q = R_R9->Q_R9;
}}}
  /* IF ( ( q.deeeye != 'Cort' ) ) */
  if ( ( Escher_strcmp( q->deeeye, "Cort" ) != 0 ) ) {
    /* LOG::LogFailure( message:'test1.D1:  Selected incorrect Q.' ) */
    LOG_LogFailure( "test1.D1:  Selected incorrect Q." );
  }
  /* SELECT any q FROM INSTANCES OF Q WHERE ( SELECTED.deeeye == 'Rusty' ) */
  q = 0;
  { assoc_unformal_Q * selected;
    Escher_Iterator_s iterqassoc_unformal_Q;
    Escher_IteratorReset( &iterqassoc_unformal_Q, &pG_assoc_unformal_Q_extent.active );
    while ( (selected = (assoc_unformal_Q *) Escher_IteratorNext( &iterqassoc_unformal_Q )) != 0 ) {
      if ( ( Escher_strcmp( selected->deeeye, "Rusty" ) == 0 ) ) {
        q = selected;
        break;
      }
    }
  }
  /* SELECT one p RELATED BY q->P[R9] */
  p = 0;
  {  if ( 0 != q ) {
  assoc_unformal_R * R_R9 = q->R_R9;
  if ( 0 != R_R9 ) {
  p = R_R9->P_R9;
}}}
  /* IF ( ( p.eyedee != 'Bita' ) ) */
  if ( ( Escher_strcmp( p->eyedee, "Bita" ) != 0 ) ) {
    /* LOG::LogFailure( message:'test1.D2:  Selected incorrect P.' ) */
    LOG_LogFailure( "test1.D2:  Selected incorrect P." );
  }
  /* SELECT any p FROM INSTANCES OF P WHERE ( SELECTED.eyedee == 'Tina' ) */
  p = 0;
  { assoc_unformal_P * selected;
    Escher_Iterator_s iterpassoc_unformal_P;
    Escher_IteratorReset( &iterpassoc_unformal_P, &pG_assoc_unformal_P_extent.active );
    while ( (selected = (assoc_unformal_P *) Escher_IteratorNext( &iterpassoc_unformal_P )) != 0 ) {
      if ( ( Escher_strcmp( selected->eyedee, "Tina" ) == 0 ) ) {
        p = selected;
        break;
      }
    }
  }
  /* SELECT one r RELATED BY p->R[R9] */
  r = p->R_R9;
  /* IF ( ( r.city != 'Lockport' ) ) */
  if ( ( Escher_strcmp( r->city, "Lockport" ) != 0 ) ) {
    /* LOG::LogFailure( message:'test1.D3:  Selected incorrect R.' ) */
    LOG_LogFailure( "test1.D3:  Selected incorrect R." );
  }
  /* SELECT any s FROM INSTANCES OF S WHERE ( SELECTED.s == 'Rox' ) */
  s = 0;
  { assoc_unformal_S * selected;
    Escher_Iterator_s itersassoc_unformal_S;
    Escher_IteratorReset( &itersassoc_unformal_S, &pG_assoc_unformal_S_extent.active );
    while ( (selected = (assoc_unformal_S *) Escher_IteratorNext( &itersassoc_unformal_S )) != 0 ) {
      if ( ( Escher_strcmp( selected->s, "Rox" ) == 0 ) ) {
        s = selected;
        break;
      }
    }
  }
  /* SELECT many ts RELATED BY s->T[R10] */
  Escher_ClearSet( ts );
  {  if ( 0 != s ) {
  assoc_unformal_U * U_R10;
  Escher_Iterator_s iU_R10;
  Escher_IteratorReset( &iU_R10, &s->U_R10 );
  while ( 0 != ( U_R10 = (assoc_unformal_U *) Escher_IteratorNext( &iU_R10 ) ) ) {
  {assoc_unformal_T * T_R10 = U_R10->T_R10;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) ts, T_R10 ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) ts, T_R10 );
  }}
}}}
  /* IF ( ( cardinality ts != 2 ) ) */
  if ( ( Escher_SetCardinality( ts ) != 2 ) ) {
    /* LOG::LogFailure( message:'test1.E1:  Incorrect number of Ts.' ) */
    LOG_LogFailure( "test1.E1:  Incorrect number of Ts." );
  }
  /* FOR EACH t IN ts */
  { Escher_Iterator_s iterassoc_unformal_Tt;
  assoc_unformal_T * assoc_unformal_Titerassoc_unformal_Tt;
  Escher_IteratorReset( &iterassoc_unformal_Tt, ts );
  while ( (assoc_unformal_Titerassoc_unformal_Tt = (assoc_unformal_T *)Escher_IteratorNext( &iterassoc_unformal_Tt )) != 0 ) {
    t = assoc_unformal_Titerassoc_unformal_Tt; {
    /* IF ( ( ( t.t != 'Hannah' ) and ( t.t != 'Ruby' ) ) ) */
    if ( ( ( Escher_strcmp( t->t, "Hannah" ) != 0 ) && ( Escher_strcmp( t->t, "Ruby" ) != 0 ) ) ) {
      /* LOG::LogFailure( message:'test1.E2:  Incorrect T.' ) */
      LOG_LogFailure( "test1.E2:  Incorrect T." );
    }
    /* SELECT one s RELATED BY t->S[R10] */
    s = 0;
    {    if ( 0 != t ) {
    assoc_unformal_U * U_R10 = t->U_R10;
    if ( 0 != U_R10 ) {
    s = U_R10->S_R10;
}}}
    /* IF ( ( s.s != 'Rox' ) ) */
    if ( ( Escher_strcmp( s->s, "Rox" ) != 0 ) ) {
      /* LOG::LogFailure( message:'test1.E3:  Incorrect S.' ) */
      LOG_LogFailure( "test1.E3:  Incorrect S." );
    }
  }}}
  /* SELECT any t FROM INSTANCES OF T WHERE ( SELECTED.t == 'Katrina' ) */
  t = 0;
  { assoc_unformal_T * selected;
    Escher_Iterator_s itertassoc_unformal_T;
    Escher_IteratorReset( &itertassoc_unformal_T, &pG_assoc_unformal_T_extent.active );
    while ( (selected = (assoc_unformal_T *) Escher_IteratorNext( &itertassoc_unformal_T )) != 0 ) {
      if ( ( Escher_strcmp( selected->t, "Katrina" ) == 0 ) ) {
        t = selected;
        break;
      }
    }
  }
  /* SELECT one s RELATED BY t->S[R10] */
  s = 0;
  {  if ( 0 != t ) {
  assoc_unformal_U * U_R10 = t->U_R10;
  if ( 0 != U_R10 ) {
  s = U_R10->S_R10;
}}}
  /* SELECT any u RELATED BY s->U[R10] WHERE ( ( SELECTED.s == 'Aug' ) ) */
  u = 0;
  {assoc_unformal_U * selected;
  Escher_Iterator_s iU_R10;
  Escher_IteratorReset( &iU_R10, &s->U_R10 );
  while ( 0 != ( selected = (assoc_unformal_U *) Escher_IteratorNext( &iU_R10 ) ) ) {
    if ( ( Escher_strcmp( selected->s, "Aug" ) == 0 ) ) {
      u = selected;
      break;
  }}}
  /* IF ( empty u ) */
  if ( ( 0 == u ) ) {
    /* LOG::LogFailure( message:'test1.E4:  Incorrect U.' ) */
    LOG_LogFailure( "test1.E4:  Incorrect U." );
  }
  /* SELECT any w FROM INSTANCES OF W WHERE ( SELECTED.name == 'Rox' ) */
  w = 0;
  { assoc_unformal_W * selected;
    Escher_Iterator_s iterwassoc_unformal_W;
    Escher_IteratorReset( &iterwassoc_unformal_W, &pG_assoc_unformal_W_extent.active );
    while ( (selected = (assoc_unformal_W *) Escher_IteratorNext( &iterwassoc_unformal_W )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, "Rox" ) == 0 ) ) {
        w = selected;
        break;
      }
    }
  }
  /* SELECT one husband RELATED BY w->W[R11.is wife of] */
  husband = 0;
  {  if ( 0 != w ) {
  assoc_unformal_V * V_R11_is_wife_of = w->V_R11_is_wife_of;
  if ( 0 != V_R11_is_wife_of ) {
  husband = V_R11_is_wife_of->W_R11_is_wife_of;
}}}
  /* IF ( ( husband.name != 'Cort' ) ) */
  if ( ( Escher_strcmp( husband->name, "Cort" ) != 0 ) ) {
    /* LOG::LogFailure( message:'test1.F1:  Incorrect W.' ) */
    LOG_LogFailure( "test1.F1:  Incorrect W." );
  }
  /* SELECT any w FROM INSTANCES OF W WHERE ( SELECTED.name == 'Jacqui' ) */
  w = 0;
  { assoc_unformal_W * selected;
    Escher_Iterator_s iterwassoc_unformal_W;
    Escher_IteratorReset( &iterwassoc_unformal_W, &pG_assoc_unformal_W_extent.active );
    while ( (selected = (assoc_unformal_W *) Escher_IteratorNext( &iterwassoc_unformal_W )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, "Jacqui" ) == 0 ) ) {
        w = selected;
        break;
      }
    }
  }
  /* SELECT one husband RELATED BY w->W[R11.is wife of] */
  husband = 0;
  {  if ( 0 != w ) {
  assoc_unformal_V * V_R11_is_wife_of = w->V_R11_is_wife_of;
  if ( 0 != V_R11_is_wife_of ) {
  husband = V_R11_is_wife_of->W_R11_is_wife_of;
}}}
  /* IF ( ( husband.name != 'Sean' ) ) */
  if ( ( Escher_strcmp( husband->name, "Sean" ) != 0 ) ) {
    /* LOG::LogFailure( message:'test1.F2:  Incorrect W.' ) */
    LOG_LogFailure( "test1.F2:  Incorrect W." );
  }
  /* SELECT any huz FROM INSTANCES OF W WHERE ( SELECTED.name == 'Cort' ) */
  huz = 0;
  { assoc_unformal_W * selected;
    Escher_Iterator_s iterhuzassoc_unformal_W;
    Escher_IteratorReset( &iterhuzassoc_unformal_W, &pG_assoc_unformal_W_extent.active );
    while ( (selected = (assoc_unformal_W *) Escher_IteratorNext( &iterhuzassoc_unformal_W )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, "Cort" ) == 0 ) ) {
        huz = selected;
        break;
      }
    }
  }
  /* SELECT one wife RELATED BY huz->W[R11.is husband of] */
  wife = 0;
  {  if ( 0 != huz ) {
  assoc_unformal_V * V_R11_is_husband_of = huz->V_R11_is_husband_of;
  if ( 0 != V_R11_is_husband_of ) {
  wife = V_R11_is_husband_of->W_R11_is_husband_of;
}}}
  /* IF ( ( wife.name != 'Rox' ) ) */
  if ( ( Escher_strcmp( wife->name, "Rox" ) != 0 ) ) {
    /* LOG::LogFailure( message:'test1.F3:  Incorrect W.' ) */
    LOG_LogFailure( "test1.F3:  Incorrect W." );
  }
  /* SELECT any v FROM INSTANCES OF V WHERE ( SELECTED.year == 1988 ) */
  v = 0;
  { assoc_unformal_V * selected;
    Escher_Iterator_s itervassoc_unformal_V;
    Escher_IteratorReset( &itervassoc_unformal_V, &pG_assoc_unformal_V_extent.active );
    while ( (selected = (assoc_unformal_V *) Escher_IteratorNext( &itervassoc_unformal_V )) != 0 ) {
      if ( ( selected->year == 1988 ) ) {
        v = selected;
        break;
      }
    }
  }
  /* IF ( ( ( v.husband != 'Cort' ) or ( v.wife != 'Rox' ) ) ) */
  if ( ( ( Escher_strcmp( v->husband, "Cort" ) != 0 ) || ( Escher_strcmp( v->wife, "Rox" ) != 0 ) ) ) {
    /* LOG::LogFailure( message:'test1.F4:  Incorrect V.' ) */
    LOG_LogFailure( "test1.F4:  Incorrect V." );
  }
  /* SELECT any x FROM INSTANCES OF X WHERE ( SELECTED.name == 'Cort' ) */
  x = 0;
  { assoc_unformal_X * selected;
    Escher_Iterator_s iterxassoc_unformal_X;
    Escher_IteratorReset( &iterxassoc_unformal_X, &pG_assoc_unformal_X_extent.active );
    while ( (selected = (assoc_unformal_X *) Escher_IteratorNext( &iterxassoc_unformal_X )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, "Cort" ) == 0 ) ) {
        x = selected;
        break;
      }
    }
  }
  /* IF ( empty x ) */
  if ( ( 0 == x ) ) {
    /* LOG::LogFailure( message:'test1.X1:  Failed to select X.' ) */
    LOG_LogFailure( "test1.X1:  Failed to select X." );
  }
  /* SELECT many xs RELATED BY x->X[R12.is pal of] */
  Escher_ClearSet( xs );
  {  if ( 0 != x ) {
  assoc_unformal_Y * Y_R12_is_pal_of;
  Escher_Iterator_s iY_R12_is_pal_of;
  Escher_IteratorReset( &iY_R12_is_pal_of, &x->Y_R12_is_pal_of );
  while ( 0 != ( Y_R12_is_pal_of = (assoc_unformal_Y *) Escher_IteratorNext( &iY_R12_is_pal_of ) ) ) {
  {assoc_unformal_X * X_R12_is_pal_of = Y_R12_is_pal_of->X_R12_is_pal_of;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) xs, X_R12_is_pal_of ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) xs, X_R12_is_pal_of );
  }}
}}}
  /* ASSIGN cardxs = cardinality xs */
  cardxs = Escher_SetCardinality( xs );
  /* SELECT many xs RELATED BY x->X[R12.is buddy of] */
  Escher_ClearSet( xs );
  {  if ( 0 != x ) {
  assoc_unformal_Y * Y_R12_is_buddy_of;
  Escher_Iterator_s iY_R12_is_buddy_of;
  Escher_IteratorReset( &iY_R12_is_buddy_of, &x->Y_R12_is_buddy_of );
  while ( 0 != ( Y_R12_is_buddy_of = (assoc_unformal_Y *) Escher_IteratorNext( &iY_R12_is_buddy_of ) ) ) {
  {assoc_unformal_X * X_R12_is_buddy_of = Y_R12_is_buddy_of->X_R12_is_buddy_of;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) xs, X_R12_is_buddy_of ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) xs, X_R12_is_buddy_of );
  }}
}}}
  /* ASSIGN cardxs = ( cardxs + cardinality xs ) */
  cardxs = ( cardxs + Escher_SetCardinality( xs ) );
  /* IF ( ( cardxs != 5 ) ) */
  if ( ( cardxs != 5 ) ) {
    /* LOG::LogFailure( message:'test1.X2:  Wrong number of friends.' ) */
    LOG_LogFailure( "test1.X2:  Wrong number of friends." );
  }
  /* SELECT many ys FROM INSTANCES OF Y WHERE ( ( SELECTED.pal == 'Cort' ) or ( SELECTED.buddy == 'Cort' ) ) */
  Escher_ClearSet( ys );
  { assoc_unformal_Y * selected;
    Escher_Iterator_s iterysassoc_unformal_Y;
    Escher_IteratorReset( &iterysassoc_unformal_Y, &pG_assoc_unformal_Y_extent.active );
    while ( (selected = (assoc_unformal_Y *) Escher_IteratorNext( &iterysassoc_unformal_Y )) != 0 ) {
      if ( ( ( Escher_strcmp( selected->pal, "Cort" ) == 0 ) || ( Escher_strcmp( selected->buddy, "Cort" ) == 0 ) ) ) {
        Escher_SetInsertElement( ys, selected );
      }
    }
  }
  /* IF ( ( cardinality ys != 5 ) ) */
  if ( ( Escher_SetCardinality( ys ) != 5 ) ) {
    /* LOG::LogFailure( message:'test1.Y3:  Wrong number of friends.' ) */
    LOG_LogFailure( "test1.Y3:  Wrong number of friends." );
  }
  /* SELECT any x FROM INSTANCES OF X WHERE ( SELECTED.name == 'Sevina' ) */
  x = 0;
  { assoc_unformal_X * selected;
    Escher_Iterator_s iterxassoc_unformal_X;
    Escher_IteratorReset( &iterxassoc_unformal_X, &pG_assoc_unformal_X_extent.active );
    while ( (selected = (assoc_unformal_X *) Escher_IteratorNext( &iterxassoc_unformal_X )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, "Sevina" ) == 0 ) ) {
        x = selected;
        break;
      }
    }
  }
  /* IF ( empty x ) */
  if ( ( 0 == x ) ) {
    /* LOG::LogFailure( message:'test1.X4:  Failed to select X.' ) */
    LOG_LogFailure( "test1.X4:  Failed to select X." );
  }
  /* SELECT any x1 RELATED BY x->X[R12.is pal of] */
  x1 = 0;
  {  if ( 0 != x ) {
  assoc_unformal_Y * Y_R12_is_pal_of;
  Escher_Iterator_s iY_R12_is_pal_of;
  Escher_IteratorReset( &iY_R12_is_pal_of, &x->Y_R12_is_pal_of );
  while ( ( 0 == x1 ) && ( 0 != ( Y_R12_is_pal_of = (assoc_unformal_Y *) Escher_IteratorNext( &iY_R12_is_pal_of ) ) ) ) {
  x1 = Y_R12_is_pal_of->X_R12_is_pal_of;
}}}
  /* IF ( ( x1.name != 'Rox' ) ) */
  if ( ( Escher_strcmp( x1->name, "Rox" ) != 0 ) ) {
    /* LOG::LogFailure( message:'test1.X5:  Could not find Rox.' ) */
    LOG_LogFailure( "test1.X5:  Could not find Rox." );
  }
  /* SELECT any x FROM INSTANCES OF X WHERE ( SELECTED.name == 'Rox' ) */
  x = 0;
  { assoc_unformal_X * selected;
    Escher_Iterator_s iterxassoc_unformal_X;
    Escher_IteratorReset( &iterxassoc_unformal_X, &pG_assoc_unformal_X_extent.active );
    while ( (selected = (assoc_unformal_X *) Escher_IteratorNext( &iterxassoc_unformal_X )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, "Rox" ) == 0 ) ) {
        x = selected;
        break;
      }
    }
  }
  /* IF ( empty x ) */
  if ( ( 0 == x ) ) {
    /* LOG::LogFailure( message:'test1.X6:  Failed to select X.' ) */
    LOG_LogFailure( "test1.X6:  Failed to select X." );
  }
  /* SELECT any x1 RELATED BY x->X[R12.is buddy of] */
  x1 = 0;
  {  if ( 0 != x ) {
  assoc_unformal_Y * Y_R12_is_buddy_of;
  Escher_Iterator_s iY_R12_is_buddy_of;
  Escher_IteratorReset( &iY_R12_is_buddy_of, &x->Y_R12_is_buddy_of );
  while ( ( 0 == x1 ) && ( 0 != ( Y_R12_is_buddy_of = (assoc_unformal_Y *) Escher_IteratorNext( &iY_R12_is_buddy_of ) ) ) ) {
  x1 = Y_R12_is_buddy_of->X_R12_is_buddy_of;
}}}
  /* IF ( ( x1.name != 'Sevina' ) ) */
  if ( ( Escher_strcmp( x1->name, "Sevina" ) != 0 ) ) {
    /* LOG::LogFailure( message:'test1.X6:  Could not find Sevina.' ) */
    LOG_LogFailure( "test1.X6:  Could not find Sevina." );
  }
  /* SELECT any z FROM INSTANCES OF Z WHERE ( SELECTED.name == 'Joe' ) */
  z = 0;
  { assoc_unformal_Z * selected;
    Escher_Iterator_s iterzassoc_unformal_Z;
    Escher_IteratorReset( &iterzassoc_unformal_Z, &pG_assoc_unformal_Z_extent.active );
    while ( (selected = (assoc_unformal_Z *) Escher_IteratorNext( &iterzassoc_unformal_Z )) != 0 ) {
      if ( ( Escher_strcmp( selected->name, "Joe" ) == 0 ) ) {
        z = selected;
        break;
      }
    }
  }
  /* IF ( empty z ) */
  if ( ( 0 == z ) ) {
    /* LOG::LogFailure( message:'test1.Z1:  Failed to select Z.' ) */
    LOG_LogFailure( "test1.Z1:  Failed to select Z." );
  }
  /* SELECT many zs RELATED BY z->Z[R13.buys from] */
  Escher_ClearSet( zs );
  {  if ( 0 != z ) {
  assoc_unformal_ZZ * ZZ_R13_buys_from;
  Escher_Iterator_s iZZ_R13_buys_from;
  Escher_IteratorReset( &iZZ_R13_buys_from, &z->ZZ_R13_buys_from );
  while ( 0 != ( ZZ_R13_buys_from = (assoc_unformal_ZZ *) Escher_IteratorNext( &iZZ_R13_buys_from ) ) ) {
  {assoc_unformal_Z * Z_R13_buys_from = ZZ_R13_buys_from->Z_R13_buys_from;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) zs, Z_R13_buys_from ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) zs, Z_R13_buys_from );
  }}
}}}
  /* IF ( ( cardinality zs < 2 ) ) */
  if ( ( Escher_SetCardinality( zs ) < 2 ) ) {
    /* LOG::LogFailure( message:'test1.Z2:  Could not find Zs.' ) */
    LOG_LogFailure( "test1.Z2:  Could not find Zs." );
  }
  /* SELECT any j FROM INSTANCES OF J */
  j = (assoc_unformal_J *) Escher_SetGetAny( &pG_assoc_unformal_J_extent.active );
  /* j.op() */
  assoc_unformal_J_op_op( j );
  /* SELECT any k FROM INSTANCES OF K */
  k = (assoc_unformal_K *) Escher_SetGetAny( &pG_assoc_unformal_K_extent.active );
  /* k.op() */
  assoc_unformal_K_op_op( k );
  /* SELECT any l FROM INSTANCES OF L */
  l = (assoc_unformal_L *) Escher_SetGetAny( &pG_assoc_unformal_L_extent.active );
  /* l.op() */
  assoc_unformal_L_op_op( l );
  /* LOG::LogSuccess( message:'Made it to the end.' ) */
  LOG_LogSuccess( "Made it to the end." );
  Escher_ClearSet( as );Escher_ClearSet( bbs );Escher_ClearSet( ys );  /* Clear set: friendship */  Escher_ClearSet( cs ); /* cs (C) */  Escher_ClearSet( es ); /* es (E) */  Escher_ClearSet( os ); /* os (O) */  Escher_ClearSet( ns ); /* ns (N) */  Escher_ClearSet( ts ); /* ts (T) */  Escher_ClearSet( xs ); /* xs (X) */  Escher_ClearSet( zs ); /* zs (Z) */

}


/*
 * Domain Function:  setup
 */
void
assoc_unformal_setup()
{
  assoc_unformal_A * a=0; 
  /* SELECT any a FROM INSTANCES OF A */
  a = (assoc_unformal_A *) Escher_SetGetAny( &pG_assoc_unformal_A_extent.active );
  /* IF ( empty a ) */
  if ( ( 0 == a ) ) {
    i_t i; 
    /* ASSIGN i = NVS::format() */
    i = NVS_format();
    /* ASSIGN i = NVS::version(first:1, second:2) */
    i = NVS_version( 1, 2 );
    /* ASSIGN i = NVS::checksum(first:1, second:2) */
    i = NVS_checksum( 1, 2 );
    /* ::do_creates(  ) */
    assoc_unformal_do_creates();
    /* ASSIGN i = PERSIST::commit() */
    i = PERSIST_commit();
  }

}


/*
 * Domain Function:  test2
 */
void
assoc_unformal_test2()
{
  assoc_unformal_A * a; assoc_unformal_B * b; assoc_unformal_C * c; assoc_unformal_D * d; assoc_unformal_Y * y; assoc_unformal_Z * z; assoc_unformal_N * n; 
  /* CREATE OBJECT INSTANCE a OF A */
  a = (assoc_unformal_A *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_A_CLASS_NUMBER );
  /* DELETE OBJECT INSTANCE a */
  if ( 0 == a ) {
    XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) a, assoc_unformal_DOMAIN_ID, assoc_unformal_A_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE a OF A */
  a = (assoc_unformal_A *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_A_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE b OF B */
  b = (assoc_unformal_B *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_B_CLASS_NUMBER );
  /* RELATE a TO b ACROSS R1 */
  assoc_unformal_A_R1_Link( b, a );
  /* CREATE OBJECT INSTANCE c OF C */
  c = (assoc_unformal_C *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_C_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE d OF D */
  d = (assoc_unformal_D *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_D_CLASS_NUMBER );
  /* RELATE c TO d ACROSS R2 */
  assoc_unformal_C_R2_Link( d, c );
  /* CREATE OBJECT INSTANCE y OF Y */
  y = (assoc_unformal_Y *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Y_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE z OF Z */
  z = (assoc_unformal_Z *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Z_CLASS_NUMBER );
  /* UNRELATE c FROM d ACROSS R2 */
  assoc_unformal_C_R2_Unlink( d, c );
  /* UNRELATE a FROM b ACROSS R1 */
  assoc_unformal_A_R1_Unlink( b, a );
  /* DELETE OBJECT INSTANCE a */
  if ( 0 == a ) {
    XTUML_EMPTY_HANDLE_TRACE( "A", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) a, assoc_unformal_DOMAIN_ID, assoc_unformal_A_CLASS_NUMBER );
  /* DELETE OBJECT INSTANCE b */
  if ( 0 == b ) {
    XTUML_EMPTY_HANDLE_TRACE( "B", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) b, assoc_unformal_DOMAIN_ID, assoc_unformal_B_CLASS_NUMBER );
  /* DELETE OBJECT INSTANCE z */
  if ( 0 == z ) {
    XTUML_EMPTY_HANDLE_TRACE( "Z", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) z, assoc_unformal_DOMAIN_ID, assoc_unformal_Z_CLASS_NUMBER );
  /* DELETE OBJECT INSTANCE y */
  if ( 0 == y ) {
    XTUML_EMPTY_HANDLE_TRACE( "Y", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) y, assoc_unformal_DOMAIN_ID, assoc_unformal_Y_CLASS_NUMBER );
  /* DELETE OBJECT INSTANCE c */
  if ( 0 == c ) {
    XTUML_EMPTY_HANDLE_TRACE( "C", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) c, assoc_unformal_DOMAIN_ID, assoc_unformal_C_CLASS_NUMBER );
  /* DELETE OBJECT INSTANCE d */
  if ( 0 == d ) {
    XTUML_EMPTY_HANDLE_TRACE( "D", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) d, assoc_unformal_DOMAIN_ID, assoc_unformal_D_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE n OF N */
  n = (assoc_unformal_N *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_N_CLASS_NUMBER );
  /* DELETE OBJECT INSTANCE n */
  if ( 0 == n ) {
    XTUML_EMPTY_HANDLE_TRACE( "N", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) n, assoc_unformal_DOMAIN_ID, assoc_unformal_N_CLASS_NUMBER );

}


/*
 * Domain Function:  xit
 */
void
assoc_unformal_xit()
{
  i_t i; 
  /* ASSIGN i = PERSIST::commit() */
  i = PERSIST_commit();
  /* ARCH::shutdown(  ) */
  ARCH_shutdown();

}


/*
 * Domain Function:  do_creates
 */
void
assoc_unformal_do_creates()
{
  assoc_unformal_A * a; assoc_unformal_B * b; assoc_unformal_AA * aa1; assoc_unformal_AA * aa2; assoc_unformal_BB * bb1; assoc_unformal_BB * bb2; assoc_unformal_BB * bb3; assoc_unformal_C * c1; assoc_unformal_C * c2; assoc_unformal_C * c3; assoc_unformal_C * c4; assoc_unformal_C * c5; assoc_unformal_D * d1; assoc_unformal_D * d2; assoc_unformal_E * e1; assoc_unformal_E * e0; assoc_unformal_E * e2; assoc_unformal_F * f3; assoc_unformal_F * f2; assoc_unformal_F * f1; assoc_unformal_G * g1; assoc_unformal_G * g2; assoc_unformal_G * g3; assoc_unformal_G * g4; assoc_unformal_H * h1; assoc_unformal_H * h2; assoc_unformal_H * h; assoc_unformal_H * h3; assoc_unformal_H * h4; assoc_unformal_I * i4; assoc_unformal_I * i3; assoc_unformal_I * i2; assoc_unformal_I * i1; assoc_unformal_J * j1; assoc_unformal_K * k1; assoc_unformal_K * k2; assoc_unformal_K * k3; assoc_unformal_L * l2; assoc_unformal_L * l3; assoc_unformal_L * l1; assoc_unformal_O * o1; assoc_unformal_O * o2; assoc_unformal_O * o3; assoc_unformal_O * o4; assoc_unformal_O * o5; assoc_unformal_OO * oo1; assoc_unformal_OO * oo2; assoc_unformal_OO * oo3; assoc_unformal_OO * oo4; assoc_unformal_N * n1; assoc_unformal_N * n2; assoc_unformal_N * n3; assoc_unformal_N * n4; assoc_unformal_N * n5; assoc_unformal_N * n6; assoc_unformal_M * m1; assoc_unformal_M * m2; assoc_unformal_M * m3; assoc_unformal_M * m4; assoc_unformal_M * m5; assoc_unformal_P * p1; assoc_unformal_P * p2; assoc_unformal_P * p3; assoc_unformal_Q * q1; assoc_unformal_Q * q2; assoc_unformal_Q * q3; assoc_unformal_R * r1; assoc_unformal_R * r2; assoc_unformal_R * r3; assoc_unformal_S * s1; assoc_unformal_S * s2; assoc_unformal_T * t1; assoc_unformal_T * t2; assoc_unformal_T * t3; assoc_unformal_T * t4; assoc_unformal_T * t5; assoc_unformal_U * u5; assoc_unformal_U * u4; assoc_unformal_U * u3; assoc_unformal_U * u2; assoc_unformal_U * u1; assoc_unformal_W * w1; assoc_unformal_W * w2; assoc_unformal_W * w3; assoc_unformal_W * w4; assoc_unformal_V * v1; assoc_unformal_V * v2; assoc_unformal_X * x1; assoc_unformal_X * x2; assoc_unformal_X * x3; assoc_unformal_X * x4; assoc_unformal_X * x5; assoc_unformal_X * x6; assoc_unformal_Y * y1; assoc_unformal_Y * y2; assoc_unformal_Y * y3; assoc_unformal_Y * y4; assoc_unformal_Y * y5; assoc_unformal_Y * y6; assoc_unformal_Y * y7; assoc_unformal_Y * y8; assoc_unformal_Y * y9; assoc_unformal_Z * z1; assoc_unformal_Z * z2; assoc_unformal_Z * z3; assoc_unformal_ZZ * zz1; assoc_unformal_ZZ * zz2; assoc_unformal_ZZ * zz3; assoc_unformal_ZZ * zz4; assoc_unformal_ZZ * zz5; assoc_unformal_ZZ * zz6; assoc_unformal_ZZ * zz7; 
  /* CREATE OBJECT INSTANCE a OF A */
  a = (assoc_unformal_A *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_A_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE a OF A */
  a = (assoc_unformal_A *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_A_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE a OF A */
  a = (assoc_unformal_A *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_A_CLASS_NUMBER );
  /* ASSIGN a.i = 1 */
  a->i = 1;
  /* CREATE OBJECT INSTANCE b OF B */
  b = (assoc_unformal_B *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_B_CLASS_NUMBER );
  /* ASSIGN b.i = 2 */
  b->i = 2;
  /* RELATE a TO b ACROSS R1 */
  assoc_unformal_A_R1_Link( b, a );
  /* CREATE OBJECT INSTANCE a OF A */
  a = (assoc_unformal_A *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_A_CLASS_NUMBER );
  /* ASSIGN a.i = 3 */
  a->i = 3;
  /* CREATE OBJECT INSTANCE b OF B */
  b = (assoc_unformal_B *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_B_CLASS_NUMBER );
  /* ASSIGN b.i = 4 */
  b->i = 4;
  /* RELATE b TO a ACROSS R1 */
  assoc_unformal_A_R1_Link( b, a );
  /* CREATE OBJECT INSTANCE a OF A */
  a = (assoc_unformal_A *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_A_CLASS_NUMBER );
  /* ASSIGN a.i = 5 */
  a->i = 5;
  /* CREATE OBJECT INSTANCE b OF B */
  b = (assoc_unformal_B *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_B_CLASS_NUMBER );
  /* ASSIGN b.i = 6 */
  b->i = 6;
  /* RELATE a TO b ACROSS R1 */
  assoc_unformal_A_R1_Link( b, a );
  /* CREATE OBJECT INSTANCE b OF B */
  b = (assoc_unformal_B *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_B_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE aa1 OF AA */
  aa1 = (assoc_unformal_AA *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_AA_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE aa2 OF AA */
  aa2 = (assoc_unformal_AA *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_AA_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE bb1 OF BB */
  bb1 = (assoc_unformal_BB *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_BB_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE bb2 OF BB */
  bb2 = (assoc_unformal_BB *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_BB_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE bb3 OF BB */
  bb3 = (assoc_unformal_BB *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_BB_CLASS_NUMBER );
  /* RELATE aa1 TO bb1 ACROSS R14 */
  assoc_unformal_AA_R14_Link( bb1, aa1 );
  /* RELATE bb1 TO aa2 ACROSS R14 */
  assoc_unformal_AA_R14_Link( bb1, aa2 );
  /* RELATE aa2 TO bb2 ACROSS R14 */
  assoc_unformal_AA_R14_Link( bb2, aa2 );
  /* CREATE OBJECT INSTANCE c1 OF C */
  c1 = (assoc_unformal_C *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_C_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE c2 OF C */
  c2 = (assoc_unformal_C *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_C_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE c3 OF C */
  c3 = (assoc_unformal_C *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_C_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE c4 OF C */
  c4 = (assoc_unformal_C *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_C_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE c5 OF C */
  c5 = (assoc_unformal_C *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_C_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE d1 OF D */
  d1 = (assoc_unformal_D *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_D_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE d2 OF D */
  d2 = (assoc_unformal_D *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_D_CLASS_NUMBER );
  /* ASSIGN d2.name = 'DeeTwo' */
  Escher_strcpy( d2->name, "DeeTwo" );
  /* RELATE c1 TO d2 ACROSS R2 */
  assoc_unformal_C_R2_Link( d2, c1 );
  /* RELATE d2 TO c2 ACROSS R2 */
  assoc_unformal_C_R2_Link( d2, c2 );
  /* RELATE d2 TO c3 ACROSS R2 */
  assoc_unformal_C_R2_Link( d2, c3 );
  /* RELATE c4 TO d2 ACROSS R2 */
  assoc_unformal_C_R2_Link( d2, c4 );
  /* CREATE OBJECT INSTANCE e1 OF E */
  e1 = (assoc_unformal_E *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_E_CLASS_NUMBER );
  /* ASSIGN e1.eID = 1 */
  e1->eID = 1;
  /* ASSIGN e1.ratio = 0.314 */
  e1->ratio = 0.314;
  /* CREATE OBJECT INSTANCE e0 OF E */
  e0 = (assoc_unformal_E *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_E_CLASS_NUMBER );
  /* ASSIGN e1.eID = 100 */
  e1->eID = 100;
  /* ASSIGN e1.ratio = 0.1 */
  e1->ratio = 0.1;
  /* CREATE OBJECT INSTANCE e2 OF E */
  e2 = (assoc_unformal_E *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_E_CLASS_NUMBER );
  /* ASSIGN e2.eID = 2 */
  e2->eID = 2;
  /* ASSIGN e2.ratio = 2.718 */
  e2->ratio = 2.718;
  /* CREATE OBJECT INSTANCE f3 OF F */
  f3 = (assoc_unformal_F *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_F_CLASS_NUMBER );
  /* ASSIGN f3.fID = 3 */
  f3->fID = 3;
  /* ASSIGN f3.enabled = TRUE */
  f3->enabled = TRUE;
  /* CREATE OBJECT INSTANCE f2 OF F */
  f2 = (assoc_unformal_F *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_F_CLASS_NUMBER );
  /* ASSIGN f2.fID = 2 */
  f2->fID = 2;
  /* ASSIGN f2.enabled = FALSE */
  f2->enabled = FALSE;
  /* CREATE OBJECT INSTANCE f1 OF F */
  f1 = (assoc_unformal_F *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_F_CLASS_NUMBER );
  /* ASSIGN f1.fID = 1 */
  f1->fID = 1;
  /* ASSIGN f1.enabled = TRUE */
  f1->enabled = TRUE;
  /* CREATE OBJECT INSTANCE g1 OF G */
  g1 = (assoc_unformal_G *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_G_CLASS_NUMBER );
  /* ASSIGN g1.gID = 1 */
  g1->gID = 1;
  /* CREATE OBJECT INSTANCE g2 OF G */
  g2 = (assoc_unformal_G *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_G_CLASS_NUMBER );
  /* ASSIGN g2.gID = 2 */
  g2->gID = 2;
  /* CREATE OBJECT INSTANCE g3 OF G */
  g3 = (assoc_unformal_G *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_G_CLASS_NUMBER );
  /* ASSIGN g3.gID = 3 */
  g3->gID = 3;
  /* CREATE OBJECT INSTANCE g4 OF G */
  g4 = (assoc_unformal_G *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_G_CLASS_NUMBER );
  /* ASSIGN g4.gID = 4 */
  g4->gID = 4;
  /* RELATE e1 TO f1 ACROSS R3 USING g1 */
  assoc_unformal_G_R3_Link( f1, e1, g1 );
  /* RELATE f2 TO e1 ACROSS R3 USING g2 */
  assoc_unformal_G_R3_Link( f2, e1, g2 );
  /* RELATE f3 TO e2 ACROSS R3 USING g3 */
  assoc_unformal_G_R3_Link( f3, e2, g3 );
  /* RELATE e1 TO f3 ACROSS R3 USING g4 */
  assoc_unformal_G_R3_Link( f3, e1, g4 );
  /* CREATE OBJECT INSTANCE h1 OF H */
  h1 = (assoc_unformal_H *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_H_CLASS_NUMBER );
  /* ASSIGN h1.hID = 1 */
  h1->hID = 1;
  /* CREATE OBJECT INSTANCE h2 OF H */
  h2 = (assoc_unformal_H *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_H_CLASS_NUMBER );
  /* ASSIGN h2.hID = 2 */
  h2->hID = 2;
  /* CREATE OBJECT INSTANCE h OF H */
  h = (assoc_unformal_H *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_H_CLASS_NUMBER );
  /* ASSIGN h.hID = 99 */
  h->hID = 99;
  /* CREATE OBJECT INSTANCE h3 OF H */
  h3 = (assoc_unformal_H *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_H_CLASS_NUMBER );
  /* ASSIGN h3.hID = 3 */
  h3->hID = 3;
  /* CREATE OBJECT INSTANCE h4 OF H */
  h4 = (assoc_unformal_H *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_H_CLASS_NUMBER );
  /* ASSIGN h4.hID = 4 */
  h4->hID = 4;
  /* RELATE h1 TO h2 ACROSS R4 */
  assoc_unformal_H_R4_Link_precedes( h1, h2 );
  /* RELATE h2 TO h3 ACROSS R4 */
  assoc_unformal_H_R4_Link_precedes( h2, h3 );
  /* RELATE h4 TO h3 ACROSS R4 */
  assoc_unformal_H_R4_Link_follows( h4, h3 );
  /* CREATE OBJECT INSTANCE i4 OF I */
  i4 = (assoc_unformal_I *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_I_CLASS_NUMBER );
  /* ASSIGN i4.iID = 400 */
  i4->iID = 400;
  /* ASSIGN i4.common = 400 */
  i4->common = 400;
  /* CREATE OBJECT INSTANCE i3 OF I */
  i3 = (assoc_unformal_I *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_I_CLASS_NUMBER );
  /* ASSIGN i3.iID = 300 */
  i3->iID = 300;
  /* ASSIGN i3.common = 300 */
  i3->common = 300;
  /* CREATE OBJECT INSTANCE i2 OF I */
  i2 = (assoc_unformal_I *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_I_CLASS_NUMBER );
  /* ASSIGN i2.iID = 200 */
  i2->iID = 200;
  /* ASSIGN i2.common = 200 */
  i2->common = 200;
  /* CREATE OBJECT INSTANCE i1 OF I */
  i1 = (assoc_unformal_I *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_I_CLASS_NUMBER );
  /* ASSIGN i1.iID = 100 */
  i1->iID = 100;
  /* ASSIGN i1.common = 100 */
  i1->common = 100;
  /* CREATE OBJECT INSTANCE j1 OF J */
  j1 = (assoc_unformal_J *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_J_CLASS_NUMBER );
  /* ASSIGN j1.specialJ = 2 */
  j1->specialJ = 2;
  /* CREATE OBJECT INSTANCE k1 OF K */
  k1 = (assoc_unformal_K *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_K_CLASS_NUMBER );
  /* ASSIGN k1.kID = 11 */
  k1->kID = 11;
  /* ASSIGN k1.specialcommon = 11 */
  k1->specialcommon = 11;
  /* CREATE OBJECT INSTANCE k2 OF K */
  k2 = (assoc_unformal_K *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_K_CLASS_NUMBER );
  /* ASSIGN k2.kID = 22 */
  k2->kID = 22;
  /* ASSIGN k2.specialcommon = 22 */
  k2->specialcommon = 22;
  /* CREATE OBJECT INSTANCE k3 OF K */
  k3 = (assoc_unformal_K *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_K_CLASS_NUMBER );
  /* ASSIGN k3.kID = 33 */
  k3->kID = 33;
  /* ASSIGN k3.specialcommon = 33 */
  k3->specialcommon = 33;
  /* CREATE OBJECT INSTANCE l2 OF L */
  l2 = (assoc_unformal_L *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_L_CLASS_NUMBER );
  /* ASSIGN l2.lID = 222 */
  l2->lID = 222;
  /* ASSIGN l2.specialL = 222 */
  l2->specialL = 222;
  /* CREATE OBJECT INSTANCE l3 OF L */
  l3 = (assoc_unformal_L *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_L_CLASS_NUMBER );
  /* ASSIGN l3.lID = 333 */
  l3->lID = 333;
  /* ASSIGN l3.specialL = 333 */
  l3->specialL = 333;
  /* CREATE OBJECT INSTANCE l1 OF L */
  l1 = (assoc_unformal_L *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_L_CLASS_NUMBER );
  /* ASSIGN l1.lID = 111 */
  l1->lID = 111;
  /* ASSIGN l1.specialL = 111 */
  l1->specialL = 111;
  /* RELATE i1 TO j1 ACROSS R5 */
  assoc_unformal_J_R5_Link( i1, j1 );
  /* RELATE i2 TO k3 ACROSS R5 */
  assoc_unformal_K_R5_Link( i2, k3 );
  /* RELATE k2 TO i3 ACROSS R5 */
  assoc_unformal_K_R5_Link( i3, k2 );
  /* RELATE i4 TO k1 ACROSS R5 */
  assoc_unformal_K_R5_Link( i4, k1 );
  /* RELATE l1 TO k1 ACROSS R6 */
  assoc_unformal_L_R6_Link( k1, l1 );
  /* RELATE l3 TO k2 ACROSS R6 */
  assoc_unformal_L_R6_Link( k2, l3 );
  /* RELATE k3 TO l2 ACROSS R6 */
  assoc_unformal_L_R6_Link( k3, l2 );
  /* CREATE OBJECT INSTANCE o1 OF O */
  o1 = (assoc_unformal_O *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_O_CLASS_NUMBER );
  /* ASSIGN o1.voo = 'Kenny' */
  Escher_strcpy( o1->voo, "Kenny" );
  /* CREATE OBJECT INSTANCE o2 OF O */
  o2 = (assoc_unformal_O *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_O_CLASS_NUMBER );
  /* ASSIGN o2.voo = 'Cort' */
  Escher_strcpy( o2->voo, "Cort" );
  /* CREATE OBJECT INSTANCE o3 OF O */
  o3 = (assoc_unformal_O *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_O_CLASS_NUMBER );
  /* ASSIGN o3.voo = 'Amy' */
  Escher_strcpy( o3->voo, "Amy" );
  /* CREATE OBJECT INSTANCE o4 OF O */
  o4 = (assoc_unformal_O *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_O_CLASS_NUMBER );
  /* ASSIGN o4.voo = 'Ellen' */
  Escher_strcpy( o4->voo, "Ellen" );
  /* CREATE OBJECT INSTANCE o5 OF O */
  o5 = (assoc_unformal_O *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_O_CLASS_NUMBER );
  /* ASSIGN o5.voo = 'Brad' */
  Escher_strcpy( o5->voo, "Brad" );
  /* RELATE o1 TO o2 ACROSS R8 */
  assoc_unformal_O_R8_Link_teaches( o1, o2 );
  /* RELATE o2 TO o3 ACROSS R8 */
  assoc_unformal_O_R8_Link_teaches( o2, o3 );
  /* RELATE o4 TO o2 ACROSS R8 */
  assoc_unformal_O_R8_Link_learns_from( o4, o2 );
  /* RELATE o5 TO o2 ACROSS R8 */
  assoc_unformal_O_R8_Link_learns_from( o5, o2 );
  /* CREATE OBJECT INSTANCE oo1 OF OO */
  oo1 = (assoc_unformal_OO *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_OO_CLASS_NUMBER );
  /* ASSIGN oo1.number = 1 */
  oo1->number = 1;
  /* CREATE OBJECT INSTANCE oo2 OF OO */
  oo2 = (assoc_unformal_OO *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_OO_CLASS_NUMBER );
  /* ASSIGN oo2.number = 2 */
  oo2->number = 2;
  /* CREATE OBJECT INSTANCE oo3 OF OO */
  oo3 = (assoc_unformal_OO *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_OO_CLASS_NUMBER );
  /* ASSIGN oo3.number = 3 */
  oo3->number = 3;
  /* CREATE OBJECT INSTANCE oo4 OF OO */
  oo4 = (assoc_unformal_OO *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_OO_CLASS_NUMBER );
  /* ASSIGN oo4.number = 4 */
  oo4->number = 4;
  /* RELATE oo1 TO oo2 ACROSS R15 */
  assoc_unformal_OO_R15_Link_right( oo1, oo2 );
  /* RELATE oo3 TO oo2 ACROSS R15 */
  assoc_unformal_OO_R15_Link_left( oo3, oo2 );
  /* RELATE oo3 TO oo4 ACROSS R15 */
  assoc_unformal_OO_R15_Link_right( oo3, oo4 );
  /* CREATE OBJECT INSTANCE n1 OF N */
  n1 = (assoc_unformal_N *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_N_CLASS_NUMBER );
  /* ASSIGN n1.name = 'Pete' */
  Escher_strcpy( n1->name, "Pete" );
  /* CREATE OBJECT INSTANCE n2 OF N */
  n2 = (assoc_unformal_N *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_N_CLASS_NUMBER );
  /* ASSIGN n2.name = 'Dave' */
  Escher_strcpy( n2->name, "Dave" );
  /* CREATE OBJECT INSTANCE n3 OF N */
  n3 = (assoc_unformal_N *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_N_CLASS_NUMBER );
  /* ASSIGN n3.name = 'Alex' */
  Escher_strcpy( n3->name, "Alex" );
  /* CREATE OBJECT INSTANCE n4 OF N */
  n4 = (assoc_unformal_N *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_N_CLASS_NUMBER );
  /* ASSIGN n4.name = 'Jenn' */
  Escher_strcpy( n4->name, "Jenn" );
  /* CREATE OBJECT INSTANCE n5 OF N */
  n5 = (assoc_unformal_N *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_N_CLASS_NUMBER );
  /* ASSIGN n5.name = 'Cale' */
  Escher_strcpy( n5->name, "Cale" );
  /* CREATE OBJECT INSTANCE n6 OF N */
  n6 = (assoc_unformal_N *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_N_CLASS_NUMBER );
  /* ASSIGN n6.name = 'Chris' */
  Escher_strcpy( n6->name, "Chris" );
  /* CREATE OBJECT INSTANCE m1 OF M */
  m1 = (assoc_unformal_M *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_M_CLASS_NUMBER );
  /* ASSIGN m1.department = 'SW' */
  Escher_strcpy( m1->department, "SW" );
  /* CREATE OBJECT INSTANCE m2 OF M */
  m2 = (assoc_unformal_M *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_M_CLASS_NUMBER );
  /* ASSIGN m2.department = 'SW' */
  Escher_strcpy( m2->department, "SW" );
  /* CREATE OBJECT INSTANCE m3 OF M */
  m3 = (assoc_unformal_M *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_M_CLASS_NUMBER );
  /* ASSIGN m3.department = 'HW' */
  Escher_strcpy( m3->department, "HW" );
  /* CREATE OBJECT INSTANCE m4 OF M */
  m4 = (assoc_unformal_M *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_M_CLASS_NUMBER );
  /* ASSIGN m4.department = 'MEC' */
  Escher_strcpy( m4->department, "MEC" );
  /* CREATE OBJECT INSTANCE m5 OF M */
  m5 = (assoc_unformal_M *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_M_CLASS_NUMBER );
  /* ASSIGN m5.department = 'MEC' */
  Escher_strcpy( m5->department, "MEC" );
  /* RELATE n1 TO n3 ACROSS R7 USING m1 */
  assoc_unformal_M_R7_Link_manages( n1, n3, m1 );
  /* RELATE n1 TO n4 ACROSS R7 USING m2 */
  assoc_unformal_M_R7_Link_manages( n1, n4, m2 );
  /* RELATE n5 TO n2 ACROSS R7 USING m3 */
  assoc_unformal_M_R7_Link_works_for( n5, n2, m3 );
  /* RELATE n1 TO n6 ACROSS R7 USING m4 */
  assoc_unformal_M_R7_Link_works_for( n1, n6, m4 );
  /* RELATE n6 TO n2 ACROSS R7 USING m5 */
  assoc_unformal_M_R7_Link_manages( n6, n2, m5 );
  /* CREATE OBJECT INSTANCE p1 OF P */
  p1 = (assoc_unformal_P *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_P_CLASS_NUMBER );
  /* ASSIGN p1.eyedee = 'Rox' */
  Escher_strcpy( p1->eyedee, "Rox" );
  /* CREATE OBJECT INSTANCE p2 OF P */
  p2 = (assoc_unformal_P *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_P_CLASS_NUMBER );
  /* ASSIGN p2.eyedee = 'Bita' */
  Escher_strcpy( p2->eyedee, "Bita" );
  /* CREATE OBJECT INSTANCE p3 OF P */
  p3 = (assoc_unformal_P *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_P_CLASS_NUMBER );
  /* ASSIGN p3.eyedee = 'Tina' */
  Escher_strcpy( p3->eyedee, "Tina" );
  /* CREATE OBJECT INSTANCE q1 OF Q */
  q1 = (assoc_unformal_Q *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Q_CLASS_NUMBER );
  /* ASSIGN q1.deeeye = 'Shane' */
  Escher_strcpy( q1->deeeye, "Shane" );
  /* CREATE OBJECT INSTANCE q2 OF Q */
  q2 = (assoc_unformal_Q *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Q_CLASS_NUMBER );
  /* ASSIGN q2.deeeye = 'Rusty' */
  Escher_strcpy( q2->deeeye, "Rusty" );
  /* CREATE OBJECT INSTANCE q3 OF Q */
  q3 = (assoc_unformal_Q *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Q_CLASS_NUMBER );
  /* ASSIGN q3.deeeye = 'Cort' */
  Escher_strcpy( q3->deeeye, "Cort" );
  /* CREATE OBJECT INSTANCE r1 OF R */
  r1 = (assoc_unformal_R *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_R_CLASS_NUMBER );
  /* ASSIGN r1.city = 'Indianapolis' */
  Escher_strcpy( r1->city, "Indianapolis" );
  /* CREATE OBJECT INSTANCE r2 OF R */
  r2 = (assoc_unformal_R *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_R_CLASS_NUMBER );
  /* ASSIGN r2.city = 'Lockport' */
  Escher_strcpy( r2->city, "Lockport" );
  /* CREATE OBJECT INSTANCE r3 OF R */
  r3 = (assoc_unformal_R *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_R_CLASS_NUMBER );
  /* ASSIGN r3.city = 'Battleground' */
  Escher_strcpy( r3->city, "Battleground" );
  /* RELATE p1 TO q3 ACROSS R9 USING r1 */
  assoc_unformal_R_R9_Link( q3, p1, r1 );
  /* RELATE q2 TO p2 ACROSS R9 USING r3 */
  assoc_unformal_R_R9_Link( q2, p2, r3 );
  /* RELATE p3 TO q1 ACROSS R9 USING r2 */
  assoc_unformal_R_R9_Link( q1, p3, r2 );
  /* CREATE OBJECT INSTANCE s1 OF S */
  s1 = (assoc_unformal_S *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_S_CLASS_NUMBER );
  /* ASSIGN s1.s = 'Rox' */
  Escher_strcpy( s1->s, "Rox" );
  /* CREATE OBJECT INSTANCE s2 OF S */
  s2 = (assoc_unformal_S *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_S_CLASS_NUMBER );
  /* ASSIGN s2.s = 'Jacqui' */
  Escher_strcpy( s2->s, "Jacqui" );
  /* CREATE OBJECT INSTANCE t1 OF T */
  t1 = (assoc_unformal_T *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_T_CLASS_NUMBER );
  /* ASSIGN t1.t = 'Clare' */
  Escher_strcpy( t1->t, "Clare" );
  /* CREATE OBJECT INSTANCE t2 OF T */
  t2 = (assoc_unformal_T *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_T_CLASS_NUMBER );
  /* ASSIGN t2.t = 'Katrina' */
  Escher_strcpy( t2->t, "Katrina" );
  /* CREATE OBJECT INSTANCE t3 OF T */
  t3 = (assoc_unformal_T *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_T_CLASS_NUMBER );
  /* ASSIGN t3.t = 'Colleen' */
  Escher_strcpy( t3->t, "Colleen" );
  /* CREATE OBJECT INSTANCE t4 OF T */
  t4 = (assoc_unformal_T *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_T_CLASS_NUMBER );
  /* ASSIGN t4.t = 'Hannah' */
  Escher_strcpy( t4->t, "Hannah" );
  /* CREATE OBJECT INSTANCE t5 OF T */
  t5 = (assoc_unformal_T *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_T_CLASS_NUMBER );
  /* ASSIGN t5.t = 'Ruby' */
  Escher_strcpy( t5->t, "Ruby" );
  /* CREATE OBJECT INSTANCE u5 OF U */
  u5 = (assoc_unformal_U *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_U_CLASS_NUMBER );
  /* ASSIGN u5.s = 'Oct' */
  Escher_strcpy( u5->s, "Oct" );
  /* CREATE OBJECT INSTANCE u4 OF U */
  u4 = (assoc_unformal_U *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_U_CLASS_NUMBER );
  /* ASSIGN u4.s = 'Aug' */
  Escher_strcpy( u4->s, "Aug" );
  /* CREATE OBJECT INSTANCE u3 OF U */
  u3 = (assoc_unformal_U *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_U_CLASS_NUMBER );
  /* ASSIGN u3.s = 'Apr' */
  Escher_strcpy( u3->s, "Apr" );
  /* CREATE OBJECT INSTANCE u2 OF U */
  u2 = (assoc_unformal_U *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_U_CLASS_NUMBER );
  /* ASSIGN u2.s = 'Dec' */
  Escher_strcpy( u2->s, "Dec" );
  /* CREATE OBJECT INSTANCE u1 OF U */
  u1 = (assoc_unformal_U *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_U_CLASS_NUMBER );
  /* ASSIGN u1.s = 'Nov' */
  Escher_strcpy( u1->s, "Nov" );
  /* RELATE s1 TO t4 ACROSS R10 USING u2 */
  assoc_unformal_U_R10_Link( s1, t4, u2 );
  /* RELATE s1 TO t5 ACROSS R10 USING u1 */
  assoc_unformal_U_R10_Link( s1, t5, u1 );
  /* RELATE t1 TO s2 ACROSS R10 USING u5 */
  assoc_unformal_U_R10_Link( s2, t1, u5 );
  /* RELATE t2 TO s2 ACROSS R10 USING u4 */
  assoc_unformal_U_R10_Link( s2, t2, u4 );
  /* RELATE s2 TO t3 ACROSS R10 USING u3 */
  assoc_unformal_U_R10_Link( s2, t3, u3 );
  /* CREATE OBJECT INSTANCE w1 OF W */
  w1 = (assoc_unformal_W *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_W_CLASS_NUMBER );
  /* ASSIGN w1.name = 'Cort' */
  Escher_strcpy( w1->name, "Cort" );
  /* CREATE OBJECT INSTANCE w2 OF W */
  w2 = (assoc_unformal_W *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_W_CLASS_NUMBER );
  /* ASSIGN w2.name = 'Rox' */
  Escher_strcpy( w2->name, "Rox" );
  /* CREATE OBJECT INSTANCE w3 OF W */
  w3 = (assoc_unformal_W *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_W_CLASS_NUMBER );
  /* ASSIGN w3.name = 'Sean' */
  Escher_strcpy( w3->name, "Sean" );
  /* CREATE OBJECT INSTANCE w4 OF W */
  w4 = (assoc_unformal_W *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_W_CLASS_NUMBER );
  /* ASSIGN w4.name = 'Jacqui' */
  Escher_strcpy( w4->name, "Jacqui" );
  /* CREATE OBJECT INSTANCE v1 OF V */
  v1 = (assoc_unformal_V *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_V_CLASS_NUMBER );
  v1->vID = (Escher_UniqueID_t) v1;
  /* ASSIGN v1.year = 1988 */
  v1->year = 1988;
  /* CREATE OBJECT INSTANCE v2 OF V */
  v2 = (assoc_unformal_V *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_V_CLASS_NUMBER );
  v2->vID = (Escher_UniqueID_t) v2;
  /* ASSIGN v2.year = 1990 */
  v2->year = 1990;
  /* RELATE w1 TO w2 ACROSS R11 USING v1 */
  assoc_unformal_V_R11_Link_is_husband_of( w1, w2, v1 );
  /* RELATE w4 TO w3 ACROSS R11 USING v2 */
  assoc_unformal_V_R11_Link_is_wife_of( w4, w3, v2 );
  /* CREATE OBJECT INSTANCE x1 OF X */
  x1 = (assoc_unformal_X *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_X_CLASS_NUMBER );
  /* ASSIGN x1.name = 'Cort' */
  Escher_strcpy( x1->name, "Cort" );
  /* ASSIGN x1.age = 39 */
  x1->age = 39;
  /* CREATE OBJECT INSTANCE x2 OF X */
  x2 = (assoc_unformal_X *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_X_CLASS_NUMBER );
  /* ASSIGN x2.name = 'Rox' */
  Escher_strcpy( x2->name, "Rox" );
  /* ASSIGN x2.age = 38 */
  x2->age = 38;
  /* CREATE OBJECT INSTANCE x3 OF X */
  x3 = (assoc_unformal_X *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_X_CLASS_NUMBER );
  /* ASSIGN x3.name = 'Sevina' */
  Escher_strcpy( x3->name, "Sevina" );
  /* ASSIGN x3.age = 35 */
  x3->age = 35;
  /* CREATE OBJECT INSTANCE x4 OF X */
  x4 = (assoc_unformal_X *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_X_CLASS_NUMBER );
  /* ASSIGN x4.name = 'Joe' */
  Escher_strcpy( x4->name, "Joe" );
  /* ASSIGN x4.age = 43 */
  x4->age = 43;
  /* CREATE OBJECT INSTANCE x5 OF X */
  x5 = (assoc_unformal_X *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_X_CLASS_NUMBER );
  /* ASSIGN x5.name = 'Scott' */
  Escher_strcpy( x5->name, "Scott" );
  /* ASSIGN x5.age = 42 */
  x5->age = 42;
  /* CREATE OBJECT INSTANCE x6 OF X */
  x6 = (assoc_unformal_X *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_X_CLASS_NUMBER );
  /* ASSIGN x6.name = 'Jason' */
  Escher_strcpy( x6->name, "Jason" );
  /* ASSIGN x6.age = 31 */
  x6->age = 31;
  /* CREATE OBJECT INSTANCE y1 OF Y */
  y1 = (assoc_unformal_Y *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Y_CLASS_NUMBER );
  /* ASSIGN y1.duration = 1 */
  y1->duration = 1;
  /* ASSIGN y1.closeness = 10 */
  y1->closeness = 10;
  /* CREATE OBJECT INSTANCE y2 OF Y */
  y2 = (assoc_unformal_Y *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Y_CLASS_NUMBER );
  /* ASSIGN y2.duration = 2 */
  y2->duration = 2;
  /* ASSIGN y2.closeness = 20 */
  y2->closeness = 20;
  /* CREATE OBJECT INSTANCE y3 OF Y */
  y3 = (assoc_unformal_Y *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Y_CLASS_NUMBER );
  /* ASSIGN y3.duration = 3 */
  y3->duration = 3;
  /* ASSIGN y3.closeness = 30 */
  y3->closeness = 30;
  /* CREATE OBJECT INSTANCE y4 OF Y */
  y4 = (assoc_unformal_Y *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Y_CLASS_NUMBER );
  /* ASSIGN y4.duration = 4 */
  y4->duration = 4;
  /* ASSIGN y4.closeness = 40 */
  y4->closeness = 40;
  /* CREATE OBJECT INSTANCE y5 OF Y */
  y5 = (assoc_unformal_Y *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Y_CLASS_NUMBER );
  /* ASSIGN y5.duration = 5 */
  y5->duration = 5;
  /* ASSIGN y5.closeness = 50 */
  y5->closeness = 50;
  /* CREATE OBJECT INSTANCE y6 OF Y */
  y6 = (assoc_unformal_Y *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Y_CLASS_NUMBER );
  /* ASSIGN y6.duration = 6 */
  y6->duration = 6;
  /* ASSIGN y6.closeness = 60 */
  y6->closeness = 60;
  /* CREATE OBJECT INSTANCE y7 OF Y */
  y7 = (assoc_unformal_Y *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Y_CLASS_NUMBER );
  /* ASSIGN y7.duration = 7 */
  y7->duration = 7;
  /* ASSIGN y7.closeness = 70 */
  y7->closeness = 70;
  /* CREATE OBJECT INSTANCE y8 OF Y */
  y8 = (assoc_unformal_Y *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Y_CLASS_NUMBER );
  /* ASSIGN y8.duration = 8 */
  y8->duration = 8;
  /* ASSIGN y8.closeness = 80 */
  y8->closeness = 80;
  /* CREATE OBJECT INSTANCE y9 OF Y */
  y9 = (assoc_unformal_Y *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Y_CLASS_NUMBER );
  /* ASSIGN y9.duration = 9 */
  y9->duration = 9;
  /* ASSIGN y9.closeness = 90 */
  y9->closeness = 90;
  /* RELATE x1 TO x2 ACROSS R12 USING y1 */
  assoc_unformal_Y_R12_Link_is_buddy_of( x1, x2, y1 );
  /* RELATE x1 TO x3 ACROSS R12 USING y2 */
  assoc_unformal_Y_R12_Link_is_pal_of( x1, x3, y2 );
  /* RELATE x4 TO x1 ACROSS R12 USING y3 */
  assoc_unformal_Y_R12_Link_is_buddy_of( x4, x1, y3 );
  /* RELATE x5 TO x1 ACROSS R12 USING y4 */
  assoc_unformal_Y_R12_Link_is_pal_of( x5, x1, y4 );
  /* RELATE x1 TO x6 ACROSS R12 USING y5 */
  assoc_unformal_Y_R12_Link_is_buddy_of( x1, x6, y5 );
  /* RELATE x3 TO x2 ACROSS R12 USING y6 */
  assoc_unformal_Y_R12_Link_is_pal_of( x3, x2, y6 );
  /* RELATE x4 TO x5 ACROSS R12 USING y7 */
  assoc_unformal_Y_R12_Link_is_buddy_of( x4, x5, y7 );
  /* RELATE x4 TO x6 ACROSS R12 USING y8 */
  assoc_unformal_Y_R12_Link_is_pal_of( x4, x6, y8 );
  /* RELATE x6 TO x5 ACROSS R12 USING y9 */
  assoc_unformal_Y_R12_Link_is_buddy_of( x6, x5, y9 );
  /* CREATE OBJECT INSTANCE z1 OF Z */
  z1 = (assoc_unformal_Z *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Z_CLASS_NUMBER );
  /* ASSIGN z1.name = 'Joe' */
  Escher_strcpy( z1->name, "Joe" );
  /* ASSIGN z1.worth = 1 */
  z1->worth = 1;
  /* CREATE OBJECT INSTANCE z2 OF Z */
  z2 = (assoc_unformal_Z *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Z_CLASS_NUMBER );
  /* ASSIGN z2.name = 'Pat' */
  Escher_strcpy( z2->name, "Pat" );
  /* ASSIGN z2.worth = 2 */
  z2->worth = 2;
  /* CREATE OBJECT INSTANCE z3 OF Z */
  z3 = (assoc_unformal_Z *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_Z_CLASS_NUMBER );
  /* ASSIGN z3.name = 'Jason' */
  Escher_strcpy( z3->name, "Jason" );
  /* ASSIGN z3.worth = 3 */
  z3->worth = 3;
  /* CREATE OBJECT INSTANCE zz1 OF ZZ */
  zz1 = (assoc_unformal_ZZ *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_ZZ_CLASS_NUMBER );
  /* ASSIGN zz1.xaction = 1 */
  zz1->xaction = 1;
  /* ASSIGN zz1.value = - 1 */
  zz1->value = -1;
  /* CREATE OBJECT INSTANCE zz2 OF ZZ */
  zz2 = (assoc_unformal_ZZ *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_ZZ_CLASS_NUMBER );
  /* ASSIGN zz2.xaction = 2 */
  zz2->xaction = 2;
  /* ASSIGN zz2.value = 2 */
  zz2->value = 2;
  /* CREATE OBJECT INSTANCE zz3 OF ZZ */
  zz3 = (assoc_unformal_ZZ *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_ZZ_CLASS_NUMBER );
  /* ASSIGN zz3.xaction = 3 */
  zz3->xaction = 3;
  /* ASSIGN zz3.value = - 3 */
  zz3->value = -3;
  /* CREATE OBJECT INSTANCE zz4 OF ZZ */
  zz4 = (assoc_unformal_ZZ *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_ZZ_CLASS_NUMBER );
  /* ASSIGN zz4.xaction = 4 */
  zz4->xaction = 4;
  /* ASSIGN zz4.value = 4 */
  zz4->value = 4;
  /* CREATE OBJECT INSTANCE zz5 OF ZZ */
  zz5 = (assoc_unformal_ZZ *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_ZZ_CLASS_NUMBER );
  /* ASSIGN zz5.xaction = 5 */
  zz5->xaction = 5;
  /* ASSIGN zz5.value = - 5 */
  zz5->value = -5;
  /* CREATE OBJECT INSTANCE zz6 OF ZZ */
  zz6 = (assoc_unformal_ZZ *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_ZZ_CLASS_NUMBER );
  /* ASSIGN zz6.xaction = 6 */
  zz6->xaction = 6;
  /* ASSIGN zz6.value = 6 */
  zz6->value = 6;
  /* CREATE OBJECT INSTANCE zz7 OF ZZ */
  zz7 = (assoc_unformal_ZZ *) Escher_CreateInstance( assoc_unformal_DOMAIN_ID, assoc_unformal_ZZ_CLASS_NUMBER );
  /* ASSIGN zz7.xaction = 7 */
  zz7->xaction = 7;
  /* ASSIGN zz7.value = - 7 */
  zz7->value = -7;
  /* RELATE z1 TO z2 ACROSS R13 USING zz1 */
  assoc_unformal_ZZ_R13_Link_sells_to( z1, z2, zz1 );
  /* RELATE z1 TO z3 ACROSS R13 USING zz2 */
  assoc_unformal_ZZ_R13_Link_buys_from( z1, z3, zz2 );
  /* RELATE z2 TO z3 ACROSS R13 USING zz3 */
  assoc_unformal_ZZ_R13_Link_sells_to( z2, z3, zz3 );
  /* RELATE z3 TO z1 ACROSS R13 USING zz4 */
  assoc_unformal_ZZ_R13_Link_buys_from( z3, z1, zz4 );
  /* RELATE z2 TO z1 ACROSS R13 USING zz5 */
  assoc_unformal_ZZ_R13_Link_sells_to( z2, z1, zz5 );
  /* RELATE z2 TO z3 ACROSS R13 USING zz6 */
  assoc_unformal_ZZ_R13_Link_buys_from( z2, z3, zz6 );
  /* RELATE z1 TO z2 ACROSS R13 USING zz7 */
  assoc_unformal_ZZ_R13_Link_sells_to( z1, z2, zz7 );

}


/*
 * Domain Function:  test1
 */
void
assoc_unformal_test1()
{
  assoc_unformal_B * b=0; 
  /* SELECT any b FROM INSTANCES OF B */
  b = (assoc_unformal_B *) Escher_SetGetAny( &pG_assoc_unformal_B_extent.active );
  /* GENERATE B1:go() TO b */
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( b, &assoc_unformal_Bevent1c );
    Escher_SendEvent( e );
  }

}

#if assoc_unformal_MAX_CLASS_NUMBERS > 0
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const assoc_unformal_class_info[ assoc_unformal_MAX_CLASS_NUMBERS ] = {
  assoc_unformal_CLASS_INFO_INIT
};
#endif

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t assoc_unformal_EventDispatcher[ assoc_unformal_STATE_MODELS ] = {
  assoc_unformal_class_dispatchers
};

void assoc_unformal_execute_initialization()
{
  /*
   * Initialization Function:  setup
   * Component:  assoc_unformal
   */
  assoc_unformal_setup();

  /*
   * Initialization Function:  test
   * Component:  assoc_unformal
   */
  assoc_unformal_test();

  /*
   * Initialization Function:  xit
   * Component:  assoc_unformal
   */
  assoc_unformal_xit();

}
