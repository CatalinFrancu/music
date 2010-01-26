\version "2.12.0"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
  \time 4/4
}

sopMusic = \relative {
  \set Staff.instrumentName = \markup{ \larger "Soprano" \hspace #0.2 }
  \partial 4 a'^\mf a2. r4 \bar "|."
}

sopWords = \lyricmode {
  A -- min.
}

altoMusic = \relative {
  \set Staff.instrumentName = \markup{ \larger "Alto" \hspace #0.2 }
  \partial 4 f^\mf f2. r4
}

altoWords = \sopWords

tenorMusic = \relative {
  \set Staff.instrumentName = \markup{ \larger "Tenor" \hspace #0.2 }
  \partial 4 c^\mf c2. r4
}

tenorWords = \sopWords

bassMusic = \relative {
  \set Staff.instrumentName = \markup{ \larger "Bas" \hspace #0.2 }
  \partial 4 f,^\mf <<f2. f,>> r4
}

bassWords = \sopWords

\include "four-staves.ly"
