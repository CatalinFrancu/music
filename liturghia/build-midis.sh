mkdir -p midi
for fileName in src/*.ly; do
    # Strip the extension
    base=`basename $fileName`
    noExt=${base%.*}
    echo lilypond --ps $fileName.ly
    lilypond --ps $fileName
    echo rm $noExt.ps
    rm $noExt.ps
    echo mv $noExt*.midi midi/
    mv $noExt*.midi midi/
done
