#!/bin/bash
MASLMC=$HOME/git/masl/core-java/install/masl-core/bin/masl-core
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
if [[ "" == $GEN_UI_Tracking_LOC ]]; then
  GEN_UI_Tracking_LOC="$CWD/../Tracking/masl/Tracking"
fi
if [[ "" == $GEN_UI_LOG_LOC ]]; then
  GEN_UI_LOG_LOC="$CWD/../../../../masl/EEs/LOG/masl/LOG"
fi
GEN_UI_Logger_LOC="$HOME/git/masl/examples/utils/Logger_OOA"
GEN_UI_Format_LOC="$HOME/git/masl/examples/utils/Format_OOA"
$MASLMC -domainpath $CWD/masl/UI:$GEN_UI_Tracking_LOC:$GEN_UI_LOG_LOC:$GEN_UI_Logger_LOC:$GEN_UI_Format_LOC -mod $CWD/masl/UI/UI.mod -output $CWD/gen/code_generation/UI
$MASLMC -domainpath $GEN_UI_Tracking_LOC -mod $GEN_UI_Tracking_LOC/Tracking.int -output $CWD/gen/code_generation/Tracking
$MASLMC -domainpath $GEN_UI_LOG_LOC:$GEN_UI_Logger_LOC:$GEN_UI_Format_LOC -mod $GEN_UI_LOG_LOC/LOG.int -output $CWD/gen/code_generation/LOG
$MASLMC -domainpath $GEN_UI_Logger_LOC -mod $GEN_UI_Logger_LOC/Logger.int -output $CWD/gen/code_generation/Logger
$MASLMC -domainpath $GEN_UI_Format_LOC -mod $GEN_UI_Format_LOC/Format.int -output $CWD/gen/code_generation/Format
cd $CWD
cmake . -DCMAKE_INSTALL_PREFIX=$PWD
