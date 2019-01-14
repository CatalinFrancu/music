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

mkdir -p midi
for fileName in src/*.ly; do
  if [ "$fileName" == "src/four-staves.ly" ] ||
     [ "$fileName" == "src/lyrics-in-between.ly" ] ||
     [ "$fileName" == "src/preamble.ly" ] ||
     [ "$fileName" == "src/single-staff.ly" ] ||
     [ "$fileName" == "src/two-staves.ly" ] ; then
    continue;
  fi

  # Strip the extension
  base=`basename $fileName`
  noExt=${base%.*}
  echo lilypond --ps $fileName.ly
  runChecked lilypond --ps $fileName
  echo rm $noExt.ps
  rm $noExt.ps
  echo mv $noExt*.midi midi/
  mv $noExt*.midi midi/
done
