\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 8.0)
\include "preamble.ly"

\header {
  title = "Şi ne auzi"
  subtitle = "glasul 8"
  composer = "Armonizat de N. Lungu"
  meter = "Adagio"
}

global = {
  \globalPreamble
  \key f \major
  \time 2/4
}

womenWords = \lyricmode {
  Şi __ ne a -- uzi şi ne a -- uzi __ pe __ noi
  şi ne a -- uzi pe __ noi, pe __ noi.
}

menWords = \lyricmode {
  Şi __ ne a -- uzi şi ne a -- uzi pe noi
  şi ne a -- uzi pe noi, pe __ noi.
}

sopMusic = \relative c' {
  \oneVoice
  R2
  \voiceOne
  f8([^\p g f g)]
  a4 bes
  c4. \breathe c8
  d4 e
  f2
  es4( d)
  c4. bes8
  a4 g8( a)
  f2
  g8([ a bes a)]
  g2
  f8([^\p e d e)]
  f2\fermata \bar "|."
}

altoMusic = \relative c' {
  s2
  f8([ g f g)]
  f4 g
  a4. a8
  bes4 bes
  a( c)
  c( bes)
  a4. g8
  f4 e
  f2
  e8([ f g f)]
  e2
  f8([ e d e)]
  f2\fermata
}

tenorMusic = \relative c' {
  f,2~^\p
  f
  f4 f
  f4. f8
  bes4 g
  f2
  f
  f4. g8
  f4 c
  f2
  c
  c
  f8([^\p e d c)]
  f2\fermata
}

bassMusic = \relative c' {
  f,2~
  f
  f4 f
  f4. f8
  bes4 g
  f2
  f
  f4. g8
  f4 c
  f2
  c
  c
  f8([ e d c)]
  f2\fermata
}

\include "two-staves.ly"
