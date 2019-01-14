\version "2.19.80"
\include "defines.ly"
midiTempo = 
  \midi {
    \tempo 4 = 90
    }


\include "preamble.ly"

global = {
  \globalPreamble
  \key e \minor
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = \mixedTimeSigMarkup
  \time 4/4
}

womenWords = \lyricmode {
  Sfânt, Sfânt, Sfânt e Dom -- nul __ Sa -- va -- ot,
  plin e ce -- rul și pă -- mân -- tul de __ mă -- ri -- rea Ta.
  O -- sa -- na, o -- sa -- na, o -- sa -- na,
  o -- sa -- na __ în -- tru cei de sus.
  Bi -- ne es -- te __ cu -- vân -- tat cel ce vi -- ne __
  în -- tru nu -- me -- le Dom -- nu -- lui. __
  O -- sa -- na, o -- sa -- na, o -- sa -- na,
  o -- sa -- na __ în -- tru cei de sus.
}
menWords = \lyricmode {
  Sfânt, Sfânt, Sfânt e Dom -- nul __ Sa -- va -- ot,
  plin e ce -- rul și pă -- mân -- tul de __ mă -- ri -- rea Ta.
  O -- sa -- na, o -- sa -- na, o -- sa -- na,

  \override LyricExtender.minimum-length = #15.0
  o -- sa -- na __ în -- tru cei
  \override LyricExtender.minimum-length = #7.0
  de __ sus.
  \override LyricExtender.minimum-length = #0.0
  Bi __ ne es -- te __ cu -- vân -- tat cel ce vi -- ne
  în -- tru nu -- me -- le Dom -- nu -- lui. __
  O -- sa -- na, o -- sa -- na, o -- sa -- na,
  \override LyricExtender.minimum-length = #7.0
  o -- sa -- na în -- tru cei de __ sus.
}

sopMusic = \relative c' {
  \accidentalStyle forget
  \cadenzaOn

  % Sfânt, Sfânt, Sfânt e Domnul Savaot,
  b'2^\f \bar "|"
  e2 \bar "|"
  e4 b4 \bar "|"
  c4 b8([ a8)] g4 a4 \bar "|"
  b2

  % Plin e cerul și pământul de mărirea Ta
  e4 fis4 \bar "|"
  g4.( fis8 e8([ dis8 e8 fis8)] \bar "|"
  e2 \bar "|"
  b4 b4 \bar "|"
  c8([ b8 a8 b8)] g2 \bar "|"
  g8([ fis8)] e4 b'4 b4 \bar "|"
  e,2. \breathe

  % Osana, osana, osana, osana întru cei de sus.
  d4 \bar "|"
  g4 g2 \breathe fis4 \bar "|"
  a4 a2 \breathe g4 \bar "|"
  b4 b2 \bar "|"
  e4 fis4 \bar "|"
  g8([ a8] g4) fis4 e4 \bar "|"
  fis4 dis4 \bar "|"
  e2 \bar "|"

  % Bine este cuvântat cel ce vine
  e4^\accent b4 \bar "|"
  c4 b8([ a8)] g4 a4 \bar "|"
  b2 a4 d4 \bar "|"
  d8([ c8 b8 c8)] b4~ \tuplet 3/2 { b8([ a8 g8)] } \bar "|"

  % Întru numele Domnului.
  a4 a4 \bar "|"
  e'4( d8[ c8]) b4 a4 \bar "|"
  g8([ a8)] fis8([ g8)] e2~ \bar "|"
  e4 \breathe

  % Osana, osana, osana, osana întru cei de sus.
  d4 \bar "|"
  g4 g2 \breathe fis4 \bar "|"
  a4 a2 \breathe g4 \bar "|"
  b4 b2. \bar "|"
  e4 fis4 \bar "|"
  g8([ a8] g4) fis4 e4 \bar "|"
  fis2 dis2 \bar "|"
  e2. b4\rest \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn

  % Sfânt, Sfânt, Sfânt e Domnul Savaot,
  b'2
  b2
  b4 b4
  c4 b8([ a8)] g4 fis4
  g2

  % Plin e cerul și pământul de mărirea Ta
  g4 b4
  e4.( dis8 b2)
  b2
  g4 g4
  a8([ g8 fis8 g8)] e2
  g8([ fis8)] e4 fis4 fis4
  e2. \breathe

  % Osana, osana, osana, osana întru cei de sus.
  d4
  g4 g2 \breathe fis4
  fis4 fis2 \breathe g4
  g4 g2
  c4 d4
  e2 dis4 e4
  \accidentalStyle forget
  dis4 b4
  b2

  % Bine este cuvântat cel ce vine
  b4_\accent b4
  c4 b8([ a8)] g4 fis4
  g2 fis4 a4
  a2 g2

  % Întru numele Domnului.
  a4 a4
  c4( b8[ a8]) g4 fis4
  g8([ a8)] fis8([ g8)] e2~
  e4 \breathe

  % Osana, osana, osana, osana întru cei de sus.
  d4
  g4 g2 \breathe fis4
  fis4 fis2 \breathe g4
  g4 g2.
  c4 d4 e2
  dis4 e4
  dis2 b2
  b2. b4\rest
}

