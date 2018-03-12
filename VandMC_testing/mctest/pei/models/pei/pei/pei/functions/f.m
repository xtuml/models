//! ACTIVITY BEGIN. '5b2dd722-eec1-43c7-a8d9-ca28f0be7d11' DO NOT EDIT THIS LINE.
private service pei::do_creates () is
a : instance of plug;
b : instance of socket;
c1 : instance of dog; c2 : instance of dog; c3 : instance of dog; c4 : instance of dog; c5 : instance of dog;
d1 : instance of dog_owner; d2 : instance of dog_owner; e0 : instance of host;
e1 : instance of host; e2 : instance of host;
f1 : instance of device; f2 : instance of device; f3 : instance of device;
g1 : instance of connection; g2 : instance of connection; g3 : instance of connection; g4 : instance of connection;
h1 : instance of transmission; h2 : instance of transmission; h3 : instance of transmission; h4 : instance of transmission; h : instance of transmission;
i1 : instance of car; i2 : instance of car; i3 : instance of car; i4 : instance of car;
j1 : instance of sedan;
k1 : instance of sports_car; k2 : instance of sports_car; k3 : instance of sports_car;
l1 : instance of convertible; l2 : instance of convertible; l3 : instance of convertible;
m1 : instance of report_line; m2 : instance of report_line; m3 : instance of report_line; m4 : instance of report_line; m5 : instance of report_line;
n1 : instance of employee; n2 : instance of employee; n3 : instance of employee; n4 : instance of employee; n5 : instance of employee; n6 : instance of employee;
o1 : instance of group_member; o2 : instance of group_member; o3 : instance of group_member; o4 : instance of group_member; o5 : instance of group_member;
p1 : instance of automobile; p2 : instance of automobile; p3 : instance of automobile;
q1 : instance of jurisdiction; q2 : instance of jurisdiction; q3 : instance of jurisdiction;
r1 : instance of license; r2 : instance of license; r3 : instance of license;
s1 : instance of AtoD_converter; s2 : instance of AtoD_converter;
t1 : instance of analog_input; t2 : instance of analog_input; t3 : instance of analog_input; t4 : instance of analog_input; t5 : instance of analog_input;
u1 : instance of sample; u2 : instance of sample; u3 : instance of sample; u4 : instance of sample; u5 : instance of sample;
v1 : instance of marriage; v2 : instance of marriage;
w1 : instance of person; w2 : instance of person; w3 : instance of person; w4 : instance of person;
x1 : instance of friend; x2 : instance of friend; x3 : instance of friend; x4 : instance of friend; x5 : instance of friend; x6 : instance of friend;
y1 : instance of friendship; y2 : instance of friendship; y3 : instance of friendship; y4 : instance of friendship; y5 : instance of friendship; y6 : instance of friendship; y7 : instance of friendship; y8 : instance of friendship; y9 : instance of friendship;
z1 : instance of dealer; z2 : instance of dealer; z3 : instance of dealer;
zz1 : instance of deal; zz2 : instance of deal; zz3 : instance of deal; zz4 : instance of deal; zz5 : instance of deal; zz6 : instance of deal; zz7 : instance of deal;

begin
// Set up instances for existence test later on.

// plug R1 socket
a := create plug( aID => 99 ); // extras to see in PEIs
a := create plug( aID => 98 );
b := create socket( bID => 2, i => 2 );
a := create plug( aID => 1, i => 1, bID => b.bID );
link a R1 b;
b := create socket( bID => 4, i => 4 );
a := create plug( aID => 3, i => 3, bID => b.bID );
link a R1 b;
b := create socket( bID => 6, i => 6 );
a := create plug( aID => 5, i => 5, bID => b.bID );
link a R1 b;
b := create socket( bID => 8 ); // extra to see it in PEIs

// dog R2 dog_owner
d1 := create dog_owner( dID => 1 ); // extra
d2 := create dog_owner( dID => 2, name => "DeeTwo" );
c1 := create dog( cID => 1, dID => d2.dID );
c2 := create dog( cID => 2, dID => d2.dID );
c3 := create dog( cID => 3, dID => d2.dID );
c4 := create dog( cID => 4, dID => d2.dID );
c5 := create dog( cID => 5 ); // extra
link c1 R2 d2;
link d2 R2 c2;
link d2 R2 c3;
link c4 R2 d2;

