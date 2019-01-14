\version "2.19.80"
\include "defines.ly"
\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
}

monoWords = \lyricmode {
  Dă Doam -- ne, __
  Doam -- ne mi -- lu -- ieș -- te.
}

monoMusic = \relative c' {
  \partial 2 a'2
  g2 f4( g4)
  a4. a8 bes4 a4
  g2( a4 g4
  f2 e2)
  d2. r4 \bar "|."
}

\include "single-staff.ly"
