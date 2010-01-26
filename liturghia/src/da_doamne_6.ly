\version "2.12.0"
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
  \set Staff.instrumentName = \markup { \bold \huge \larger 6. }
  \partial 4 c'4
  g8([^\accent a8 bes8^\> g8)] f4.\! r8 \bar "|."
}

altoMusic = \relative {
  \partial 4 f4
  d4(^\accent e4)^\> c4.\! r8
}

tenorMusic = \relative {
  \partial 4 a4
  bes8([^\accent a8 g8^\> bes8)] a4.\! r8
}

bassMusic = \relative {
  \partial 4 f,4
  bes,4(^\accent c4)^\> <f f,>4.\! r8
}

\include "four-staves.ly"