// host R3 device using connection
e0 := create host( eID => 100, ratio => 0.1 );
e1 := create host( eID => 1, ratio => 3.14 );
e2 := create host( eID => 2, ratio => 2.718 );
f3 := create device( fID => 3, enabled => true );
f2 := create device( fID => 2, enabled => false );
f1 := create device( fID => 1, enabled => true );
g1 := create connection( gID => 1, eID => e1.eID, fID => f1.fID );
g2 := create connection( gID => 2, eID => e1.eID, fID => f2.fID );
g3 := create connection( gID => 3, eID => e2.eID, fID => f3.fID );
g4 := create connection( gID => 4, eID => e1.eID, fID => f3.fID );
link e1 R3 f1 using g1;
link f2 R3 e1 using g2;
link f3 R3 e2 using g3;
link e1 R3 f3 using g4;

// transmission R4 (reflexive)
h1 := create transmission( hID => 1 );
h2 := create transmission( hID => 2, follows => h1.hID );
h := create transmission( hID => 99 ); // extra to see in PEIs
h3 := create transmission( hID => 3, follows => h2.hID );
h4 := create transmission( hID => 4, follows => h3.hID );
link h1 R4.precedes h2;
link h2 R4.precedes h3;
link h4 R4.follows h3;

// car R5 sedan, sports_car R6 convertible
i4 := create car( iID => 400, common => 400 );
i3 := create car( iID => 300, common => 300 );
i2 := create car( iID => 200, common => 200 );
i1 := create car( iID => 100, common => 100 );
j1 := create sedan( jID => 2, specialJ => 2, iID => i1.iID );
k1 := create sports_car( kID => 11, specialcommon => 11, iID => i4.iID );
k2 := create sports_car( kID => 22, specialcommon => 22, iID => i3.iID );
k3 := create sports_car( kID => 33, specialcommon => 33, iID => i2.iID );
l2 := create convertible( lID => 222, specialL => 222, kID => k3.iID );
l3 := create convertible( lID => 333, specialL => 333, kID => k2.iID );
l1 := create convertible( lID => 111, specialL => 111, kID => k1.iID );
link i1 R5 j1;
link i2 R5 k3;
link k2 R5 i3;
link i4 R5 k1;
link l1 R6 k1;
link l3 R6 k2;
link k3 R5 l2;

// group_member R8 reflexive
o2 := create group_member( oID => 2, voo => "Cort", teacheroID => o2.oID );
o1 := create group_member( oID => 1, voo => "Kenny" );
o3 := create group_member( oID => 3, voo => "Amy", teacheroID => o1.oID );
o4 := create group_member( oID => 4, voo => "Ellen", teacheroID => o1.oID );
o5 := create group_member( oID => 5, voo => "Brad", teacheroID => o1.oID );
link o1 R8.teaches o2; // Kenny teaches Cort.
link o2 R8.teaches o3; // Cort teaches Amy.
link o4 R8.learns_from o2; // Ellen learns from Cort.
link o5 R8.learns_from o2; // Brad learns from Cort.

// employee R7 reflexive using report_line
n1 := create employee( nID => 1, name => "Pete" );
n2 := create employee( nID => 2, name => "Dave" );
n3 := create employee( nID => 3, name => "Alex" );
n4 := create employee( nID => 4, name => "Jenn" );
n5 := create employee( nID => 5, name => "Cale" );
n6 := create employee( nID => 6, name => "Chris" );
m1 := create report_line( mID => 1, department => "SW", works_for_nID => n1.nID, manages_nID => n3.nID );
m2 := create report_line( mID => 2, department => "SW", works_for_nID => n1.nID, manages_nID => n4.nID );
m3 := create report_line( mID => 3, department => "HW", works_for_nID => n2.nID, manages_nID => n5.nID );
m4 := create report_line( mID => 4, department => "MEC", works_for_nID => n6.nID, manages_nID => n1.nID );
m5 := create report_line( mID => 5, department => "MEC", works_for_nID => n6.nID, manages_nID => n2.nID );
link n1 R7.manages n3 using m1;   // Pete manages Alex.
link n1 R7.manages n4 using m2;   // Pete manages Jenn.
link n5 R7.works_for n2 using m3; // Cale works for Dave.
link n1 R7.works_for n6 using m4; // Pete works for Chris.
link n6 R7.manages n2 using m5;   // Chris manages Dave.

