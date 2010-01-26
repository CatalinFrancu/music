\version "2.12.0"
\include "defines.ly"
\include "preamble.ly"

\header {
  title = "Azi cu toţi să prăznuim"
  subtitle = "Colind de Florii"
  composer = "de Gh. Cucu"
}

global = {
  \globalPreamble
  \key g \major
  \time 2/4
}

allWords = <<
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "1. "
    Azi cu toţi să prăz -- nu -- im, __
    Pre Dum -- ne -- zeu să-L mă -- rim.
    Hris -- tos vi -- ne-n -- ce -- ti -- nel __
    Spre pa -- ti -- mă __ ca un __ miel. __
    O, mi -- nu -- ne, O, mi -- nu -- ne!
  }
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "2. "
    Azi in -- tră-n Ie -- ru -- sa -- lim __
    Că -- la -- re pe mânz a -- sin.
    De po -- por e __ aş -- tep -- tat __
    Ca un ma -- re __ îm -- pă -- rat. __
    O, mi -- nu -- ne, O, mi -- nu -- ne!
  }
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "3. "
    La poar -- tă e-n -- tâm -- pi -- nat, __
    Toţi o -- sa -- na i-au cân -- tat.
    O -- sa -- na din -- tru- -- năl --
    \set ignoreMelismata = ##t
    ţi -- me
    \unset ignoreMelismata
    Că Hris -- tos îm -- pă -- rat __
    \set ignoreMelismata = ##t
    vi -- ne.
    \unset ignoreMelismata
    O, mi -- nu -- ne, O, mi -- nu -- ne!
  }
  \new Lyrics \lyricsto "sopranos" {
    \set stanza = "4. "
    Prun -- cii cu stâl -- pări în
    \set ignoreMelismata = ##t
    mâ -- nă
    \unset ignoreMelismata
    Cân -- tă cu to -- ţii-m -- pre -- u-nă.
    O -- sa -- na din -- tru- -- năl --
    \set ignoreMelismata = ##t
    ţi -- me
    \unset ignoreMelismata
    Că Hris -- tos Dum -- ne zeu __
    \set ignoreMelismata = ##t
    vi -- ne.
    \unset ignoreMelismata
    O, mi -- nu -- ne, O, mi -- nu -- ne!
  }
>>

sopMusic = \relative {
  \autoBeamOff

  g'4. a8
  b4. g8
  a4. b8
  \slurDashed
  g4( d4)
  \slurSolid

  g4. a8
  b4. g8
  a4. b8
  g4. b8\rest

  g8 d'8 d8 c16([ b16)]
  d8 c16([ b16)] \slurDashed a8([ g8)] \slurSolid
  g8 d'8 d8 c16([ b16)]
  d8 c16([ b16)] \slurDashed a8([ g8)] \slurSolid

  g4. a8
  b4. g8
  a4. b8
  g4 g8 b8\rest \bar "|."
}

altoMusic = \relative {
  \autoBeamOff

  g'4. a8
  b4. g8
  fis4. g8
  d2

  g4. a8
  b4. g8
  fis4. g8
  d4. b'8\rest

  g8 b8 b8 a16([ g16)]
  b8 a16([ g16)] \slurDashed fis8([ g8)] \slurSolid
  g8 b8 b8 a16([ g16)]
  b8 a16([ g16)] \slurDashed fis8([ g8)] \slurSolid

  g4. fis8
  g4. g8
  fis4. fis8
  g4 g8 b8\rest
}

tenorMusic = \relative {
  \autoBeamOff
  \slurDashed

  g4. a8
  b4. g8
  d4. d8
  b4( d4)

  g4. a8
  b4. g8
  d4. d8
  g4. b8\rest

  g8 g8 g8 d8
  b8 c8 d8([ g8)]
  g8 g8 g8 d8
  b8 c8 d8([ g8)]

  e4. d8
  g4. g8
  d4. d8
  <g g,>4 <g g,>8 b8\rest  
}

bassMusic = { }

\include "lyrics-in-between.ly"
