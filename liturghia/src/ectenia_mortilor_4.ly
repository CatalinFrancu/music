\version "2.12.0"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
}

monoWords = \lyricmode {
  Doam -- ne mi -- lu -- ieş -- te.
}

monoMusic = \relative {
  d4 e4 f4 g4
  f2( e2)
  d2. r4 \bar "|."
}

\include "single-staff.ly"