// automobile R9 jurisdiction using license
p1 := create automobile( eyedee => "Rox" );
p2 := create automobile( eyedee => "Bita" );
p3 := create automobile( eyedee => "Tina" );
q1 := create jurisdiction( deeeye => "Shane" );
q2 := create jurisdiction( deeeye => "Rusty" );
q3 := create jurisdiction( deeeye => "Cort" );
r1 := create license( city => "Indianapolis", pID => p1.pID, qID => q3.qID );
r2 := create license( city => "Lockport", pID => p3.pID, qID => q1.qID );
r3 := create license( city => "Battleground", pID => p2.pID, qID => q2.qID );
//link p1 R9 q3 using r1;
//link q2 R9 p2 using r3;
//link p3 R9 q1 using r2;

// AtoD_converter R10 analog_input using sample
s1 := create AtoD_converter( s => "Rox" );
s2 := create AtoD_converter( s => "Jacqui" );
t1 := create analog_input( t => "Clare" );
t2 := create analog_input( t => "Katrina" );
t3 := create analog_input( t => "Colleen" );
t4 := create analog_input( t => "Hannah" );
t5 := create analog_input( t => "Ruby" );
u5 := create sample( s => "Oct", sID => s2.sID, tID => t1.tID );
u4 := create sample( s => "Aug", sID => s2.sID, tID => t2.tID );
u3 := create sample( s => "Apr", sID => s2.sID, tID => t3.tID );
u2 := create sample( s => "Dec", sID => s1.sID, tID => t4.tID );
u1 := create sample( s => "Nov", sID => s1.sID, tID => t5.tID );
link s1 R10 t4 using u2;
link s1 R10 t5 using u1;
link t1 R10 s2 using u5;
link t2 R10 s2 using u4;
link s2 R10 t3 using u3;

// person R11 reflexive using marriage
w1 := create person( name => "Cort" );
w2 := create person( name => "Rox" );
w3 := create person( name => "Sean" );
w4 := create person( name => "Jacqui" );
v1 := create marriage( year => 1988, husband => w1.name, wife => w2.name );
v2 := create marriage( year => 1990, husband => w3.name, wife => w4.name );
link w1 R11.is_husband_of w2 using v1;
link w4 R11.is_wife_of w3 using v2;

// friends and friendships
x1 := create friend( name => "Cort", age => 39 );
x2 := create friend( name => "Rox", age => 38 );
x3 := create friend( name => "Sevina", age => 35 );
x4 := create friend( name => "Joe", age => 43 );
x5 := create friend( name => "Scott", age => 42 );
x6 := create friend( name => "Jason", age => 31 );
y1 := create friendship( duration => 1, closeness => 10, buddy => x1.name, pal => x2.name );
y2 := create friendship( duration => 2, closeness => 20, buddy => x3.name, pal => x1.name );
y3 := create friendship( duration => 3, closeness => 30, buddy => x4.name, pal => x1.name );
y4 := create friendship( duration => 4, closeness => 40, buddy => x5.name, pal => x1.name );
y5 := create friendship( duration => 5, closeness => 50, buddy => x1.name, pal => x6.name );
y6 := create friendship( duration => 6, closeness => 60, buddy => x2.name, pal => x3.name );
y7 := create friendship( duration => 7, closeness => 70, buddy => x4.name, pal => x5.name );
y8 := create friendship( duration => 8, closeness => 80, buddy => x6.name, pal => x4.name );
y9 := create friendship( duration => 9, closeness => 90, buddy => x6.name, pal => x5.name );
// friends of Cort
link x1 R12.is_buddy_of x2 using y1;
link x1 R12.is_pal_of x3 using y2;
link x4 R12.is_buddy_of x1 using y3;
link x5 R12.is_pal_of x1 using y4;
link x1 R12.is_buddy_of x6 using y5;
// friends of Rox
link x3 R12.is_pal_of x2 using y6;
// friends of Joe
link x4 R12.is_buddy_of x5 using y7;
link x4 R12.is_pal_of x6 using y8;
// friends of Scott
link x6 R12.is_buddy_of x5 using y9;


