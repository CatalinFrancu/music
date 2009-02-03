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
}

sopWords = \lyricmode {
  Ţi -- e Doam -- ne.
}
altoWords = \sopWords
tenorWords = \sopWords
bassWords = \sopWords

sopMusic = \relative {
  \partial 2 a'4^\accent a4
  g1^\>
  f2.\! r4 \bar "|."
}

altoMusic = \relative {
  \partial 2 f4^\accent f4
  e1^\>
  c2.\! r4 \bar "|."
}

tenorMusic = \relative {
  \partial 2 c4^\accent c4
  bes2(^\> c4 bes4)
  a2.\! r4 \bar "|."
}

bassMusic = \relative {
  \partial 2 f,4^\accent f4
  c1^\>
  <f f,>2.\! r4 \bar "|."
}

\include "four-staves.ly"
