\version "2.10.10"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
midiTempo = 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 72 4)
      }
    }


\include "preamble.ly"

\paper {
  line-width = 5.5\cm
}

\header {
  meter = "Largo"
}

global = {
  \globalPreamble
  \key e \minor
}

womenWords = \lyricmode { A -- min. }
menWords = \womenWords

sopMusic = \relative {
  b'2(^\pp c2) \bar "|"
  b1 \bar "|."
}

altoMusic = \relative {
  g'2( a2)
  g1
}

tenorMusic = \relative {
  e2(^\pp a,2)
  e'1
}

bassMusic = \relative {
  e,2( a2)
  e1
}

\include "two-staves.ly"
