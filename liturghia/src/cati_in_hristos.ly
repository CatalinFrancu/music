\version "2.19.80"
\include "defines.ly"
\include "preamble.ly"

\header {
  title = "Câți în Hristos"
  composer = "de G.Musicescu"
  meter = "Moderato"
}

global = {
  \globalPreamble
  \key c \major
  \time 2/4
}

womenWords = \lyricmode {
  Câți în Hris -- tos v-ați bo -- te -- zat,
  În Hris -- tos v-ați și-m -- bră -- cat, __
  A -- li -- lu -- ia.
}
menWords = \womenWords

sopMusic = \relative c' {
  \autoBeamOff

  % Câți în Hristos v-ați botezat,
  e'4^\p d8 d8
  c4 b4
  c4 d4
  e2

  % În Hristos v-ați și-mbrăcat,
  d4 d4
  e4 d4
  c4 b4
  c4( d4) \breathe

  % Aliluia.
  e4 e4
  d2
  c2^\fermata \bar "|."
}

altoMusic = \relative c' {
  \autoBeamOff

  % Câți în Hristos v-ați botezat,
  c'4 b8 b8
  a4 g4
  a4 b4
  c2

  % În Hristos v-ați și-mbrăcat,
  b4 b4
  c4 b4
  a4 g4
  a4( b4)

  % Aliluia.
  c4 c4
  b2
  g2_\fermata
}

tenorMusic = \relative c' {
  \autoBeamOff

  % Câți în Hristos v-ați botezat,
  g4^\p g8 g8
  e4 e4
  e4 g4
  g2

  % În Hristos v-ați și-mbrăcat,
  g4 g4
  g4 g4
  e4 e4
  e4( g4) \breathe

  % Aliluia.
  g4 g4
  f2
  e2^\fermata
}

bassMusic = \relative c' {
  \autoBeamOff

  % Câți în Hristos v-ați botezat,
  c,4 g8 g8
  a4 b4
  a4 g4
  c2

  % În Hristos v-ați și-mbrăcat,
  g4 g4
  c4 g4
  a4 b4
  a4( g4)

  % Aliluia.
  c4 c4
  g2
  c2_\fermata
}

\include "two-staves.ly"
