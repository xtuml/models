#!/bin/bash
MASLMC=$HOME/git/masl/core-java/install/masl-core/bin/masl-core
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
if [[ "" == $GEN_Location_LOG_LOC ]]; then
  GEN_Location_LOG_LOC="$CWD/../../../../masl/EEs/LOG/masl/LOG"
fi
GEN_Location_Logger_LOC="$HOME/git/masl/examples/utils/Logger_OOA"
GEN_Location_Format_LOC="$HOME/git/masl/examples/utils/Format_OOA"
$MASLMC -domainpath $CWD/masl/Location:$GEN_Location_LOG_LOC -mod $CWD/masl/Location/Location.mod -output $CWD/gen/code_generation/Location
$MASLMC -domainpath $GEN_Location_LOG_LOC:$GEN_Location_Logger_LOC:$GEN_Location_Format_LOC -mod $GEN_Location_LOG_LOC/LOG.int -output $CWD/gen/code_generation/LOG
$MASLMC -domainpath $GEN_Location_Logger_LOC -mod $GEN_Location_Logger_LOC/Logger.int -output $CWD/gen/code_generation/Logger
$MASLMC -domainpath $GEN_Location_Format_LOC -mod $GEN_Location_Format_LOC/Format.int -output $CWD/gen/code_generation/Format
cd $CWD
cmake . -DCMAKE_INSTALL_PREFIX=$PWD
