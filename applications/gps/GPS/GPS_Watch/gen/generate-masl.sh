#!/bin/bash
MASLMC=$HOME/git/masl/core-java/install/masl-core/bin/masl-core
CWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )
if [[ "" == $GEN_GPS_Watch_LOG_LOC ]]; then
  GEN_GPS_Watch_LOG_LOC="$CWD/../../../../masl/EEs/LOG/masl/LOG"
fi
if [[ "" == $GEN_GPS_Watch_UI_LOC ]]; then
  GEN_GPS_Watch_UI_LOC="$CWD/../UI/masl/UI"
fi
if [[ "" == $GEN_GPS_Watch_Location_LOC ]]; then
  GEN_GPS_Watch_Location_LOC="$CWD/../Location/masl/Location"
fi
if [[ "" == $GEN_GPS_Watch_HeartRateMonitor_LOC ]]; then
  GEN_GPS_Watch_HeartRateMonitor_LOC="$CWD/../HeartRateMonitor/masl/HeartRateMonitor"
fi
if [[ "" == $GEN_GPS_Watch_Tracking_LOC ]]; then
  GEN_GPS_Watch_Tracking_LOC="$CWD/../Tracking/masl/Tracking"
fi
GEN_GPS_Watch_Logger_LOC="$HOME/git/masl/examples/utils/Logger_OOA"
GEN_GPS_Watch_Format_LOC="$HOME/git/masl/examples/utils/Format_OOA"
$MASLMC -domainpath $GEN_GPS_Watch_UI_LOC:$GEN_GPS_Watch_Location_LOC:$GEN_GPS_Watch_HeartRateMonitor_LOC:$GEN_GPS_Watch_Tracking_LOC:$GEN_GPS_Watch_LOG_LOC -prj $CWD/masl/GPS_Watch/GPS_Watch.prj -output $CWD/gen/code_generation/GPS_Watch
$MASLMC -domainpath $GEN_GPS_Watch_UI_LOC:$GEN_GPS_Watch_LOG_LOC -mod $GEN_GPS_Watch_UI_LOC/UI.mod -output $CWD/gen/code_generation/UI
$MASLMC -domainpath $GEN_GPS_Watch_Location_LOC:$GEN_GPS_Watch_LOG_LOC -mod $GEN_GPS_Watch_Location_LOC/Location.mod -output $CWD/gen/code_generation/Location
$MASLMC -domainpath $GEN_GPS_Watch_HeartRateMonitor_LOC:$GEN_GPS_Watch_LOG_LOC:$GEN_GPS_Watch_Format_LOC -mod $GEN_GPS_Watch_HeartRateMonitor_LOC/HeartRateMonitor.mod -output $CWD/gen/code_generation/HeartRateMonitor
$MASLMC -domainpath $GEN_GPS_Watch_Tracking_LOC:$GEN_GPS_Watch_LOG_LOC -mod $GEN_GPS_Watch_Tracking_LOC/Tracking.mod -output $CWD/gen/code_generation/Tracking
$MASLMC -domainpath $GEN_GPS_Watch_LOG_LOC:$GEN_GPS_Watch_Logger_LOC:$GEN_GPS_Watch_Format_LOC -mod $GEN_GPS_Watch_LOG_LOC/LOG.int -output $CWD/gen/code_generation/LOG
$MASLMC -domainpath $GEN_GPS_Watch_Logger_LOC -mod $GEN_GPS_Watch_Logger_LOC/Logger.int -output $CWD/gen/code_generation/Logger
$MASLMC -domainpath $GEN_GPS_Watch_Format_LOC -mod $GEN_GPS_Watch_Format_LOC/Format.int -output $CWD/gen/code_generation/Format
cd $CWD
cmake . -DCMAKE_INSTALL_PREFIX=$PWD
