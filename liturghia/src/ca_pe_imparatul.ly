\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 6.0)
\include "preamble.ly"

\header {
  title = "Ca pe Împăratul"
  subtitle = "glasul 8"
  composer = "Armonizat de N. Lungu"
  meter = "Moderato"
}

global = {
  \globalPreamble
  \key f \major
  \time 2/4
}

womenWords = \lyricmode {
  Ca pe Îm -- pă -- ra -- tul tu -- tu -- ror __ pri -- mind,
  pe Îm -- pă -- ra -- tul, Îm -- pă -- ra -- tul
  tu -- tu -- ror __ pri -- mind

  pe cel __ ne -- vă -- zut __ în -- con -- ju -- rat __
  de ce -- te -- le în -- ge -- reşti. __

  A -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a.
}

menWords = \lyricmode {
  Ca pe Îm -- pă -- ra -- tul tu -- tu -- ror pri -- mind,
  pe Îm -- pă -- ra -- tul, Îm -- pă -- ra -- tul
  tu -- tu -- ror __ pri -- mind

  de ce -- te -- le în -- ge -- reşti. __

  A -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a.
}

sopMusic = \relative c' {
  % Ca pe Împăratul tuturor primind
  f4.^\mf g8
  a4 bes4
  c4( d4)
  c2
  d4 d4
  e8([ f8 e8 d8)]
  e4.( f8)
  f4. \breathe

  % pe Împăratul, Împăratul tuturor primind
  c8^\p
  c4 c4
  d4 c8( bes8)
  a4 g8( a8)
  f4 f4
  g4 a8( bes8)
  a4( g4)
  f4( e4)
  f4. \breathe

  % pe cel nevăzut înconjurat
  g8
  a4.( bes8)
  a4 bes4
  c4.( d8
  c4) \breathe bes4
  a8( g8 a4)
  bes8( c8 bes4)
  c2~
  c4

  % de cetele îngereşti.
  c4
  d2
  d4 d4
  e8([ f8 e8 d8)]
  e4.( f8)
  f2~
  f4 bes,4\rest

  % Aliluia, aliluia, aliluia.
  f4 g4
  bes8( a8 g4)
  a4( bes4)
  c2
  bes4 a4
  d4( c4)
  bes4( c4)
  a2
  f4 g4
  a8([ bes8 a8 f8)]
  g4.( a8)
  f2 ^\fermata \bar "|."
}

altoMusic = \relative c' {
  % Ca pe Împăratul tuturor primind
  f4. g8
  a4 bes4
  c4( d4)
  c2
  bes4 g4
  c2
  c4( bes4)
  a4.

  % pe Împăratul, Împăratul tuturor primind
  a8
  a4 a4
  bes4 a8( g8)
  f4 e4
  f4 f4
  e4 f8( g8)
  f4( e4)
  f4( e4)
  f4.

  % pe cel nevăzut înconjurat
  e8
  f4.( g8)
  f4 g4
  a4.( bes8
  a4) g4
  f8( e8 f4)
  g8( a8 g4)
  a2~
  a4

  % de cetele îngereşti.
  a4
  bes2
  bes4 g4
  c2
  c4( bes4)
  a2~
  a4 bes4\rest

  % Aliluia, aliluia, aliluia.
  f4 g4
  bes8( a8 g4)
  f4( g4)
  a2
  g4 f4
  bes4( a4)
  g4( a4)
  f2
  f4 g4
  f2
  e2
  f2
}

tenorMusic = \relative c' {
  % Ca pe Împăratul tuturor primind
  f,4.^\mf g8
  a4 bes4
  c4( d4)
  c2
  bes4 g4
  c2
  c,2
  f4. \breathe

  % pe Împăratul, Împăratul tuturor primind
  f8^\p
  f4 f4
  bes4 a8( g8)
  f4 c4
  f4 f4
  c4 c4
  c2
  c2
  f4.

  % pe cel nevăzut înconjurat
  d8\rest
  \oneVoice
  R2 * 7
  \voiceOne
  d4\rest  

  % de cetele îngereşti.
  f4
  bes2
  bes4 g4
  c2
  c,2
  f2~
  f4 d4\rest

  % Aliluia, aliluia, aliluia.
  f4 g4
  f2
  f2
  f2
  d4 c4
  f2
  c2
  f2
  f4 g4
  f2
  c2
  f2 ^\fermata
}

bassMusic = \relative c' {
  % Same notes as the tenor, but no dynamics

  % Ca pe Împăratul tuturor primind
  f,4. g8
  a4 bes4
  c4( d4)
  c2
  bes4 g4
  c2
  c,2
  f4.

  % pe Împăratul, Împăratul tuturor primind
  f8
  f4 f4
  bes4 a8( g8)
  f4 c4
  f4 f4
  c4 c4
  c2
  c2
  f4.

  % pe cel nevăzut înconjurat
  d8\rest
  \oneVoice
  R2 * 7
  \voiceTwo
  d4\rest  

  % de cetele îngereşti.
  f4
  bes2
  bes4 g4
  c2
  c,2
  f2~
  f4 d4\rest

  % Aliluia, aliluia, aliluia.
  f4 g4
  f2
  f2
  f2
  d4 c4
  f2
  c2
  f2
  f4 g4
  f2
  c2
  f2
}

\include "two-staves.ly"
