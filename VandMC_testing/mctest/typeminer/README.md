typeminer
=========

#### Overview

This project contains tests and implementation for the typeminer EE. The
typeminer takes a MASL type body as input and populates a list of string type
names that are referred to by the type body. It returns the number of unique
referred to types. Built in MASL types are ignored.

#### Implementation

The implementation is based on a flex/bison parser generated from a modified
version of the MASL grammar.

#### Dependencies

This project depends on xtUML projects `masl`, `mcshared` (`mc` repo) and
`testbenching` (`models` repo).
