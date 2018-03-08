domain pei is
  
  object AtoD_converter;
  object analog_input;
  object automobile;
  object car;
  object connection;
  object host;
  object device;
  object convertible;
  object sports_car;
  object deal;
  object dealer;
  object dog;
  object dog_owner;
  object employee;
  object friend;
  object friendship;
  object group_member;
  object jurisdiction;
  object license;
  object marriage;
  object person;
  object plug;
  object socket;
  object report_line;
  object sample;
  object sedan;
  object transmission;
  
  //!Arbitrary ID with core data type of unique_id (integer in MASL).
  public type arbitrary_id is integer;   
  
  private service do_creates ();   
  private service setup ();   
  private service test ();   
  private service test1 ();   
  private service test2 ();   
  private service xit ();   
  
  
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
  
  
  
  object AtoD_converter is
    
    sID: preferred arbitrary_id;     
    s: string;     
    
  end object;
  
  object analog_input is
    
    tID: preferred arbitrary_id;     
    t: string;     
    
  end object;
  
  object automobile is
    
    pID: preferred arbitrary_id;     
    eyedee: string;     
    
  end object;
  
  object car is
    
    iID: preferred integer;     
    common: integer;     
    
  end object;
  
  object connection is
    
    gID: preferred integer;     
    eID: referential ( R3.connects_to.host.eID ) integer;     
    fID: referential ( R3.connects_to.device.fID ) integer;     
    
    identifier is ( eID, fID );     
    
  end object;
  
  object host is
    
    eID: preferred integer;     
    ratio: real;     
    
  end object;
  
  object device is
    
    fID: preferred integer;     
    enabled: boolean;     
    
  end object;
  
  object deal is
    
    xaction: preferred integer;     
    value: integer;     
    buyer: referential ( R13.buys_from.dealer.name ) string;     
    seller: referential ( R13.sells_to.dealer.name ) string;     
    
  end object;
  
  object dealer is
    
    name: preferred string;     
    worth: integer;     
    
  end object;
  
  object dog is
    
    cID: preferred integer;     
    dID: referential ( R2.is_owned_by.dog_owner.dID ) integer;     
    
  end object;
  
  object dog_owner is
    
    dID: preferred integer;     
    name: string;     
    
  end object;
  
  object employee is
    
    nID: preferred integer;     
    name: string;     
    
  end object;
  
  object friend is
    
    name: preferred string;     
    age: integer;     
    
  end object;
  
  object friendship is
    
    duration: integer;     
    closeness: integer;     
    buddy: preferred referential ( R12.is_buddy_of.friend.name ) string;     
    pal: preferred referential ( R12.is_pal_of.friend.name ) string;     
    
  end object;
  
  object group_member is
    
    oID: preferred integer;     
    voo: string;     
    teacheroID: referential ( R8.learns_from.group_member.oID ) integer;     
    
  end object;
  
  object jurisdiction is
    
    qID: preferred arbitrary_id;     
    deeeye: string;     
    
  end object;
  
  object license is
    
    rID: arbitrary_id;     
    city: string;     
    pID: preferred referential ( R9.licenses.automobile.pID ) arbitrary_id;     
    qID: preferred referential ( R9.is_licensed_in.jurisdiction.qID ) arbitrary_id;     
    
  end object;
  
  object marriage is
    
    vID: preferred arbitrary_id;     
    year: integer;     
    wife: referential ( R11.is_husband_of.person.name ) string;     
    husband: referential ( R11.is_wife_of.person.name ) string;     
    
    identifier is ( wife, husband );     
    
  end object;
  
  object person is
    
    name: preferred string;     
    
  end object;
  
  object plug is
    
    aID: preferred integer;     
    i: integer;     
    bID: referential ( R1.enters.socket.bID ) integer;     
    
  end object;
  
  object socket is
    
    bID: preferred integer;     
    i: integer;     
    
    state first ();     
    state second ();     
    state third ();     
    
    event go ();     
    
    transition is
      Non_Existent ( go => Cannot_Happen );       
      first ( go => second );       
      second ( go => third );       
      third ( go => first );       
    end transition;
    
  end object;
  
  object report_line is
    
    mID: preferred integer;     
    works_for_nID: referential ( R7.manages.employee.nID ) integer;     
    manages_nID: referential ( R7.works_for.employee.nID ) integer;     
    department: string;     
    
    identifier is ( manages_nID, works_for_nID );     
    
  end object;
  
  object sample is
    
    uID: preferred arbitrary_id;     
    s: string;     
    sID: referential ( R10.is_sampled_by.AtoD_converter.sID ) arbitrary_id;     
    tID: referential ( R10.samples.analog_input.tID ) arbitrary_id;     
    
    identifier is ( sID, tID );     
    
  end object;
  
  object transmission is
    
    hID: preferred integer;     
    follows: referential ( R4.follows.transmission.hID ) integer;     
    
  end object;
  
  object sports_car is
    
    kID: preferred integer;     
    specialcommon: integer;     
    iID: referential ( R5.iID ) integer;     
    
    identifier is ( iID );     
    
  end object;
  
  object sedan is
    
    jID: preferred integer;     
    specialJ: integer;     
    iID: referential ( R5.iID ) integer;     
    
    identifier is ( iID );     
    
  end object;
  
  object convertible is
    
    lID: preferred integer;     
    specialL: integer;     
    kID: referential ( R6.kID ) integer;     
    
    identifier is ( kID );     
    
  end object;
  
  
end domain;
