\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
midiTempo = 
  \midi {
    \tempo 4 = 90
    }


\include "preamble.ly"

global = {
  \globalPreamble
  \key e \minor
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = ""
  \time 4/4
}

womenWords = \lyricmode {
  Și cu du -- hul tău.
}
menWords = \womenWords

sopMusic = \relative c' {
  \cadenzaOn
  b'4 b4 \bar "|"
  c4 a4 \bar "|"
  b2. b4\rest \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn
  g'4 g4
  a4 fis4
  g2. b4\rest
}

tenorMusic = \relative c' {
  \cadenzaOn
  e,4 e4
  d4 d4
  g2. d4\rest
}

bassMusic = \relative c' {
  \cadenzaOn
  e,4 e4
  d4 d4
  g2. d4\rest
}

\include "two-staves.ly"
