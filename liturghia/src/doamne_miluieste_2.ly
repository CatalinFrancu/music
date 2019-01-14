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
  \set Staff.instrumentName = \markup { \bold \huge \larger 2. }
  a'^\p a g^\< a
  bes(\! c)^\> a~ a8\! r \bar "|."
}

sopWords = \lyricmode {
  Doam -- ne mi -- lu -- ieș -- te. __
}

altoMusic = \relative c' {
  f4^\p f c^\< f
  e2\! f4~^\> f8\! r8
}

altoWords = \sopWords

tenorMusic = \relative c' {
  c4^\p c c^\< c
  c2\! c4~^\> c8\! r8
}

tenorWords = \sopWords

bassMusic = \relative c' {
  f,4^\p f e^\< f
  <<
    { \voiceOne g(\! a)^\> }
    \new Voice = "split" { \voiceTwo c,2 }
  >>
  \oneVoice <f f,>4~ <f f,>8\! r
}

bassWords = \sopWords

\include "four-staves.ly"
