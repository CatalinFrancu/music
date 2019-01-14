\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 10.0)
\include "preamble.ly"

\header {
  title = "Doamne mântuiește"
  subtitle = "glasul 8 (3 voci egale)"
  composer = "Armonizat de N. Lungu"
  meter = "Andante"
}

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #mixedTimeSigMarkup
  \time 4/4
}

womenWords = \lyricmode {
  Doam -- ne mân -- tu -- ieș -- te pe cei bi -- ne cre -- din -- cioși.
}
menWords = \womenWords

sopMusic = \relative c' {
  \cadenzaOn
  g'4^\p f e f \bar "|"
  g4.( a8 g4 a) \bar "|"
  f2 \bar "|"
  g4. bes8 a4 g \bar "|"
  f2 e \bar "|"
  f2. bes4\rest \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn
  g'4 f e f
  g4.( a8 g4 a)
  f2
  e4. g8 f4 e
  d2 e
  f2. bes4\rest
}

tenorMusic = \relative c' {
  \cadenzaOn
  g4^\p f e f
  g4.( a8 g4 a)
  f2
  c4. c8 f4 c
  d2 c
  f2. d4\rest
}

bassMusic = \relative c' {
  \cadenzaOn
  g4 f e f
  g4.( a8 g4 a)
  f2
  c4. c8 f4 c
  d2 c
  f2. d4\rest
}

\include "two-staves.ly"
