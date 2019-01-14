\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
midiTempo = 
  \midi {
    \tempo 4 = 72
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

sopMusic = \relative c' {
  b'2(^\pp c2) \bar "|"
  b1 \bar "|."
}

altoMusic = \relative c' {
  g'2( a2)
  g1
}

tenorMusic = \relative c' {
  e2(^\pp a,2)
  e'1
}

bassMusic = \relative c' {
  e,2( a2)
  e1
}

\include "two-staves.ly"
