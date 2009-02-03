\version "2.10.10"
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
  \set Staff.instrumentName = \markup{ \bigger "Soprano" \hspace #0.2 }
  \partial 4 a'^\mf a2. r4 \bar "|."
}

sopWords = \lyricmode {
  A -- min.
}

altoMusic = \relative {
  \set Staff.instrumentName = \markup{ \bigger "Alto" \hspace #0.2 }
  \partial 4 f^\mf f2. r4
}

altoWords = \sopWords

tenorMusic = \relative {
  \set Staff.instrumentName = \markup{ \bigger "Tenor" \hspace #0.2 }
  \partial 4 c^\mf c2. r4
}

tenorWords = \sopWords

bassMusic = \relative {
  \set Staff.instrumentName = \markup{ \bigger "Bas" \hspace #0.2 }
  \partial 4 f,^\mf <<f2. f,>> r4
}

bassWords = \sopWords

\include "four-staves.ly"
