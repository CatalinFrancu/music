\version "2.19.80"
\include "defines.ly"
#(define myStaffSpacing 1.5)
midiTempo =
  \midi {
    \tempo 4 = 124
    }


\include "preamble.ly"

\header {
  title = "Ectenia întreită"
  subtitle = "glasul 8"
  composer = "Armonizat de N. Lungu"
  meter = "Moderato"
}

global = {
  \globalPreamble
  \key g \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #mixedTimeSigMarkup
  \time 2/4
}

womenWords = \lyricmode {
  Doam -- ne mi -- lu -- ieş -- te,
  Doam -- ne mi -- lu -- ieş -- te,
  Doam -- ne mi -- lu -- ieş -- te.
  Doam -- ne mi -- lu -- ieş -- te,
  Doam -- ne mi -- lu -- ieş -- te,
  Doam -- ne mi -- lu -- ieş -- te.
  Doam -- ne mi -- lu -- ieş -- te,
  Doam -- ne mi -- lu -- ieş -- te,
  Doam -- ne mi -- lu -- ieş -- te.
  Doam -- ne mi -- lu -- ieş -- te,
  Doam -- ne mi -- lu -- ieş -- te,
  Doam -- ne mi -- lu -- ieş -- te.
}

menWords = \womenWords

sopMusic = \relative c' {
  \cadenzaOn

  \prepareBox
  g'4.^\markup{\hspace #-5.0 \bold \box 1}^\mf fis8 g4 a4 \bar "|"
  b4 g4 \bar "|"
  a4. g8 fis4 e8([ fis8)] \bar "|"
  e4 d4 \bar "|"
  g4. fis8 g4 a4 \bar "|"
  b2( \bar "|"
  a2) \bar "|"
  g2. b4\rest \bar "||"

  \prepareBox
  d4.^\markup{\bold \box 2} c8 b4 c4 \bar "|"
  d4 b4 \bar "|"
  c4. b8 a4 b4 \bar "|"
  c4 a4 \bar "|"
  d4. c8 b4 a8([ b8)] \bar "|"
  a4( g8[ a8] b8[ c8 a8 b8)] \bar "|"
  g2. b4\rest \bar "||"

  \prepareBox
  d4.^\markup{\bold \box 3} d8 d4 d4 \bar "|"
  c4( b4 c4) a4 \bar "|"
  e'4. e8 e4 e4 \bar "|"
  d4( cis4 d4) b4 \bar "|"
  \accidentalStyle forget
  a4. b8 c4 e4 \bar "|"
  d2( c2) \bar "|"
  b2. b4\rest \bar "||"

  \prepareBox
  d4.^\markup{\bold \box 4} d8 b4 c4 \bar "|"
  d4.( b8 e4) d4 \bar "|"
  c4. c8 a4 b4 \bar "|"
  c4.( a8 d4) c4 \bar "|"
  b4. b8 b4 b4 \bar "|"
  e2( d4 c4 \bar "|"
  b2 a2) \bar "|"
  b2. b4\rest \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn

  g'4. fis8 g4 a4
  b4 g4
  fis4. g8 fis4 e8([ fis8)]
  e4 d4
  g4. fis8 g4 a4
  g2(
  fis2)
  g2. b4\rest

  b4. a8 g4 a4
  b4 g4
  a4. g8 fis4 g4
  a4 fis4
  b4. a8 g4 fis4
  fis1
  g2. b4\rest

  b4. b8 b4 b4
  a4( g4 a4) fis4
  c'4. c8 c4 c4
  b4( a4 b4) g4
  fis4. g8 a4 c4
  b2( a2)
  g2. b4\rest

  b4. b8 g4 a4
  b4.( g8 c4) b4
  a4. a8 fis4 g4
  a4.( fis8 b4) a4
  g4. g8 g4 g4
  c2( b4 a4
  g2 fis2)
  g2. b4\rest
}

tenorMusic = \relative c' {
  \cadenzaOn

  g4.^\mf fis8 g4 a4
  b4 g4
  d4. d8 d4 e8([ fis8)]
  e4 d4
  g4. d8 g4 a4
  g2(
  d2)
  g2. d4\rest

  g4. g8 g4 g4
  g4 g4
  d4. d8 d4 d4
  d4 d4
  g4. g8 g4 d4
  d1
  g2. d4\rest

  g4. g8 g4 g4
  d2. d4
  g4. g8 g4 g4
  g2. g4
  d4. d8 d4 d4
  d1
  g2. d4\rest

  g4. g8 g4 g4
  g2. g4
  d4. d8 d4 d4
  d2. dis4
  \accidentalStyle forget
  e4. e8 e4 e4
  g2( fis4 e4
  d1)
  g2. d4\rest
}

bassMusic = \relative c' {
  \cadenzaOn

  g4. fis8 g4 a4
  b4 g4
  d4. d8 d4 e8([ fis8)]
  e4 d4
  g4. d8 g4 a4
  g2(
  d2)
  g2. d4\rest

  g4. g8 g4 g4
  g4 g4
  d4. d8 d4 d4
  d4 d4
  g4. g8 g4 d4
  \wholeNotesOverlap
  d1
  g2. d4\rest

  g4. g8 g4 g4
  d2. d4
  c4. c8 c4 c4
  g'2. g4
  d4. d8 d4 d4
  \wholeNotesOverlap
  d1
  g2. d4\rest

  g4. g8 g4 g4
  g2. g4
  d4. d8 d4 d4
  d2. dis4
  \accidentalStyle forget
  e4. e8 e4 e4
  c4( a4 b4 c4
  \wholeNotesOverlap
  d1)
  g2. d4\rest
}

\include "two-staves.ly"
