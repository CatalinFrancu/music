\version "2.19.80"
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

sopMusic = \relative c' {
  \set Staff.instrumentName = \markup { \bold \huge \larger 4. }
  \partial 4 f'4
  e4(^\> d4) c4.\! r8 \bar "|."
}

altoMusic = \relative c' {
  \partial 4 a'4
  a4(^\> bes4) a4.\! r8
}

tenorMusic = \relative c' {
  \partial 4 f4
  f2^\> f4.\! r8
}

bassMusic = \relative c' {
  \partial 4 <d d,>4
  <c c,>4(^\> <bes bes,>4) <f f,>4.\! r8
}

\include "four-staves.ly"
