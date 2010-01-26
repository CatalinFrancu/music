\version "2.12.0"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
midiTempo = 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 124 4)
      }
    }


\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
}

sopMusic = \relative {
  \set Staff.instrumentName = \markup { \bold \huge \larger 4. }
  d' c^\> bes a\!
  bes (c) a4~ a8 r \bar "|."
}

sopWords = \lyricmode {
  Doam -- ne mi -- lu -- ieş -- te. __
}

altoMusic = \relative {
  f4 f^\> g a\!
  g2 f4~ f8 r
}

altoWords = \sopWords

tenorMusic = \relative {
  d4 d^\> d d\!
  d (c) c~ c8 r
}

tenorWords = \sopWords

bassMusic = \relative {
  bes4 a^\> g f\!
  e2 f4~ f8 r
}

bassWords = \sopWords

\include "four-staves.ly"