// dealers and deals
z1 := create dealer( name => "Joe", worth => 1 );
z2 := create dealer( name => "Pat", worth => 2 );
z3 := create dealer( name => "Jason", worth => 3 );
zz1 := create deal( xaction => 1, value => -1, buyer => z2.name, seller => z1.name );
zz2 := create deal( xaction => 2, value => 2, buyer => z1.name, seller => z3.name );
zz3 := create deal( xaction => 3, value => -3, buyer => z3.name, seller => z2.name );
zz4 := create deal( xaction => 4, value => 4, buyer => z3.name, seller => z1.name );
zz5 := create deal( xaction => 5, value => -5, buyer => z1.name, seller => z2.name );
zz6 := create deal( xaction => 6, value => 6, buyer => z2.name, seller => z3.name );
zz7 := create deal( xaction => 7, value => -7, buyer => z2.name, seller => z1.name );
link z1 R13.sells_to z2 using zz1;
link z1 R13.buys_from z3 using zz2;
link z2 R13.sells_to z3 using zz3;
link z3 R13.buys_from z1 using zz4;
link z2 R13.sells_to z1 using zz5;
link z2 R13.buys_from z3 using zz6;
link z1 R13.sells_to z2 using zz7;

end service;
//! ACTIVITY END. DO NOT EDIT THIS LINE.

//! ACTIVITY BEGIN. 'ee0b21c6-3e1f-4b2b-9441-00b6e64ca6eb' DO NOT EDIT THIS LINE.
private service pei::setup () is
a : instance of plug;

begin
// 
// Check to see if any instances are already here.
// This would mean that we have restored from NVS
// or that preexisting instances were defined in data.
//

a := find_one plug();
if ( null = a ) then

  //
  // Set up instances for existance test later on.
  //

  do_creates();

end if;   // if empty a
end service;
//! ACTIVITY END. DO NOT EDIT THIS LINE.

//! ACTIVITY BEGIN. 'b6ece4d0-3a14-4e5a-87e6-23378a779c47' DO NOT EDIT THIS LINE.
private service pei::test () is
a : instance of plug; a1 : instance of plug; same_a : instance of plug; as : set of instance of plug; as_again : set of instance of plug;
b : instance of socket;
c : instance of dog; cs : set of instance of dog;
d : instance of dog_owner;
e : instance of host; es : set of instance of host;
f : instance of device; 
g : instance of connection;
h : instance of transmission; h1 : instance of transmission; h2 : instance of transmission; h3 : instance of transmission; hp : instance of transmission; hf : instance of transmission;
i : instance of car;
k : instance of sports_car;
l : instance of convertible;
m : instance of report_line;
n : instance of employee; n1 : instance of employee; n2 : instance of employee; boss : instance of employee; ns : set of instance of employee;
o : instance of group_member; o1 : instance of group_member; os : set of instance of group_member;
p : instance of automobile;
q : instance of jurisdiction;
r : instance of license;
s : instance of AtoD_converter;
t : instance of analog_input; ts : set of instance of analog_input;
u : instance of sample;
v : instance of marriage;
w : instance of person; husband : instance of person; huz : instance of person; wife : instance of person;
x : instance of friend; x1 : instance of friend; xs : set of instance of friend;
y : instance of friendship; ys : set of instance of friendship;
z : instance of dealer; zs : set of instance of dealer;
zz : instance of deal;
cardxs : integer;

begin
//
// Test that an instance of A already exists.
//

if ( null = find_one plug() ) then
  LOG::LogFailure( "test1.20:  Failed to select a." );
end if;

