\version "2.10.10"
\include "defines.ly"
\include "preamble.ly"

\header {
  title = "Doamne mântuieşte"
  subtitle = "glasul 8 (3 voci egale)"
  composer = "Armonizat de N. Lungu"
  meter = "Andante"
}

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = #mixedTimeSigMarkup
  \time 4/4
}

womenWords = \lyricmode {
  Doam -- ne mân -- tu -- ieş -- te pe cei bi -- ne cre -- din -- cioşi.
}
menWords = \womenWords

sopMusic = \relative {
  \cadenzaOn
  g'4^\p f e f \bar "|"
  g4.( a8 g4 a) \bar "|"
  f2 \bar "|"
  g4. bes8 a4 g \bar "|"
  f2 e \bar "|"
  f2. bes4\rest \bar "|."
}

altoMusic = \relative {
  \cadenzaOn
  g'4 f e f
  g4.( a8 g4 a)
  f2
  e4. g8 f4 e
  d2 e
  f2. bes4\rest
}

tenorMusic = \relative {
  \cadenzaOn
  g4^\p f e f
  g4.( a8 g4 a)
  f2
  c4. c8 f4 c
  d2 c
  f2. bes4\rest
}

bassMusic = \relative {
  \cadenzaOn
  g4 f e f
  g4.( a8 g4 a)
  f2
  c4. c8 f4 c
  d2 c
  f2. bes4\rest
}

\include "two-staves.ly"
