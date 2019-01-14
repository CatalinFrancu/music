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
  \set Staff.instrumentName = \markup { \bold \huge \larger 3. }
  c'^\mp a bes^\< c
  d2\! c4~^\> c8\! r8 \bar "|."
}

sopWords = \lyricmode {
  Doam -- ne mi -- lu -- ieș -- te. __
}

altoMusic = \relative c' {
  a'4^\mp f g^\< a
 bes2\! a4~^\> a8\! r8
}

altoWords = \sopWords

tenorMusic = \relative c' {
  f4^\mp f f^\< f
  f2\! f4~^\> f8\! r8
}

tenorWords = \sopWords

bassMusic = \relative c' {
  f,4^\mp f f^\< f
  <bes bes,>2\! <f f,>4~^\> <f f,>8\! r8
}

bassWords = \sopWords

\include "four-staves.ly"
