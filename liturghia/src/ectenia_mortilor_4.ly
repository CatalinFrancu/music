\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
}

monoWords = \lyricmode {
  Doam -- ne mi -- lu -- ieș -- te.
}

monoMusic = \relative c' {
  d4 e4 f4 g4
  f2( e2)
  d2. r4 \bar "|."
}

\include "single-staff.ly"
