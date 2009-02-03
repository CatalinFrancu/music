\version "2.10.10"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
\include "preamble.ly"

global = {
  \globalPreamble
  \key c \major
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = ""
}

monoWords = \lyricmode {
  A -- min.
}

monoMusic = \relative {
  \cadenzaOn
  c4 \bar "|"
  e2. r4 \bar "|."
}

\include "single-staff.ly"
