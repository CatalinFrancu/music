\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
midiTempo = 
  \midi {
    \tempo 4 = 124
    }


\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature.style = #'()
  \time 4/4
}

sopMusic = \relative c' {
  \set Staff.instrumentName = \markup { \bold \huge \larger 4. }
  d' c^\> bes a\!
  bes (c) a4~ a8 r \bar "|."
}

sopWords = \lyricmode {
  Doam -- ne mi -- lu -- ieș -- te. __
}

altoMusic = \relative c' {
  f4 f^\> g a\!
  g2 f4~ f8 r
}

altoWords = \sopWords

tenorMusic = \relative c' {
  d4 d^\> d d\!
  d (c) c~ c8 r
}

tenorWords = \sopWords

bassMusic = \relative c' {
  bes4 a^\> g f\!
  e2 f4~ f8 r
}

bassWords = \sopWords

\include "four-staves.ly"
