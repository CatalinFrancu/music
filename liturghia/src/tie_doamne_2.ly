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
}

sopWords = \lyricmode {
  Ți -- e Doam -- ne.
}
altoWords = \sopWords
tenorWords = \sopWords
bassWords = \sopWords

sopMusic = \relative c' {
  \partial 2 a'4^\accent a4
  g1^\>
  f2.\! r4 \bar "|."
}

altoMusic = \relative c' {
  \partial 2 f4^\accent f4
  e1^\>
  c2.\! r4 \bar "|."
}

tenorMusic = \relative c' {
  \partial 2 c4^\accent c4
  bes2(^\> c4 bes4)
  a2.\! r4 \bar "|."
}

bassMusic = \relative c' {
  \partial 2 f,4^\accent f4
  c1^\>
  <f f,>2.\! r4 \bar "|."
}

\include "four-staves.ly"
