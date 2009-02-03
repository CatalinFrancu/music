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

function mup2eps {
    if [[ $1.mup -nt $1.eps ]]; then
	runChecked mup -m $1.mid $1.mup
	runChecked mup -f /tmp/mup_tmp.ps $1.mup
	runChecked ps2epsi /tmp/mup_tmp.ps $1.eps
    fi
}

function mup2spliteps {
    base=$1
    shift
    if [[ $base.mup -nt $base-page1.ps ]]; then
	runChecked mup -m $base.mid $base.mup
	runChecked mup -f /tmp/mup_tmp.ps $base.mup
	echo "[$1]"
	until [ -z "$1" ]; do
	    runChecked psselect $1 /tmp/mup_tmp.ps /tmp/$base-page$1.ps
	    runChecked ps2epsi /tmp/$base-page$1.ps $base-page$1.eps
	    shift
	done
    fi
}

mup2eps amin_1
mup2eps amin_2
mup2eps dm_1
mup2eps dm_2
mup2eps dm_3
mup2eps dm_4
mup2eps dm_5
mup2eps prea_sfanta_nascatoare
mup2eps tie_doamne
mup2spliteps antifonul_1 1 2
mup2spliteps antifonul_2 1 2
runChecked latex --interaction nonstopmode liturghia.tex
runChecked dvips -o liturghia.ps liturghia.dvi
runChecked rm *.dvi *.aux *.log
