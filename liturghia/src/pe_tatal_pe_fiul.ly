\version "2.19.80"
\include "defines.ly"
\include "preamble.ly"

global = {
  \globalPreamble
  \key d \minor
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = ""
}

monoWords = \lyricmode {
  Pe Ta -- tăl, pe Fi -- ul şi pe Sfân -- tul Duh, __
  Tre -- i -- mea cea de o __ fi -- in -- ţă
  şi ne -- des -- păr -- ţi -- tă.
}

monoMusic = \relative c' {
  \cadenzaOn

  c4 f2 f4 f4 g4 g4 f4 e4 f4 g4 a2~ a8 r8
  a4 f'2 e2 \bar "|" d4 c4 bes8( a8) g4 \acciaccatura d'8 c8([ bes a8 bes8)] a2
  f4 f4 g4 g4 \acciaccatura bes8 a4( g4 f4 e4) d2
  \bar "|."
}

\include "single-staff.ly"
