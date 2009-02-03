\version "2.10.10"
\include "defines.ly"
\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
}

monoWords = \lyricmode {
  Dă Doam -- ne, __
  Doam -- ne mi -- lu -- ieş -- te.
}

monoMusic = \relative {
  \partial 2 a'2
  g2 f4( g4)
  a4. a8 bes4 a4
  g2( a4 g4
  f2 e2)
  d2. r4 \bar "|."
}

\include "single-staff.ly"
