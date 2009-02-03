\version "2.10.10"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = ""
}

monoWords = \lyricmode {
  Pe toţi şi pe toa -- te.
}

monoMusic = \relative {
  \cadenzaOn
  f4 a2 g4 f4 g4( a4) f2
  \bar "|."
}

\include "single-staff.ly"
