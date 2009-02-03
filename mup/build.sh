#!/bin/bash

function runChecked {
    cmd=$1
    shift
    $cmd $*
    if [[ $? -ne 0 ]]; then
	echo "******************* ERROR ********************"
	exit 1
    fi
}

function mup2eps {
    runChecked mup $1.mup > /tmp/tmp_mup
    runChecked ps2epsi /tmp/tmp_mup $1.eps
}

mup2eps amin_1
mup2eps dm_1
runChecked latex --interaction nonstopmode liturghia.tex
runChecked dvips -o liturghia.ps liturghia.dvi
