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
runChecked lilypond-book --pdf -o lilypond-book-output liturghia.lytex
pushd lilypond-book-output
runChecked latex liturghia.tex
runChecked dvips -t letter -o liturghia.ps liturghia.dvi
mv liturghia.ps ../../
popd
popd
runChecked ps2pdf liturghia.ps
runChecked rm liturghia.ps
