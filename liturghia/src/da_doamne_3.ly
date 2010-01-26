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
  \set Staff.instrumentName = \markup { \bold \huge \larger 3. }
  \partial 4 c'4^\<
  d2\!^\> c4.\! r8 \bar "|."
}

altoMusic = \relative {
  \partial 4 a'4^\<
  bes2\!^\> a4.\! r8
}

tenorMusic = \relative {
  \partial 4 f4^\<
  f2\!^\> f4.\! r8
}

bassMusic = \relative {
  \partial 4 f,4^\<
  <bes bes,>2\!^\> f4.\! r8
}

\include "four-staves.ly"
