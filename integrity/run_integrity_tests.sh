#!/bin/bash
# 
#  This utility is used to run integrity regression tests on a list of models
#
#   run_integrity_tests [-o <output directory>]
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# USAGE
print_usage () { 
    echo "Usage:"
    echo "        run_integrity_tests [-o <output directory>]";
}

# input variables
BPINSTALL="/build/buildmt/roundtrip/BridgePoint"
BPINSTALL="/Users/cort/xtuml/BridgePoint"
OUT_FILE=./integrity_report.txt

# parse arguments
DIRECTIVE=
for arg in $@; do
    if [[ $arg == "-o" ]]; then
        DIRECTIVE=$arg
    elif [[ $DIRECTIVE == "-o" ]]; then
        OUT_FILE=$arg
    else
        print_usage
        exit 1
    fi
done

# remove previous output file
if [[ -f $OUT_FILE ]]; then rm $OUT_FILE; fi

export BPHOME=$BPINSTALL

# Run tests
COUNTER=1
while read TEST; do
    if [[ $TEST != "#"* ]]; then
        # run integrity test on model
        echo $COUNTER $DIR/$TEST
        $BPINSTALL/tools/mc/bin/xtumlmc_build xtuml_integrity -i $DIR/$TEST >> $OUT_FILE
    fi
    COUNTER=$[$COUNTER +1]
done

# Grade the test.
echo $COUNTER tests run.
diff expected_results.txt $OUT_FILE && echo "All tests passed." || echo "Some tests failed."
