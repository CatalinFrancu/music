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
  \set Staff.instrumentName = \markup { \bold \huge \larger 5. }
  \partial 4 d'8( c8)
  bes4(^\> c4) a4.\! r8 \bar "|."
}

altoMusic = \relative {
  \partial 4 f4
  g2^\> f4.\! r8
}

tenorMusic = \relative {
  \partial 4 d4
  d4(^\> c4) c4.\! r8
}

bassMusic = \relative {
  \partial 4 bes8( a8)
  g4(^\> e4) f4.\! r8
}

\include "four-staves.ly"
