\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
  \time 4/4
}

sopMusic = \relative c' {
  \partial 4 a'^\p a2. r4 \bar "|."
}

sopWords = \lyricmode {
  A -- min.
}

altoMusic = \relative c' {
  \partial 4 f^\p f2. r4
}

altoWords = \sopWords

tenorMusic = \relative c' {
  \partial 4 c^\p c2. r4
}

tenorWords = \sopWords

bassMusic = \relative c' {
  \partial 4 f,^\p <<f2. f,>> r4
}

bassWords = \sopWords

\include "four-staves.ly"
