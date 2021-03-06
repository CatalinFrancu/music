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
  \set Staff.instrumentName = \markup { \bold \huge \larger 5. }
  c'^\p c g a
  bes( g)^\> f4~ f8\! r \bar "|."
}

sopWords = \lyricmode {
  Doam -- ne mi -- lu -- ieș -- te. __
}

altoMusic = \relative c' {
  f4^\p f g f
  d( e)^\> c4~ c8\! r
}

altoWords = \sopWords

tenorMusic = \relative c' {
  a4^\p a c c
  bes2 a4~^\> a8\! r8
}

tenorWords = \sopWords

bassMusic = \relative c' {
  f,4^\p f e f
  bes,( c)^\> f4~ f8\! r
}

bassWords = \sopWords

\include "four-staves.ly"
