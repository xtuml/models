domain SAC is
  object Group;
  object Group_For_Session;
  object Group_Operation;
  object Operation;
  object Session;
  object Session_Operation;
  object Session_Specification;
  object User;
  object Workstation;
  private type group_type is structure
    group_name: string;     
    operation_names: sequence of string;     
  end structure
  ;
  private type logged_on_type is enum ( logged_on, suspect )
  ;
    private service populate_domain_1 (
    );
pragma scenario ( 1 ); 
    private service resend_infos_3 (
    );
pragma scenario ( 3 ); 
    private service soa_subscribe_2 (
    );
pragma scenario ( 2 ); 
    private service test_SAC_1 (
    );
pragma external ( 1 ); pragma test_only ( "true" ); 
    public service add_group (
        group_name : in string    );
pragma soa_remote ( "" ); 
    public service add_operation_to_group (
        group_name : in string,        operations : in sequence of string    );
pragma soa_remote ( "" ); 
    public service delete_group (
        group_name : in string    );
pragma soa_remote ( "" ); 
    public service delete_group_operation (
        group_name : in string,        operations : in sequence of string    );
pragma soa_remote ( "" ); 
    public service populate_domain (
        reload_config_files : in boolean    );
pragma soa_remote ( "" ); 
    public service resend_infos (
    );
pragma soa_remote ( "transient" ); 
    public service session_active (
        session_id : in integer,        user_id : in integer,        login_name : in string    );
pragma soa_remote ( "" ); 
    public service user_logoff (
        session_id : in integer,        user_id : in integer,        login_name : in string    );
pragma soa_remote ( "" ); 
    public service user_logon (
        user_id : in integer,        login_name : in string,        user_name : in string,        workstation_hostname : in string,        groups : in sequence of string    );
pragma soa_remote ( "" ); 
  terminator Operator is
    private service group_deleted (
        group_name : in string    );
    private service group_operation_removed (
        group_name : in string,        operation_name : in string    );
    private service login_valid (
        session_id : in integer,        user_id : in integer,        is_valid : in boolean,        failure_reason : in string,        workstation_hostname : in string,        login_name : in string    );
    private service raise_notification (
        condition_description : in string,        condition_name : in string    );
    private service report_group (
        group_name : in string    );
    private service report_group_operation (
        group_name : in string,        operation_name : in string    );
    private service report_user (
        user_id : in integer,        login_name : in string,        user_name : in string,        logged_on : in logged_on_type    );
    private service report_user_group (
        uid : in integer,        group_name : in string,        login_name : in string,        session_id : in integer    );
    private service report_user_operation (
        user_id : in integer,        operation_name : in string,        login_name : in string,        session_id : in integer    );
    private service report_user_session (
        session_id : in integer,        user_id : in integer,        login_time : in timestamp,        session_timed_out : in boolean,        workstation_hostname : in string,        login_name : in string    );
    private service user_group_removed (
        uid : in integer,        group_name : in string,        login_name : in string,        session_id : in integer    );
    private service user_operation_removed (
        user_id : in integer,        operation_name : in string,        login_name : in string,        session_id : in integer    );
    private service user_removed (
        user_id : in integer,        login_name : in string    );
    private service user_session_deleted (
        session_id : in integer    );
  end terminator;
pragma key_letter ( "OP" ); 
  terminator System_Configuration is
    private service get_groups (
        groups : out sequence of group_type    );
    private service get_session_specification (
        heartbeat_time : out duration,        heartbeat_failure_threshold : out integer    );
    private service reload_config_files (
    );
  end terminator;
pragma key_letter ( "SCON" ); 
  relationship R1 is Group conditionally can_perform many Operation,
    Operation conditionally can_be_performed_by many Group
    using Group_Operation;
  relationship R2 is Group unconditionally current_members_are many Session,
    Session unconditionally is_member_of many Group
    using Group_For_Session;
  relationship R3 is User conditionally is_logged_on_to many Workstation,
    Workstation unconditionally is_being_used_by one User
    using Session;
  relationship R4 is Session_Specification conditionally defines_rules_for many Session,
    Session unconditionally rules_are_defined_by one Session_Specification;
  relationship R5 is Operation unconditionally has_been_allowed_for many Session,
    Session unconditionally has_allowed many Operation
    using Session_Operation;
  object Group is
    group_id : preferred unique integer;
    group_name :   string;
  end object;
