\version "2.10.10"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
}

sopWords = \lyricmode { Dă Doam -- ne! }
altoWords = \sopWords
tenorWords = \sopWords
bassWords = \sopWords

sopMusic = \relative {
  \set Staff.instrumentName = \markup { \bold \huge \bigger 1. }
  \partial 4 a'4^\p
  g2^\> f4.\! r8 \bar "|."
}

altoMusic = \relative {
  \partial 4 f4^\p
  e2^\> c4.\! r8
}

tenorMusic = \relative {
  \partial 4 c4^\p
  c4(^\> bes4) a4.\! r8
}

bassMusic = \relative {
  \partial 4 f,4^\p
  c2^\> <f f,>4.\! r8
}

\include "four-staves.ly"
