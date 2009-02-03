\version "2.10.10"
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
  \set Staff.instrumentName = \markup { \bold \huge \bigger 1. }
  a'^\p a g^\< f
  g(\! a)^\> f~ f8\! r \bar "|."
}

sopWords = \lyricmode {
  Doam -- ne mi -- lu -- ieş -- te. __
}

altoMusic = \relative {
  f4^\p f c^\< f
  e2\! c4~^\> c8\! r8
}

altoWords = \sopWords

tenorMusic = \relative {
  c4^\p c bes^\< a
  bes2\! a4~^\> a8\! r8
}

tenorWords = \sopWords

bassMusic = \relative {
  f,4^\p f e^\< f
  c2\! <f f,>4~^\> <f f,>8\! r8
}

bassWords = \sopWords

\include "four-staves.ly"