pragma key_letter ( "G" ); pragma id ( 3 ); 
  object Group_For_Session is
    group_id : preferred  referential ( R2.is_member_of.Group.group_id ) integer;
    session_id : preferred  referential ( R2.current_members_are.Session.session_id ) integer;
  end object;
pragma key_letter ( "GFS" ); pragma id ( 6 ); 
  object Group_Operation is
    group_id : preferred  referential ( R1.can_be_performed_by.Group.group_id ) integer;
    operation_id : preferred  referential ( R1.can_perform.Operation.operation_id ) integer;
  end object;
pragma key_letter ( "GO" ); pragma id ( 5 ); 
  object Operation is
    operation_id : preferred unique integer;
    operation_name :   string;
  end object;
pragma key_letter ( "O" ); pragma id ( 4 ); 
  object Session is
    session_id : preferred unique integer;
    has_timed_out :   boolean;
    logon_time :   timestamp;
    session_heartbeat_failure :   integer;
    session_heartbeat_timer :   timer;
    login_name :   referential ( R3.is_being_used_by.User.login_name ) string;
    user_id :   referential ( R3.is_being_used_by.User.user_id ) integer;
    workstation_id :   referential ( R3.is_logged_on_to.Workstation.workstation_id ) integer;
    access_specification_id :   referential ( R4.rules_are_defined_by.Session_Specification.access_specification_id ) integer;
    identifier is ( workstation_id );
    public instance service delete_session (
    );
     state Created();
     state Session_Established();
     state Session_Heartbeat_Failed();
     state Session_Timed_Out();
     event heartbeat_timeout_expired();
     event session_timeout_reached();
     event user_logged_on();
     transition is
      Non_Existent (
        heartbeat_timeout_expired => Cannot_Happen,
        session_timeout_reached => Cannot_Happen,
        user_logged_on => Cannot_Happen      ); 
      Created (
        heartbeat_timeout_expired => Ignore,
        session_timeout_reached => Ignore,
        user_logged_on => Session_Established      ); 
      Session_Established (
        heartbeat_timeout_expired => Session_Heartbeat_Failed,
        session_timeout_reached => Ignore,
        user_logged_on => Ignore      ); 
      Session_Heartbeat_Failed (
        heartbeat_timeout_expired => Session_Heartbeat_Failed,
        session_timeout_reached => Session_Timed_Out,
        user_logged_on => Session_Established      ); 
      Session_Timed_Out (
        heartbeat_timeout_expired => Ignore,
        session_timeout_reached => Ignore,
        user_logged_on => Session_Established      ); 
    end transition;
  end object;
pragma key_letter ( "S" ); pragma id ( 8 ); 
  object Session_Operation is
    operation_id : preferred  referential ( R5.has_allowed.Operation.operation_id ) integer;
    session_id : preferred  referential ( R5.has_been_allowed_for.Session.session_id ) integer;
  end object;
pragma key_letter ( "SO" ); pragma id ( 10 ); 
  object Session_Specification is
    access_specification_id : preferred unique integer;
    session_heartbeat_failure_threshold :   integer;
    session_heartbeat_time :   duration;
  end object;
pragma key_letter ( "SS" ); pragma id ( 9 ); 
  object User is
    login_name : preferred  string;
    user_id : preferred  integer;
    is_logged_on :   logged_on_type;
    user_name :   string;
  end object;
pragma key_letter ( "U" ); pragma id ( 2 ); 
  object Workstation is
    workstation_id : preferred unique integer;
    workstation_hostname :   string;
  end object;
pragma key_letter ( "W" ); pragma id ( 7 ); 
end domain;
pragma number ( 59 ); 
