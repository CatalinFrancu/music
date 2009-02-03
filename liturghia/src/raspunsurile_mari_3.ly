\version "2.10.10"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
midiTempo = 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }


\include "preamble.ly"

global = {
  \globalPreamble
  \key e \minor
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = ""
  \time 4/4
}

womenWords = \lyricmode {
  A -- vem că -- tre Dom -- nul.
}
menWords = \womenWords

sopMusic = \relative {
  \cadenzaOn
  d4 \bar "|"
  g2 a4 a4 \bar "|"
  d8([ c8 b8 c8)] b2 \bar "|."
}

altoMusic = \relative {
  \cadenzaOn
  d4
  g2 fis4 fis4
  b8([ a8 g8 a8)] g2
}

tenorMusic = \relative {
  \cadenzaOn
  d,4
  g2 d4 d4
  d2 e2
}

bassMusic = \relative {
  \cadenzaOn
  d,4
  g2 d4 d4
  d2 e2
}

\include "two-staves.ly"
