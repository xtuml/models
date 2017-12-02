domain IPv6Nodes is
  
  object Address;
  object AnycastAddress;
  object EUI48LinkLayerAddress;
  object EUI64LinkLayerAddress;
  object GeneralMulticastAddress;
  object GlobalScopedAddress;
  object GlobalUnicastAddress;
  object Host;
  object IPv4MappedAddress;
  object Interface;
  object LinkLayerAddress;
  object LinkLocalUnicastAddress;
  object LocalUnicastAddress;
  object LoopbackAddress;
  object MulticastAddress;
  object Network;
  object NetworkParticipation;
  object Node;
  object Router;
  object SolicitedNodeMulticastAddress;
  object UnicastAddress;
  object UnicastPrefixBasedMulticastAddress;
  
  public type IPv6Address;
  public type IPv4Address;
  public type EUI64Identifier;
  public type EUI48Identifier;
  public type IPv6Address is integer;   
  public type IPv4Address is integer;   
  public type EUI64Identifier is sequence of integer;   
  public type EUI48Identifier is sequence of integer;   
  
  
  relationship R1 is Node is_a ( Host, Router );   
  
  relationship R2 is Interface conditionally is_identified_by one LinkLayerAddress,
                     LinkLayerAddress unconditionally identifies one Interface;   
  
  relationship R3 is Node conditionally communicates_via many Interface,
                     Interface unconditionally presents_communications_for one Node;   
  
  relationship R4 is LinkLayerAddress is_a ( EUI48LinkLayerAddress, EUI64LinkLayerAddress );   
  
  relationship R5 is Interface conditionally is_allocated many Address,
                     Address unconditionally is_allocated_to one Interface;   
  
  relationship R6 is Address is_a ( UnicastAddress, AnycastAddress, MulticastAddress, LoopbackAddress );   
  
  relationship R7 is GlobalScopedAddress is_a ( GlobalUnicastAddress, LocalUnicastAddress );   
  
  relationship R8 is UnicastAddress is_a ( LinkLocalUnicastAddress, IPv4MappedAddress, GlobalScopedAddress );   
  
  relationship R9 is MulticastAddress is_a ( GeneralMulticastAddress, SolicitedNodeMulticastAddress, UnicastPrefixBasedMulticastAddress );   
  
  relationship R10 is Network unconditionally contains many GlobalScopedAddress,
                      GlobalScopedAddress unconditionally is_part_of one Network;   
  
  relationship R11 is Network unconditionally contains many Node,
                      Node unconditionally is_a_member_of many Network
                      using NetworkParticipation;   
  
  
  
  //!RFC 5952 formatted address
  object Address is
    
    Id: preferred integer;     
    InterfaceName: referential ( R5.is_allocated_to.Interface.Name ) string;     
    InterfaceId: referential ( R5.is_allocated_to.Interface.NodeId ) integer;     
    
  end object;
  
  //!RFC 4291 Section 2.6
  //!
  //!    |                         n bits                 |   128-n bits   |
  //!    +------------------------------------------------+----------------+
  //!    |                   subnet prefix                | 00000000000000 |
  //!    +------------------------------------------------+----------------+
  object AnycastAddress is
    
    Id: preferred referential ( R6.Id ) integer;     
    //!RFC 5952 formatted address
    SubnetPrefix: IPv6Address;     
    PrefixLength: integer;     
    
    public instance service GetAddress () return IPv6Address;     
    
  end object;
  
  object EUI48LinkLayerAddress is
    
    Name: preferred referential ( R4.InterfaceName ) string;     
    Id: preferred referential ( R4.InterfaceId ) integer;     
    Address: preferred EUI48Identifier;     
    
    public instance service GetInterfaceID () return EUI64Identifier;     
    
  end object;
  
  object EUI64LinkLayerAddress is
    
    Name: preferred referential ( R4.InterfaceName ) string;     
    Id: preferred referential ( R4.InterfaceId ) integer;     
    Address: preferred EUI64Identifier;     
    
    public instance service GetInterfaceID () return EUI64Identifier;     
    
  end object;
  
  //!RFC 3306 updated by RFC 7371 Section 4.1.1
  //!
  //!    |   8    |  4 |  4 |  4 |  4 |    8   |       64       |    32    |
  //!    +--------+----+----+----+----+--------+----------------+----------+
  //!    |11111111|ff1 |scop|ff2 |rsvd|  plen  | network prefix | group ID |
  //!    +--------+----+----+----+----+--------+----------------+----------+
  //!
  //!                                                  +-+-+-+-+
  //!   ff1 (flag field 1) is a set of 4 flags:        |X|Y|P|T|
  //!                                                  +-+-+-+-+
  //!
  //!   X and Y may each be set to 0 or 1.  Note that X is for future
  //!   assignment, while a meaning is associated with Y in RFC 3956.
  //!
  //!         o  P = 0 indicates a multicast address that is not assigned
  //!            based on the network prefix.  This indicates a multicast
  //!            address as defined in [RFC4291].
  //!
  //!         o  P = 1 indicates a multicast address that is assigned based
  //!            on the network prefix.
  //!
  //!         o  If P = 1, T MUST be set to 1; otherwise, the setting of the
  //!            T bit is defined in Section 2.7 of [RFC4291].
  //!
  //!                                                  +-+-+-+-+
  //!   ff2 (flag field 2) is a set of 4 flags:        |r|r|r|r|
  //!                                                  +-+-+-+-+
  //!
  //!   where "rrrr" are for future assignment as additional flag bits.
  //!   r bits MUST each be sent as zero and MUST be ignored on receipt.
  //!  
  object GeneralMulticastAddress is
    
    Id: preferred referential ( R9.Id ) integer;     
    GroupID: IPv6Address;     
    PrefixLength: integer;     
    NetworkPrefix: IPv6Address;     
    
    public instance service GetAddress () return IPv6Address;     
    
  end object;
  
  object GlobalScopedAddress is
    
    Id: preferred referential ( R8.Id ) integer;     
    GlobalRoutingPrefix: preferred referential ( R10.is_part_of.Network.GlobalRoutingPrefix ) IPv6Address;     
    PrefixLength: preferred referential ( R10.is_part_of.Network.PrefixLength ) integer;     
    
    public instance service GetAddress () return IPv6Address;     
    
  end object;
  
  //!RFC 4291 Section 2.5.4
  //!
  //!    |         n bits         |   m bits  |       128-n-m bits         |
  //!    +------------------------+-----------+----------------------------+
  //!    | global routing prefix  | subnet ID |       interface ID         |
  //!    +------------------------+-----------+----------------------------+
  object GlobalUnicastAddress is
    
    SubnetID: integer;     
    InterfaceID: integer;     
    Id: preferred referential ( R7.Id ) integer;     
    GlobalRoutingPrefix: preferred referential ( R7.GlobalRoutingPrefix ) IPv6Address;     
    PrefixLength: preferred referential ( R7.PrefixLength ) integer;     
    
    public instance service GetAddress () return IPv6Address;     
    
  end object;
  
  object Host is
    
    Id: preferred referential ( R1.Id ) integer;     
    
  end object;
  
  //!RFC 4291 Section 2.5.5.2
  //!
  //!    |                80 bits               | 16 |      32 bits        |
  //!    +--------------------------------------+--------------------------+
  //!    |0000..............................0000|FFFF|    IPv4 address     |
  //!    +--------------------------------------+----+---------------------+
  object IPv4MappedAddress is
    
    Id: preferred referential ( R8.Id ) integer;     
    IPAddress: IPv4Address;     
    
    public instance service GetAddress () return IPv6Address;     
    
  end object;
  
  object Interface is
    
    Name: preferred string;     
    NodeId: preferred referential ( R3.presents_communications_for.Node.Id ) integer;     
    
    public instance service CreateInterface ( name: in integer );     
    public instance service CreateLoopbackInterface ( name: in integer );     
    
  end object;
  
  object LinkLayerAddress is
    
    InterfaceName: preferred referential ( R2.identifies.Interface.Name ) string;     
    InterfaceId: preferred referential ( R2.identifies.Interface.NodeId ) integer;     
    
    public instance service GetInterfaceID () return EUI64Identifier;     
    
  end object;
  
  //!RFC 4291 Section 2.5.6
  //!
  //!    |   10     |
  //!    |  bits    |         54 bits         |          64 bits           |
  //!    +----------+-------------------------+----------------------------+
  //!    |1111111010|           0             |       interface ID         |
  //!    +----------+-------------------------+----------------------------+
  object LinkLocalUnicastAddress is
    
    Id: preferred referential ( R8.Id ) integer;     
    InterfaceID: integer;     
    
    public instance service GetAddress () return IPv6Address;     
    
  end object;
  
  //!RFC 4193
  //!
  //!
  //!    | 7 bits |1|  40 bits   |  16 bits  |          64 bits           |
  //!    +--------+-+------------+-----------+----------------------------+
  //!    | Prefix |L| Global ID  | Subnet ID |        Interface ID        |
  //!    +--------+-+------------+-----------+----------------------------+
  //!    
  //!      Prefix            FC00::/7 prefix to identify Local IPv6 unicast
  //!                        addresses.
  //!
  //!      L                 Set to 1 if the prefix is locally assigned.
  //!                        Set to 0 may be defined in the future.  See
  //!                        Section 3.2 for additional information.
  //!
  //!The GlobalRoutingPrefix is made up of the Prefix, L bit and Global ID.
  object LocalUnicastAddress is
    
    SubnetID: integer;     
    InterfaceID: integer;     
    Id: preferred referential ( R7.Id ) integer;     
    GlobalRoutingPrefix: preferred referential ( R7.GlobalRoutingPrefix ) IPv6Address;     
    PrefixLength: preferred referential ( R7.PrefixLength ) integer;     
    
    public instance service GetAddress () return IPv6Address;     
    
  end object;
  
  //!RFC 4191 Section 2.5.3
  //!
  //!Unicast address 0:0:0:0:0:0:0:1
  object LoopbackAddress is
    
    Id: preferred referential ( R6.Id ) integer;     
    
    public instance service GetAddress () return IPv6Address;     
    
  end object;
  
  //!RFC 4291 Section 2.7
  //!
  //!    |   8    |  4 |  4 |                  112 bits                   |
  //!    +------ -+----+----+---------------------------------------------+
  //!    |11111111|flgs|scop|                  group ID                   |
  //!    +--------+----+----+---------------------------------------------+
  //!    
  //!                                    +-+-+-+-+
  //!      flgs is a set of 4 flags:     |0|R|P|T|
  //!                                    +-+-+-+-+
  //!      scop is a 4-bit multicast scope value used to limit the scope of
  //!      the multicast group.  The values are as follows:
  //!
  //!         0  reserved
  //!         1  Interface-Local scope
  //!         2  Link-Local scope
  //!         3  reserved
  //!         4  Admin-Local scope
  //!         5  Site-Local scope
  //!         6  (unassigned)
  //!         7  (unassigned)
  //!         8  Organization-Local scope
  //!         9  (unassigned)
  //!         A  (unassigned)
  //!         B  (unassigned)
  //!         C  (unassigned)
  //!         D  (unassigned)
  //!         E  Global scope
  //!         F  reserved
  //!
  //! 
  //!                                    
  object MulticastAddress is
    
    Id: preferred referential ( R6.Id ) integer;     
    //!RFC 3956
    RendevousPointFlag: boolean;     
    PrefixFlag: boolean;     
    TransientFlag: boolean;     
    ScopeField: integer;     
    
    public instance service GetAddress () return IPv6Address;     
    
  end object;
  
  object Network is
    
    GlobalRoutingPrefix: preferred IPv6Address;     
    PrefixLength: preferred integer;     
    
  end object;
  
  object NetworkParticipation is
    
    GlobalRoutingPrefix: preferred referential ( R11.is_a_member_of.Network.GlobalRoutingPrefix ) IPv6Address;     
    PrefixLength: preferred referential ( R11.is_a_member_of.Network.PrefixLength ) integer;     
    Id: preferred referential ( R11.contains.Node.Id ) integer;     
    
  end object;
  
  object Node is
    
    Id: preferred integer;     
    Name: integer;     
    
  end object;
  
  object Router is
    
    Id: preferred referential ( R1.Id ) integer;     
    
  end object;
  
  //!RFC 4291 Section 2.7.1
  object SolicitedNodeMulticastAddress is
    
    Id: preferred referential ( R9.Id ) integer;     
    //!RFC 5952 formatted address
    UnicastAddress: integer;     
    
    public instance service GetAddress () return IPv6Address;     
    
  end object;
  
  //!RFC 4291 Section 2.5
  //!
  //!    |          n bits               |           128-n bits            |
  //!    +-------------------------------+---------------------------------+
  //!    |       subnet prefix           |           interface ID          |
  //!    +-------------------------------+---------------------------------+
  object UnicastAddress is
    
    Id: preferred referential ( R6.Id ) integer;     
    
    public instance service GetAddress () return IPv6Address;     
    
  end object;
  
  //!RFC 3306 updated in RFC 3956 and RFC 7371 section 4.2.1
  //!
  //!    |   8    |  4 |  4 |  4 |  4 | 8  |       64       |    32    |
  //!    +--------+----+----+----+----+----+----------------+----------+
  //!    |11111111|ff1 |scop|ff2 |rsvd|plen| network prefix | group ID |
  //!    +--------+----+----+----+----+----+----------------+----------+
  //!
  //!                                                        +-+-+-+-+
  //!         ff1 (flag field 1) is a set of four flags:     |X|R|P|T|
  //!                                                        +-+-+-+-+
  //!
  //!         where X is for future assignment as an additional flag bit.
  //!         X may be set to 0 or 1.
  //!
  //!                                                        +-+-+-+-+
  //!         ff2 (flag field 2) is a set of 4 flags:        |r|r|r|r|
  //!                                                        +-+-+-+-+
  //!
  //!         where "rrrr" are for future assignment as additional flag bits.
  //!         r bits MUST each be sent as zero and MUST be ignored
  //!         on receipt.
  //!         
  //!
  //!    |   8    |  4 |  4 |  4 |  4 | 8  |       64       |    32    |
  //!    +--------+----+----+----+----+----+----------------+----------+
  //!    |11111111|ff1 |scop|ff2 |RIID|plen| network prefix | group ID |
  //!    +--------+----+----+----+----+----+----------------+----------+
  //!                                         +-+-+-+-+
  //!         ff1 is a set of four flags:     |X|R|P|T|
  //!                                         +-+-+-+-+
  //!         where X is for future assignment as an additional flag bit.
  //!         X may be set to 0 or 1.
  //!
  //!      R = 1 indicates a multicast address that embeds the address of the
  //!      RP.  Then, P MUST be set to 1, and consequently T MUST be set
  //!      to 1, according to [RFC3306], as this is a special case of
  //!      unicast-prefix-based addresses.  This implies that, for instance,
  //!      prefixes ff70::/12 and fff0::/12 are embedded RP prefixes.  When
  //!      the R-bit is set, the last 4 bits of the field that were reserved
  //!      in [RFC3306] are interpreted as embedding the RP interface ID, as
  //!      specified in this memo.
  //!
  //!      
  //!      
  object UnicastPrefixBasedMulticastAddress is
    
    Id: preferred referential ( R9.Id ) integer;     
    RPInterfaceID: integer;     
    PrefixLength: integer;     
    NetworkPrefix: IPv6Address;     
    GroupID: integer;     
    
    public instance service GetAddress () return IPv6Address;     
    
  end object;
  
  
end domain;
