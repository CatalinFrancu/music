#!/bin/bash

function runChecked {
    cmd=$1
    shift
    echo "**** Running: $cmd $*"
    $cmd $*
    if [[ $? -ne 0 ]]; then
        echo "******************* ERROR ********************"
        exit 1
    fi
}

pushd src
runChecked lilypond-book --psfonts -o lilypond-book-output liturghia.tex
pushd lilypond-book-output
runChecked latex liturghia.tex
runChecked dvips -t letter -o liturghia.ps -h liturghia.psfonts liturghia.dvi
mv liturghia.ps ../../
popd
popd
runChecked ps2pdf liturghia.ps
runChecked rm liturghia.ps
