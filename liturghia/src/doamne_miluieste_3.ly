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
  \set Staff.instrumentName = \markup { \bold \huge \bigger 3. }
  c'^\mp a bes^\< c
  d2\! c4~^\> c8\! r8 \bar "|."
}

sopWords = \lyricmode {
  Doam -- ne mi -- lu -- ieş -- te. __
}

altoMusic = \relative {
  a'4^\mp f g^\< a
 bes2\! a4~^\> a8\! r8
}

altoWords = \sopWords

tenorMusic = \relative {
  f4^\mp f f^\< f
  f2\! f4~^\> f8\! r8
}

tenorWords = \sopWords

bassMusic = \relative {
  f,4^\mp f f^\< f
  <bes bes,>2\! <f f,>4~^\> <f f,>8\! r8
}

bassWords = \sopWords

\include "four-staves.ly"
