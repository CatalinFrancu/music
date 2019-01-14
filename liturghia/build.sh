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
runChecked texfot pdflatex -halt-on-error -shell-escape liturghia.tex
runChecked mv liturghia.pdf ../../
popd
popd