tenorMusic = \relative c' {
  \accidentalStyle forget
  \cadenzaOn

  % Sfânt, Sfânt, Sfânt e Domnul Savaot,
  b2^\f
  g2
  g4 g4
  a4 g8([ fis8)] e4 d4
  g2

  % Plin e cerul și pământul de mărirea Ta
  d2\rest
  b'4. a8 g8([ fis8 g8 a8)]
  g2
  e4 e4
  d2 e2
  g8([ fis8)] e4 dis4 dis4
  e2. \breathe

  % Osana, osana, osana, osana întru cei de sus.
  d4
  g4 g2 \breathe d4
  d4 d2 \breathe g4
  g4 g2
  c4 c4
  b8([ c8] b4) b4 c4
  \accidentalStyle forget
  b4 b8([ a8)]
  g2

  % Bine este cuvântat cel ce vine
  e8([ fis8)] g4
  a4 g8([ fis8)] e4 d4
  g2 d4 d4
  d2 e2

  % Întru numele Domnului.
  a4 a4
  a2 e4 fis4
  g8([ a8)] fis8([ g8)] e2~
  e4 \breathe

  % Osana, osana, osana, osana întru cei de sus.
  d4
  g4 g2 \breathe d4
  d4 d2 \breathe g4
  g4 g2.
  c4 c4
  c2 b4 c4
  b2 b4( a4)
  g2. d4\rest
}

bassMusic = \relative c' {
  \accidentalStyle forget
  \cadenzaOn

  % Sfânt, Sfânt, Sfânt e Domnul Savaot,
  b2
  e,2
  e4 e4
  a4 g8([ fis8)] e4 d4
  g2

  % Plin e cerul și pământul de mărirea Ta
  d2\rest
  e4. fis8 g8([ fis8 e8 dis8)]
  e2
  e4 e4
  d2 e2
  g8([ fis8)] e4 b4 b4
  e2. \breathe

  % Osana, osana, osana, osana întru cei de sus.
  d4
  g4 g2 \breathe d4
  d4 d2 \breathe g4
  g4 g2
  c4 a4
  e2 fis4 g4
  \accidentalStyle forget
  b4 b,4
  e2

  % Bine este cuvântat cel ce vine
  e8([ fis8)] g4
  a4 g8([ fis8)] e4 d4
  g2 d4 d4
  d2 e2

  % Întru numele Domnului.
  a4 a4
  a2 e4 fis4
  g8([ a8)] fis8([ g8)] e2~
  e4 \breathe

  % Osana, osana, osana, osana întru cei de sus.
  d4
  g4 g2 \breathe d4
  d4 d2 \breathe g4
  g4 g2.
  c4 c4
  c2 b4 c4
  b2 b,2
  e2. d4\rest
}

\include "two-staves.ly"
