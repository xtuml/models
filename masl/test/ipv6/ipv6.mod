domain ipv6 is
  object Address;
  object AnycastAddress;
  object GlobalAddress;
  object GlobalUnicastAddress;
  object Interface;
  object Link;
  object LinkLocalAddress;
  object MulticastAddress;
  object Network;
  object NetworkParticipation;
  object Node;
  object NonGlobalAddress;
  object SiteLocalAddress;
  object UniqueLocalAddress;
  object Zone;
  private type IPv6Address;
  private type IPv6Address is string
  ;
  relationship R1 is Node unconditionally communicates_via many Interface,
    Interface unconditionally provides_communications_for one Node;
  relationship R2 is Interface unconditionally has_assigned many Address,
    Address unconditionally is_assigned_to one Interface;
  relationship R6 is Interface conditionally is_attached_to many Network,
    Network unconditionally comprises many Interface
    using NetworkParticipation;
  relationship R14 is Interface conditionally has_scope_of many Zone,
    Zone unconditionally provides_scope_for many Interface
    using Link;
  relationship R15 is Node conditionally nonglobal_scope_defined_by many Zone,
    Zone unconditionally defines_nonglobal_scope_for one Node;
  relationship R5 is Network unconditionally contains many Address,
    Address unconditionally participates_in one Network;
  relationship R12 is Address is_a ( GlobalAddress, NonGlobalAddress );
  relationship R10 is NonGlobalAddress is_a ( UniqueLocalAddress, SiteLocalAddress, LinkLocalAddress );
  relationship R11 is GlobalAddress is_a ( MulticastAddress, AnycastAddress, GlobalUnicastAddress );
  relationship R13 is Zone unconditionally scopes many NonGlobalAddress,
    NonGlobalAddress unconditionally has_scope_of one Zone;
  object Address is
    Address : preferred  IPv6Address;
    InterfaceName : preferred  referential ( R2.is_assigned_to.Interface.InterfaceName ) string;
    NodeName : preferred  referential ( R2.is_assigned_to.Interface.NodeName ) string;
    NetworkPrefix :   referential ( R5.participates_in.Network.NetworkPrefix ) IPv6Address;
    PrefixLength :   referential ( R5.participates_in.Network.PrefixLength ) integer;
  end object;
  object AnycastAddress is
    Address : preferred  referential ( R11.Address ) IPv6Address;
    InterfaceName : preferred  referential ( R11.InterfaceName ) string;
    NodeName : preferred  referential ( R11.NodeName ) string;
  end object;
  object GlobalAddress is
    Address : preferred  referential ( R12.Address ) IPv6Address;
    InterfaceName : preferred  referential ( R12.InterfaceName ) string;
    NodeName : preferred  referential ( R12.NodeName ) string;
  end object;
  object GlobalUnicastAddress is
    Address : preferred  referential ( R11.Address ) IPv6Address;
    InterfaceName : preferred  referential ( R11.InterfaceName ) string;
    NodeName : preferred  referential ( R11.NodeName ) string;
  end object;
  object Interface is
    InterfaceName : preferred  string;
    NodeName : preferred  referential ( R1.provides_communications_for.Node.NodeName ) string;
  end object;
  object Link is
    InterfaceName : preferred  referential ( R14.provides_scope_for.Interface.InterfaceName ) string;
    NodeName : preferred  referential ( R14.provides_scope_for.Interface.NodeName, R14.has_scope_of.Zone.NodeName ) string;
    ZoneId : preferred  referential ( R14.has_scope_of.Zone.ZoneId ) string;
  end object;
  object LinkLocalAddress is
    Address : preferred  referential ( R10.Address ) IPv6Address;
    InterfaceName : preferred  referential ( R10.InterfaceName ) string;
    NodeName : preferred  referential ( R10.NodeName ) string;
  end object;
  object MulticastAddress is
    Address : preferred  referential ( R11.Address ) IPv6Address;
    InterfaceName : preferred  referential ( R11.InterfaceName ) string;
    NodeName : preferred  referential ( R11.NodeName ) string;
  end object;
  object Network is
    NetworkPrefix : preferred  IPv6Address;
    PrefixLength : preferred  integer;
  end object;
  object NetworkParticipation is
    InterfaceName : preferred  referential ( R6.comprises.Interface.InterfaceName ) string;
    NodeName : preferred  referential ( R6.comprises.Interface.NodeName ) string;
    NetworkPrefix : preferred  referential ( R6.is_attached_to.Network.NetworkPrefix ) IPv6Address;
    PrefixLength : preferred  referential ( R6.is_attached_to.Network.PrefixLength ) integer;
  end object;
  object Node is
    NodeName : preferred  string;
  end object;
  object NonGlobalAddress is
    Address : preferred  referential ( R12.Address ) IPv6Address;
    InterfaceName : preferred  referential ( R12.InterfaceName ) string;
    NodeName : preferred  referential ( R13.has_scope_of.Zone.NodeName, R12.NodeName ) string;
    ZoneId :   referential ( R13.has_scope_of.Zone.ZoneId ) string;
  end object;
  object SiteLocalAddress is
    Address : preferred  referential ( R10.Address ) IPv6Address;
    InterfaceName : preferred  referential ( R10.InterfaceName ) string;
    NodeName : preferred  referential ( R10.NodeName ) string;
  end object;
  object UniqueLocalAddress is
    Address : preferred  referential ( R10.Address ) IPv6Address;
    InterfaceName : preferred  referential ( R10.InterfaceName ) string;
    NodeName : preferred  referential ( R10.NodeName ) string;
  end object;
  object Zone is
    NodeName : preferred  referential ( R15.defines_nonglobal_scope_for.Node.NodeName ) string;
    ZoneId : preferred  string;
  end object;
end domain;
