\version "2.19.80"
\include "defines.ly"
\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
}

monoWords = \lyricmode {
  Doam -- ne mi -- lu -- ieș -- te,
  Doam -- ne mi -- lu -- ieș -- te,
  Doam -- ne mi -- lu -- ieș -- te.
}

monoMusic = \relative c' {
  a'4. a8 a4 a4
  bes4( a4 g4) f4
  g4. g8 g4 g4
  a4( g4 f4) e4
  d4. e8 f4 g4
  a2( g2)
  f2. r4 \bar "|."
}

\include "single-staff.ly"
