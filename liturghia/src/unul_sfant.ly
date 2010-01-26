\version "2.12.0"
\include "defines.ly"
\include "preamble.ly"

\header {
  title = "Unul Sfânt"
  subtitle = "glasul 8"
  meter = "Maestoso"
}

global = {
  \globalPreamble
  \key c \major
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = ""
}

monoWords = \lyricmode {
  U -- nul Sfânt, u -- nul Domn __ I -- i -- sus Hris -- tos,
  În -- tru mă -- ri -- rea lui Dum -- ne -- zeu __ Ta -- tăl. A -- min.
}

monoMusic = \relative {
  \cadenzaOn

  c'4^\mf c4 c2 a4 b4 c4_(\accent b8[ a8)] g4 g4 a4 b4 c2. \breathe
  g4 \bar "|" c4 d4 e2 d4 c4 b4 a4 b4( c4) b4_(\accent a4) g2 \breathe
  a2( b2) c2. r4 \bar "|."
}

\include "single-staff.ly"
