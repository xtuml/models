domain pei is
  object A1;
  object B1;
  object CM;
  object D1;
  object EM;
  object FM;
  object G1AMM;
  object H1;
  object Isuper;
  object Jsub;
  object Ksubsuper;
  object Lsub;
  object Orasym;
  object Paone;
  object Qaoth;
  object Rassr11;
  object Saone;
  object Taoth;
  object Uassr1M;
  object deal;
  object dealer;
  object employee;
  object friend;
  object friendship;
  object marriage;
  object person;
  object report_line;
  private type arbitrary_id is integer
  ;
    private service test (
    );
    private service setup (
    );
    private service test2 (
    );
    private service xit (
    );
    private service do_creates (
    );
    private service test1 (
    );
  relationship R1 is B1 conditionally aend one A1,
    A1 conditionally bend one B1;
  relationship R2 is D1 conditionally cmany many CM,
    CM conditionally done one D1;
  relationship R4 is H1 conditionally precedes one H1,
    H1 conditionally follows one H1;
  relationship R3 is FM conditionally emany many EM,
    EM conditionally fmany many FM
    using G1AMM;
  relationship R5 is Isuper is_a ( Jsub, Ksubsuper );
  relationship R6 is Ksubsuper is_a ( Lsub );
  relationship R7 is employee unconditionally manages many employee,
    employee conditionally works_for one employee
    using report_line;
  relationship R8 is Orasym conditionally teaches many Orasym,
    Orasym conditionally learns_from one Orasym;
  relationship R9 is Qaoth conditionally pone one Paone,
    Paone conditionally qoth one Qaoth
    using Rassr11;
  relationship R10 is Saone conditionally taoth many Taoth,
    Taoth conditionally saone one Saone
    using Uassr1M;
  relationship R11 is person conditionally is_husband_of one person,
    person conditionally is_wife_of one person
    using marriage;
  relationship R12 is friend unconditionally is_buddy_of many friend,
    friend unconditionally is_pal_of many friend
    using friendship;
  relationship R13 is dealer conditionally buys_from many dealer,
    dealer conditionally sells_to many dealer
    using deal;
  object A1 is
    aID : preferred  integer;
    i :   integer;
    bID :   referential ( R1.bend.B1.bID ) integer;
  end object;
  object B1 is
    bID : preferred  integer;
    i :   integer;
     state first();
     state second();
     state third();
     event go();
     transition is
      Non_Existent (
        go => Cannot_Happen      ); 
      first (
        go => second      ); 
      second (
        go => third      ); 
      third (
        go => first      ); 
    end transition;
  end object;
  object CM is
    cID : preferred  integer;
    dID :   referential ( R2.done.D1.dID ) integer;
  end object;
  object D1 is
    dID : preferred  integer;
    name :   string;
  end object;
  object EM is
    eID : preferred  integer;
    ratio :   real;
  end object;
  object FM is
    fID : preferred  integer;
    enabled :   boolean;
  end object;
  object G1AMM is
    gID : preferred  integer;
    eID :   referential ( R3.emany.EM.eID ) integer;
    fID :   referential ( R3.fmany.FM.fID ) integer;
    identifier is ( eID, fID );
  end object;
  object H1 is
    hID : preferred  integer;
    follows :   referential ( R4.follows.H1.hID ) integer;
  end object;
  object Isuper is
    iID : preferred  integer;
    common :   integer;
  end object;
  object Jsub is
    jID : preferred  integer;
    specialJ :   integer;
    iID :   referential ( R5.iID ) integer;
    identifier is ( iID );
  end object;
  object Ksubsuper is
    kID : preferred  integer;
    specialcommon :   integer;
    iID :   referential ( R5.iID ) integer;
    identifier is ( iID );
  end object;
  object Lsub is
    lID : preferred  integer;
    specialL :   integer;
    kID :   referential ( R6.kID ) integer;
    identifier is ( kID );
  end object;
  object Orasym is
    oID : preferred  integer;
    voo :   string;
    teacheroID :   referential ( R8.learns_from.Orasym.oID ) integer;
  end object;
  object Paone is
    pID : preferred  arbitrary_id;
    eyedee :   string;
  end object;
  object Qaoth is
    qID : preferred  arbitrary_id;
    deeeye :   string;
  end object;
  object Rassr11 is
    rID :   arbitrary_id;
    city :   string;
    pID : preferred  referential ( R9.pone.Paone.pID ) arbitrary_id;
    qID : preferred  referential ( R9.qoth.Qaoth.qID ) arbitrary_id;
  end object;
  object Saone is
    sID : preferred  arbitrary_id;
    s :   string;
  end object;
  object Taoth is
    tID : preferred  arbitrary_id;
    t :   string;
  end object;
  object Uassr1M is
    uID : preferred  arbitrary_id;
    s :   string;
    sID :   referential ( R10.saone.Saone.sID ) arbitrary_id;
    tID :   referential ( R10.taoth.Taoth.tID ) arbitrary_id;
    identifier is ( sID, tID );
  end object;
  object deal is
    xaction : preferred  integer;
    value :   integer;
    buyer :   referential ( R13.buys_from.dealer.name ) string;
    seller :   referential ( R13.sells_to.dealer.name ) string;
  end object;
  object dealer is
    name : preferred  string;
    worth :   integer;
  end object;
  object employee is
    nID : preferred  integer;
    name :   string;
  end object;
  object friend is
    name : preferred  string;
    age :   integer;
  end object;
  object friendship is
    duration :   integer;
    closeness :   integer;
    buddy : preferred  referential ( R12.is_buddy_of.friend.name ) string;
    pal : preferred  referential ( R12.is_pal_of.friend.name ) string;
  end object;
  object marriage is
    vID : preferred  arbitrary_id;
    year :   integer;
    wife :   referential ( R11.is_husband_of.person.name ) string;
    husband :   referential ( R11.is_wife_of.person.name ) string;
    identifier is ( wife, husband );
  end object;
  object person is
    name : preferred  string;
  end object;
  object report_line is
    mID : preferred  integer;
    works_for_nID :   referential ( R7.manages.employee.nID ) integer;
    manages_nID :   referential ( R7.works_for.employee.nID ) integer;
    department :   string;
    identifier is ( manages_nID, works_for_nID );
  end object;
end domain;
