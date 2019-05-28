#!/bin/bash
MASLMC=$HOME/git/masl/core-java/install/masl-core/bin/masl-core
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
if [[ "" == $GEN_calculator_keypad_LOC ]]; then
  GEN_calculator_keypad_LOC="$CWD/../keypad/masl/keypad"
fi
if [[ "" == $GEN_calculator_ALU_LOC ]]; then
  GEN_calculator_ALU_LOC="$CWD/../ALU/masl/ALU"
fi
$MASLMC -domainpath $GEN_calculator_keypad_LOC:$GEN_calculator_ALU_LOC -prj $CWD/masl/calculator/calculator.prj -output $CWD/gen/code_generation/calculator
$MASLMC -domainpath $GEN_calculator_keypad_LOC -mod $GEN_calculator_keypad_LOC/keypad.mod -output $CWD/gen/code_generation/keypad -custombuildfile gen/custom.cmake
$MASLMC -domainpath $GEN_calculator_ALU_LOC -mod $GEN_calculator_ALU_LOC/ALU.mod -output $CWD/gen/code_generation/ALU
cd $CWD
cmake . -DCMAKE_INSTALL_PREFIX=$PWD