as := find_all plug();
if ( as'length /= 5 ) then
  LOG::LogFailure( "test1.21:  Wrong number of As." );
end if;
as_again := find_all plug();
if ( as /= as_again ) then
  LOG::LogFailure( "set of As and As_again do not match." );
end if;

a1 := create plug( i => 101 );
if ( find_one plug( i = 1 ) = null ) then
  LOG::LogFailure( "test1.22:  Failed to select a where." );
end if;
delete a1;

if ( null /= find_one socket( i = 20 ) ) then
  LOG::LogFailure( "test1.23:  Selected non-existant B." );
end if;

if ( null = find_one socket( i = 2 ) ) then
  LOG::LogFailure( "test1.24:  Failed to select b where." );
end if;

//
// Test that there is a B related to this A.
//
a := find_one plug( i = 3 );
b := a->R1;
if ( null = b ) then
  LOG::LogFailure( "test1.40:  Failed to select b across R1." );
end if;
if ( b.i /= 4 ) then
  LOG::LogFailure( "test1.41:  Selected wrong b across R1." );
  if ( a.bID /= b.bID ) then
    LOG::LogFailure( "test1.42:  A/B referential mismatch" );
  end if;
end if;
same_a := a->R1.socket->R1.plug;
if ( null = same_a ) then
  LOG::LogFailure( "test1.43:  Did not find a out and back across R1." );
else
  if ( a /= same_a ) then
    LOG::LogFailure( "test1.43a:  a and same_a not the same." );
  end if;
end if;

//
// Test that there is an A related to this B.
//
a := b->R1;
if ( null = a ) then
  LOG::LogFailure( "test1.44:  Failed to select a across R1." );
end if;
if (a.i /= 3) then
  LOG::LogFailure( "test1.45:  Selected wrong a across R1." );
end if;
unlink a R1 b;
link a R1 b;

//
// Test for a D.
//
d := find_one dog_owner( name = "DeeTwo" );
if ( null = d ) then
  LOG::LogFailure( "test1.52:  Failed to select d from Ds.");
end if;

//
// Test for many Cs related to D.
//
cs := d->R2.dog;
if ( cs'length /= 4 ) then
  LOG::LogFailure( "test1.62:  Failed to select Cs from D.");
end if;
for c in cs'elements loop
  d := c->R2;
  if ( d.name /= "DeeTwo" ) then
    LOG::LogFailure( "test1.63:  Failed to select D from C.");
  end if;
  if ( c.dID /= d.dID ) then
    LOG::LogFailure( "test1.64:  C/D referential mismatch");
  end if;
end loop;

//
// Test associatives.
//
e := find_one host( eID = 2 );
if ( null = e ) then
  LOG::LogFailure( "test1.70:  Failed to select E.");
end if;
f := find_one ( e->R3.device )();
if ( null = f ) then
  LOG::LogFailure( "test1.71:  Failed to select F.");
else
  if ( f.fID /= 3 ) then
    LOG::LogFailure( "test1.72:  Selected wrong F across R3.");
  end if;
end if;
es := f->R3.host;
if ( es'length /= 2 ) then
  LOG::LogFailure( "test1.73:  Selected wrong count of Fs.");
end if;
g := find_one( e->R3.connection )();
if ( g.gID /= 3 ) then
  LOG::LogFailure( "test1.74:  Selected incorrect G.");
end if;
if ( ( g.eID /= e.eID ) or ( g.fID /= f.fID ) ) then
  LOG::LogFailure( "test1.75:  E/F/G referential mismatch.");
end if;
for e in es'elements loop
  if ( ( e.eID /= 1 ) and ( e.eID /= 2 ) ) then
    LOG::LogFailure( "test1.76:  Selected incorrect Es.");
  end if;
end loop;

//
// Test reflexives.
//
h1 := find_one transmission( hID = 1 );
if ( null = h1 ) then
  LOG::LogFailure( "test1.80:  Failed to select H.");
end if;
h2 := h1->R4.precedes.transmission;
if ( h2.hID /= 2 ) then
  LOG::LogFailure( "test1.81:  Selected incorrect H.");
end if;
if ( h1.hID /= h2.follows ) then
  LOG::LogFailure( "test1.81a:  H referential mismatch");
end if;
h3 := h2->R4.precedes;
if ( h3.hID /= 3 ) then
  LOG::LogFailure( "test1.82:  Selected incorrect H.");
end if;
if ( h2.hID /= h3.follows ) then
  LOG::LogFailure( "test1.82a:  H referential mismatch");
end if;
h := h1->R4.precedes->R4.precedes;
if ( h.hID /= 3 ) then
  LOG::LogFailure( "test1.83:  Selected incorrect H.");
end if;
h := h3->R4.follows->R4.follows;
if ( h.hID /= 1 ) then
  LOG::LogFailure( "test1.84:  Selected incorrect H.");
end if;
h := find_one transmission( hID = 2 );
if ( null = h ) then
  LOG::LogFailure( "test1.85:  Failed to select H.");
end if;
hp := h->R4.follows.transmission;
if ( hp.hID /= 1 ) then
  LOG::LogFailure( "test1.86:  Selected incorrect H.");
end if;
if ( hp.hID /= h.follows ) then
  LOG::LogFailure( "test1.86a:  H referential mismatch");
end if;
hf := h->R4.precedes;
if ( hf.hID /= 3 ) then
  LOG::LogFailure( "test1.87:  Selected incorrect H.");
end if;
h := h3->R4.precedes;
if ( h.hID /= 4 ) then
  LOG::LogFailure( "test1.88:  Selected incorrect H.");
end if;
if ( h3.hID /= h.follows ) then
  LOG::LogFailure( "test1.88a:  H referential mismatch");
end if;

//
// Test sub/supers.
//
i := find_one car( iID = 200 );
if ( null = i ) then
  LOG::LogFailure( "test1.90:  Failed to select I.");
end if;
k := i->R5.sports_car;
if ( null = k ) then
  LOG::LogFailure( "test1.91:  Failed to select K.");
else
  if ( k.kID /= 33 ) then
    LOG::LogFailure( "test1.92:  Selected incorrect K.");
  end if;
  if ( i.iID /= k.iID ) then
    LOG::LogFailure( "test1.92a:  I/K referential mismatch");
  end if;
end if;
l := i->R5.sports_car->R6.convertible;
if ( null = l ) then
  LOG::LogFailure( "test1.93:  Failed to select L.");
else
  if ( l.lID /= 222 ) then
    LOG::LogFailure( "test1.94:  Selected incorrect L.");
  end if;
  if ( l.kID /= k.kID ) then
    LOG::LogFailure( "test1.94a:  L/K referential mismatch");
  end if;
end if;

//
// Test reflexive asymmetrics.
//
o := find_one group_member( voo = "Cort" );
os := o->R8.teaches.group_member;
if ( os'length /= 3 ) then
  LOG::LogFailure( "test1.C2:  Failed to select Os.");
end if;
o1 := o->R8.learns_from;
if ( o1.voo /= "Kenny" ) then
  LOG::LogFailure( "test1.C3:  Selected incorrect O.");
else
  if ( o.teacheroID /= o1.oID ) then
    LOG::LogFailure( "test1.C3a:  O referential mismatch");
  end if;
end if;
o := find_one group_member( voo = "Ellen" );
o1 := o->R8.learns_from;
if ( o1.voo /= "Cort" ) then
  LOG::LogFailure( "test1.C4:  Selected incorrect O.");
else
  if ( o.teacheroID /= o1.oID ) then
    LOG::LogFailure( "test1.C4a:  O referential mismatch");
  end if;
end if;
o := find_one group_member( voo = "Amy" );
o1 := o->R8.learns_from.group_member;
if ( o1.voo /= "Cort" ) then
  LOG::LogFailure( "test1.C5:  Selected incorrect O.");
else
  if ( o.teacheroID /= o1.oID ) then
    LOG::LogFailure( "test1.C5a:  O referential mismatch");
  end if;
end if;

//
// Test reflexive associatives.
//
n := find_one employee( name = "Chris" );
ns := n->R7.manages.employee;
if ( ns'length /= 2 ) then
  LOG::LogFailure( "test1.B2:  Failed to select Ns.");
end if;
n1 := create employee( name => "Vijay" );
n2 := create employee( name => "do not care" );
delete n2;
for n in ns'elements loop
  if ( n.name /= "Dave" ) and ( n.name /= "Pete" ) then
    LOG::LogFailure( "test1.B3:  Selected incorrect Ns.");
  end if;
end loop;
delete n1;
n := find_one employee( name = "Pete" );
boss := n->R7.works_for;
if ( null = boss ) then
  LOG::LogFailure( "test1.B4:  Failed to select boss.");
else
  if ( boss.name /= "Chris" ) then
    LOG::LogFailure( "test1.B5:  Selected incorrect boss.");
  end if;
end if;
n := find_one employee( name = "Dave" );
m := n->R7.works_for.report_line;
if ( null = m ) then
  LOG::LogFailure( "test1.B6:  Failed to select M.");
  if ( m.department /= "MEC" ) then
    LOG::LogFailure( "test1.B7:  Selected incorrect department.");
  else
    if ( m.works_for_nID /= n.nID ) then
      LOG::LogFailure( "test1.B7a:  M/N referential mismatch");
    end if;
  end if;
end if;
n := find_one employee( name = "Pete" );
ns := n->R7.manages;
if ( ns'length /= 2 ) then
  LOG::LogFailure( "test1.B2:  Failed to select Ns.");
end if;
for n in ns'elements loop
  if ( n.name /= "Alex" ) and ( n.name /= "Jenn" ) then
    LOG::LogFailure( "test1.B3:  Selected incorrect Ns.");
  end if;
end loop;


//
// Test 1-1 associatives.
//
p := find_one automobile( eyedee = "Rox" );
q := p->R9.jurisdiction;
if ( q.deeeye /= "Cort" ) then
  LOG::LogFailure( "test1.D1:  Selected incorrect Q.");
end if;
q := find_one jurisdiction( deeeye = "Rusty" );
p := q->R9.automobile;
if ( p.eyedee /= "Bita" ) then
  LOG::LogFailure( "test1.D2:  Selected incorrect P.");
end if;
p := find_one automobile( eyedee = "Tina" );
r := p->R9.license;
if ( r.city /= "Lockport" ) then
  LOG::LogFailure( "test1.D3:  Selected incorrect R.");
else
  if ( p.pID /= r.pID ) then
    LOG::LogFailure( "test1.D3a:  P/R referential mismatch");
  end if;
end if;

//
// Test 1-M associatives.
//
s := find_one AtoD_converter( s = "Rox" );
ts := s->R10.analog_input;
if ( ts'length /= 2 ) then
  LOG::LogFailure( "test1.E1:  Incorrect number of Ts.");
end if;
for t in ts'elements loop
  if ( ( t.t /= "Hannah" ) and ( t.t /= "Ruby" ) ) then
    LOG::LogFailure( "test1.E2:  Incorrect T.");
  end if;
  s := t->R10.AtoD_converter;
  if ( s.s /= "Rox" ) then
    LOG::LogFailure( "test1.E3:  Incorrect S.");
  end if;
end loop;
t := find_one analog_input( t = "Katrina" );
s := t->R10.AtoD_converter;
u := find_one( s->R10.sample )( s = "Aug" );
if ( null = u ) then
  LOG::LogFailure( "test1.E4:  Incorrect U.");
else
  if ( s.sID /= u.sID ) then
    LOG::LogFailure( "test1.E4a:  S/U referential mismatch");
  end if;
end if;

//
// Test 1-1 reflexive associatives.
//
w := find_one person( name = "Rox" );
husband := w->R11.is_wife_of;
if ( husband.name /= "Cort" ) then
  LOG::LogFailure( "test1.F1:  Incorrect W.");
end if;
w := find_one person( name = "Jacqui" );
husband := w->R11.is_wife_of;
if ( husband.name /= "Sean" ) then
  LOG::LogFailure( "test1.F2:  Incorrect W.");
end if;
huz := find_one person( name = "Cort" );
wife := huz->R11.is_husband_of.person;
if ( wife.name /= "Rox" ) then
  LOG::LogFailure( "test1.F3:  Incorrect W.");
end if;
v := find_one marriage( year = 1988 );
if ( ( v.husband /= "Cort" ) or ( v.wife /= "Rox" ) ) then
  LOG::LogFailure( "test1.F4:  Incorrect V or referential mismatch." );
end if;

// Test friends and friendships.
// (Note that this should be symmetric reflexive, but we don't know how.)
//
x := find_one friend( name = "Cort" );
if ( null = x ) then
  LOG::LogFailure( "test1.X1:  Failed to select X." );
end if;
xs := x->R12.is_pal_of.friend;
cardxs := xs'length;
xs := x->R12.is_buddy_of.friend;
cardxs := cardxs + xs'length;
if ( cardxs /= 5 ) then
  LOG::LogFailure( "test1.X2:  Wrong number of friends." );
end if;
ys := find_all friendship( ( pal = "Cort" )
  or ( buddy = "Cort" ) );
if ( ys'length /= 5 ) then
  LOG::LogFailure( "test1.Y3:  Wrong number of friends." );
end if;
// Test Sevina's friends.
x := find_one friend( name = "Sevina" );
if ( null = x ) then
  LOG::LogFailure( "test1.X4:  Failed to select X." );
end if;
x1 := find_one( x->R12.is_pal_of.friend )();
if ( x1.name /= "Rox" ) then
  LOG::LogFailure( "test1.X5:  Could not find Rox." );
end if;
x := find_one friend( name = "Rox" );
if ( null = x ) then
  LOG::LogFailure( "test1.X6:  Failed to select X." );
end if;
x1 := find_one( x->R12.is_buddy_of.friend )();
if ( x1.name /= "Sevina" ) then
  LOG::LogFailure( "test1.X6:  Could not find Sevina." );
end if;
y := find_one friendship();
x := y->R12.is_pal_of.friend;
if ( x.name /= y.pal ) then
  LOG::LogFailure( "test1.X6a:  X/Y referential mismatch" );
end if;
x := y->R12.is_buddy_of.friend;
if ( x.name /= y.buddy ) then
  LOG::LogFailure( "test1.X6b:  X/Y referential mismatch" );
end if;


//
// Test dealers and deals.
//
z := find_one dealer( name = "Joe" );
if ( null = z ) then
  LOG::LogFailure( "test1.Z1:  Failed to select Z." );
end if;
zs := z->R13.buys_from.dealer;
if ( zs'length < 2 ) then
  LOG::LogFailure( "test1.Z2:  Could not find Zs." );
end if;
zz := find_one deal();
z := zz->R13.buys_from;
if ( zz.buyer /= z.name ) then
  LOG::LogFailure( "test1.Z2a:  Z/ZZ referential mismatch" );
end if;
z := zz->R13.sells_to.dealer;
if ( zz.seller /= z.name ) then
  LOG::LogFailure( "test1.Z2b:  Z/ZZ referential mismatch" );
end if;

LOG::LogSuccess( "Made it to the end." );
end service;
//! ACTIVITY END. DO NOT EDIT THIS LINE.

//! ACTIVITY BEGIN. '3478bf0f-b428-4b52-b41a-0ce97241c99b' DO NOT EDIT THIS LINE.
private service pei::test1 () is
b : instance of socket;

begin
//
// Generate an event to be sure that b is in the correct current state.
//
b := find_one socket();
generate socket.go() to b;
end service;
//! ACTIVITY END. DO NOT EDIT THIS LINE.

//! ACTIVITY BEGIN. 'a20db3d4-77d0-47da-9b8c-6d6a1d4dabf2' DO NOT EDIT THIS LINE.
private service pei::test2 () is
a : instance of plug;
b : instance of socket;
c : instance of dog;
d : instance of dog_owner;
n : instance of employee;
y : instance of friendship;
z : instance of dealer;

begin
// Do some creates and deletes to to exercise storage.
// But delete everything created.

a := create plug( aID => 55 );
delete a;

b := create socket( bID => 77, i => 77 );
a := create plug( aID => 77, i => 77, bID => b.bID );
link a R1 b;
d := create dog_owner( dID => 88 ); // extra
c := create dog( cID => 88, dID => d.dID );
link c R2 d;
y := create unique friendship();
z := create unique dealer();

unlink c R2 d;
unlink a R1 b;

delete a;
delete b;
delete z;
delete y;
delete c;
delete d;

n := create unique employee();
delete n;

end service;
//! ACTIVITY END. DO NOT EDIT THIS LINE.

//! ACTIVITY BEGIN. '888d97ee-40a0-4baa-8ca8-41c7678e8e7d' DO NOT EDIT THIS LINE.
private service pei::xit () is
begin
//ARCH::shutdown();
end service;
//! ACTIVITY END. DO NOT EDIT THIS LINE.
