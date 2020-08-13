//! This state shall delete this instance on the active object.
//! The purpose of this is to prove that a tagged active object
//! can be deleted by itself, and so can then be recreated
//! later.
terminal state TAGS::An_Active_Object.Expire () is
delete this