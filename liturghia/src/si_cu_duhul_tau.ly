\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = ""
  \time 4/4
}

womenWords = \lyricmode {
  Şi cu du -- hul tău.
}
menWords = \womenWords

sopMusic = \relative c' {
  \cadenzaOn
  a'4 a4 \bar "|"
  bes4 g4 \bar "|"
  a2. b4\rest \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn
  f4 f4
  g4 e4
  f2. b4\rest
}

tenorMusic = \relative c' {
  \cadenzaOn
  f,4 f4
  c4 c4
  f2. d4\rest
}

bassMusic = \relative c' {
  \cadenzaOn
  f,4 f4
  c4 c4
  f2. d4\rest
}

\include "two-staves.ly"
