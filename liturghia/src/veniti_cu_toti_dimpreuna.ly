\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 7.0)
\include "preamble.ly"

\header {
  title = "Veniți cu toți dimpreună"
  subtitle = "Cântec de Florii"
  composer = "de Tim. Popovici"
  meter = "Moderato"
}

global = {
  \globalPreamble
  \key a \major
  \time 2/4
}

allWords = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "
    Ve -- niți cu __ toți dim -- pre -- u -- nă
    Să-m -- ple -- tim __ și noi cu --
    \set ignoreMelismata = ##t
    nu -- nă
    De o -- dras -- le în -- flo -- ri -- te
    Și de stâl -- pări în -- ver -- zi -- te.
    \unset ignoreMelismata

    O! __ mi -- nu -- ne! __
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "
    Pe Ii -- sus __ să-n -- tâm -- pi -- năm __ \skip 8
    Și Lui să __ ne în -- chi -- năm __
    \set ignoreMelismata = ##t
    Și a -- le noas -- tre veș -- min -- te
    Să le-aș -- ter -- nem î -- na -- in -- te.
    \unset ignoreMelismata

    O! __ mi -- nu -- ne! __
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "
    Că azi pe __ mânz de a -- sin __ \skip 8
    In -- tră în __ Ie -- ru -- sa -- lim __
    \set ignoreMelismata = ##t
    Hris -- tos Dom -- nul cu blân -- de -- țe,
    Pe po -- por ca să-l în -- ve -- țe.
    \unset ignoreMelismata

    O! __ mi -- nu -- ne! __
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "
    Azi pe Dom -- nul să-L mă -- rim __ \skip 8
    Și cu toți __ să prăz -- nu -- im __
    E zi -- ua Flo -- ri -- i -- lor, __
    Mult do -- ri -- tă tu -- tu -- ror. __

    O! __ mi -- nu -- ne! __
  }

  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "5. "
    Și de-a -- cum __ pâ -- nă-n ve -- ci -- e
    Vo -- ia Dom -- nu -- lui să
    \set ignoreMelismata = ##t
    fi -- e
    Tu -- tu -- ror de ve -- se li -- e,
    La creș -- tini  de bu -- cu -- ri -- e.
    \unset ignoreMelismata

    O! __ mi -- nu -- ne! __
  }
>>

sopMusic = \relative c' {
  \autoBeamOff

  a'4^\p b4
  cis8.([^\< b16 d8)]\! cis8
  b4 a8([ b8)]
  a8([^\> gis8 fis8)]\! e8

  a4^\p b4
  cis8.([^\< b16 d8)]\! cis8
  b4 a8([ gis8)]
  \slurDashed a4(^\> a8)\! b8\rest

  cis8 cis8^\< e8 e8\!
  d8 cis8 b8(^\> a8)\!
  cis8^\pp cis8 e8 e8
  d8 cis8 b8( a8)

  \slurSolid cis4( d4^\<
  cis4.)\! b8
  cis8([ b8^\> a8 gis8)]\!
  a4~ a8 b8\rest \bar "|."
}

altoMusic = \relative c' {
  \autoBeamOff

  a'4 gis4
  a8.([ gis16 b8)] a8
  gis4 e4
  e4( d8) e8

  e4 gis4
  a8.([ gis16 b8)] a8
  gis4 e4
  \slurDashed e4( e8) b'8\rest

  a8 a8 cis8 cis8
  b8 a8 gis8( e8)
  a8 a8 cis8 cis8
  b8 a8 gis8( e8)

  \slurSolid a2~
  a4. gis8
  e4~ e4
  e4~ e8 b'8\rest
}

tenorMusic = \relative c' {
  \autoBeamOff

  a4^\p e4
  e4.^\< e8\!
  e8([ d8)] cis8([ d8)]
  cis8([^\> b8 d8)]\! cis8

  cis4^\p e4
  e4.^\< e8\!
  e8([ d8)] cis8([ b8)]
  \slurDashed cis4(^\> cis8)\! b'8\rest

  a8 a8^\< a8 a8\!
  e8 e8 d8(^\> cis8)\!
  a'8^\pp a8 a8 a8
  e8 e8 d8( cis8)

  \slurSolid e4( fis4^\<
  e4.)\! d8
  e8([ d8^\> cis8 b8)]\!
  cis4~ cis8 b'8\rest
}

bassMusic = \relative c' {
  \autoBeamOff

  a4 e4
  e4. e8
  e8([ d8)] cis8([ d8)]
  cis8([ b8 d8)] cis8

  cis4 e4
  e4. e8
  e8([ d8)] cis8([ b8)]
  \slurDashed a4( a8) b'8\rest

  a,8 a8 a8 cis8
  e8 e8 d8( cis8)
  a8 a8 a8 cis8
  e8 e8 d8( cis8)

  \slurSolid a4( d4
  a4.) b8
  e8([ d8 cis8 b8)]
  a4~ a8 b'8\rest
}

\include "lyrics-in-between.ly"
