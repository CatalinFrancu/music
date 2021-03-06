\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 8.0)
\include "preamble.ly"

\header {
  title = "Mărire Ție, Doamne"
  subtitle = "glasul 8"
  meter = "Maestoso"
}

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #mixedTimeSigMarkup
}

sopWords = \lyricmode {
  Mă -- ri -- re Ți -- e, Doam -- ne, mă -- ri -- re Ți -- e! __
}

altoWords = \sopWords

tenorWords = \sopWords

bassWords = \lyricmode {
  Mă -- ri -- re Ți -- e, Doam -- ne, __ mă -- ri -- re Ți -- e! __
}

sopMusic = \relative c' {
  \cadenzaOn

  f4^\mf \bar "|"
  a4^\accent a4 \bar "|"
  bes4^\accent a4 \bar "|"
  c2^\> c4\! \breathe f,4 \bar "|"
  g4^\< a4\! \bar "|"
  bes2~^\f \bar "|"
  bes2^\> a2~\! \bar "|"
  a4^\fermata r4 r4 \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn

  f4^\mf
  f4^\accent f4
  f4^\accent f4
  a2^\> a4\! \breathe f4
  f4^\< f4\!
  f2~^\f
  f2^\> f2~\!
  f4^\fermata r4 r4
}

tenorMusic = \relative c' {
  \cadenzaOn

  a4^\mf
  c4^\accent c4
  d4^\accent c4
  f2^\> c4\! \breathe a4
  bes4^\< c4\!
  d2~^\f
  d2^\> c2~\!
  c4^\fermata r4 r4
}

bassMusic = \relative c' {
  \cadenzaOn

  f,4^\mf
  f4^\accent f4
  f4^\accent f4
  f2 f2~
  f4 \breathe f4
  <bes bes,>4^\f^\accent <bes bes,>4^\accent
  <bes bes,>2^\accent^\> <f f,>2~\!
  <f f,>4^\fermata r4 r4
}

\include "four-staves.ly"
