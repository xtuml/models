domain pei is
  object car;
  object dealer;
  object device;
  object dog_owner;
  object employee;
  object friend;
  object friendship;
  object group_member;
  object host;
  object person;
  object report_line;
  object sedan;
  object socket;
  object sports_car;
  object transmission;
  object sample;
  object plug;
  object marriage;
  object license;
  object jurisdiction;
  object dog;
  object deal;
  object convertible;
  object connection;
  object automobile;
  object analog_input;
  object AtoD_converter;
//!Arbitrary ID with core data type of unique_id (integer in MASL).
  public type arbitrary_id is integer
  ;
    private service do_creates (
    );
    private service setup (
    );
pragma startup ( true ); 
    private service test (
    );
pragma startup ( true ); 
    private service test1 (
    );
    private service test2 (
    );
    private service xit (
    );
    public service start_test (
    );
  relationship R1 is socket conditionally receives one plug,
    plug conditionally enters one socket;
  relationship R2 is dog_owner conditionally owns many dog,
    dog conditionally is_owned_by one dog_owner;
  relationship R4 is transmission conditionally precedes one transmission,
    transmission conditionally follows one transmission;
  relationship R3 is device conditionally connects_to many host,
    host conditionally connects_to many device
    using connection;
  relationship R5 is car is_a ( sedan, sports_car );
  relationship R6 is sports_car is_a ( convertible );
  relationship R7 is employee unconditionally manages many employee,
    employee conditionally works_for one employee
    using report_line;
  relationship R8 is group_member conditionally teaches many group_member,
    group_member conditionally learns_from one group_member;
  relationship R9 is jurisdiction conditionally licenses one automobile,
    automobile conditionally is_licensed_in one jurisdiction
    using license;
  relationship R10 is AtoD_converter conditionally samples many analog_input,
    analog_input conditionally is_sampled_by one AtoD_converter
    using sample;
  relationship R11 is person conditionally is_husband_of one person,
    person conditionally is_wife_of one person
    using marriage;
  relationship R12 is friend unconditionally is_buddy_of many friend,
    friend unconditionally is_pal_of many friend
    using friendship;
  relationship R13 is dealer conditionally buys_from many dealer,
    dealer conditionally sells_to many dealer
    using deal;
  object car is
    iID : preferred  integer;
    common :   integer;
  end object;
pragma key_letter ( "car" ); 
  object dealer is
    name : preferred  string;
    worth :   integer;
  end object;
pragma key_letter ( "dealer" ); 
  object device is
    fID : preferred  integer;
    enabled :   boolean;
  end object;
pragma key_letter ( "device" ); 
  object dog_owner is
    dID : preferred  integer;
    name :   string;
  end object;
pragma key_letter ( "dog_owner" ); 
  object employee is
    nID : preferred  integer;
    name :   string;
  end object;
pragma key_letter ( "employee" ); 
  object friend is
    name : preferred  string;
    age :   integer;
  end object;
pragma key_letter ( "friend" ); 
  object friendship is
    duration :   integer;
    closeness :   integer;
    buddy : preferred  referential ( R12.is_buddy_of.friend.name ) string;
    pal : preferred  referential ( R12.is_pal_of.friend.name ) string;
  end object;
pragma key_letter ( "friendship" ); 
  object group_member is
    oID : preferred  integer;
    voo :   string;
    teacheroID :   referential ( R8.learns_from.group_member.oID ) integer;
  end object;
pragma key_letter ( "group_member" ); 
  object host is
    eID : preferred  integer;
    ratio :   real;
  end object;
pragma key_letter ( "host" ); 
  object person is
    name : preferred  string;
  end object;
pragma key_letter ( "person" ); 
  object report_line is
    mID : preferred  integer;
    works_for_nID :   referential ( R7.manages.employee.nID ) integer;
    manages_nID :   referential ( R7.works_for.employee.nID ) integer;
    department :   string;
    identifier is ( manages_nID, works_for_nID );
  end object;
pragma key_letter ( "report_line" ); 
  object socket is
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
pragma key_letter ( "socket" ); 
  object transmission is
    hID : preferred  integer;
    follows :   referential ( R4.follows.transmission.hID ) integer;
  end object;
pragma key_letter ( "transmission" ); 
  object sample is
    uID : preferred  arbitrary_id;
    s :   string;
    sID :   referential ( R10.is_sampled_by.AtoD_converter.sID ) arbitrary_id;
    tID :   referential ( R10.samples.analog_input.tID ) arbitrary_id;
    identifier is ( sID, tID );
  end object;
pragma key_letter ( "sample" ); 
  object plug is
    aID : preferred  integer;
    i :   integer;
    bID :   referential ( R1.enters.socket.bID ) integer;
  end object;
pragma key_letter ( "plug" ); 
  object marriage is
    vID : preferred  arbitrary_id;
    year :   integer;
    wife :   referential ( R11.is_husband_of.person.name ) string;
    husband :   referential ( R11.is_wife_of.person.name ) string;
    identifier is ( wife, husband );
  end object;
pragma key_letter ( "marriage" ); 
  object license is
    rID :   arbitrary_id;
    city :   string;
    pID : preferred  referential ( R9.licenses.automobile.pID ) arbitrary_id;
    qID : preferred  referential ( R9.is_licensed_in.jurisdiction.qID ) arbitrary_id;
  end object;
pragma key_letter ( "license" ); 
  object jurisdiction is
    qID : preferred  arbitrary_id;
    deeeye :   string;
  end object;
pragma key_letter ( "jurisdiction" ); 
  object dog is
    cID : preferred  integer;
    dID :   referential ( R2.is_owned_by.dog_owner.dID ) integer;
  end object;
pragma key_letter ( "dog" ); 
  object deal is
    xaction : preferred  integer;
    value :   integer;
    buyer :   referential ( R13.buys_from.dealer.name ) string;
    seller :   referential ( R13.sells_to.dealer.name ) string;
  end object;
pragma key_letter ( "deal" ); 
  object connection is
    gID : preferred  integer;
    eID :   referential ( R3.connects_to.host.eID ) integer;
    fID :   referential ( R3.connects_to.device.fID ) integer;
    identifier is ( eID, fID );
  end object;
pragma key_letter ( "connection" ); 
  object automobile is
    pID : preferred  arbitrary_id;
    eyedee :   string;
  end object;
pragma key_letter ( "automobile" ); 
  object analog_input is
    tID : preferred  arbitrary_id;
    t :   string;
  end object;
pragma key_letter ( "analog_input" ); 
  object AtoD_converter is
    sID : preferred  arbitrary_id;
    s :   string;
  end object;
pragma key_letter ( "AtoD_converter" ); 
  object sedan is
    jID : preferred  integer;
    specialJ :   integer;
    iID :   referential ( R5.iID ) integer;
    identifier is ( iID );
  end object;
pragma key_letter ( "sedan" ); 
  object sports_car is
    kID : preferred  integer;
    specialcommon :   integer;
    iID :   referential ( R5.iID ) integer;
    identifier is ( iID );
  end object;
pragma key_letter ( "sports_car" ); 
  object convertible is
    lID : preferred  integer;
    specialL :   integer;
    kID :   referential ( R6.kID ) integer;
    identifier is ( kID );
  end object;
pragma key_letter ( "convertible" ); 
end domain;
pragma number ( 1 ); 
