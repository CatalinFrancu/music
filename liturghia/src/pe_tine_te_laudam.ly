\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 6.0)
midiTempo = 
  \midi {
    \tempo 4 = 80
    }


\include "preamble.ly"

\header {
  title = "Pe Tine Te lăudăm"
  subtitle = "glasul 5"
  composer = "Armonizat de N. Lungu"
  meter = "Andante religioso-cantabile"
}

global = {
  \globalPreamble
  \key a \minor
  \time 2/4
}

womenWords = \lyricmode {
  Pre Ti -- ne __ Te __ lă -- u -- dăm, __
  Pre Ti -- ne __ bi -- ne __ Te __ cu -- vân -- tăm. __
  Ţi -- e Îţi mul -- ţu -- mim __ Doam -- ne
  şi ne ru -- găm __ Ţi -- e, Dum -- ne -- ze -- u -- lui __ nos -- tru. __
}

menWords = \lyricmode {
  Pre Ti -- ne Te lă -- u -- dăm, __
  Pre Ti -- ne bi -- ne __ Te cu -- vân -- tăm. __
  Ţi -- e Îţi mul -- ţu -- mim Doam -- ne
  şi ne ru -- găm Ţi -- e, Dum -- ne -- ze -- u -- lui __ nos -- tru. __
  Ne ru -- găm, __ ne ru -- găm. __
}

sopMusic = \relative c' {
  % Pre Tine Te lăudăm,
  \partial 4 b'4\rest
  b4\rest a4
  f'2
  \tuplet 3/2 { g8[( f8 e8~)] } e4
  \tuplet 3/2 { f8[( e8 d8~)] } d4
  \tuplet 3/2 { e8[( d8 c8~)] } c4
  d4( c8[ d8])
  e2~
  e4

  % Pre Tine bine Te cuvântăm.
  b4\rest
  b4\rest a4^\p
  f'4( a4)
  \tuplet 3/2 { g8[( f8 e8~)] } e4
  \tuplet 3/2 { f8[( e8 d8~)] } d4
  \tuplet 3/2 { e8[( d8 c8~)] } c4
  \tuplet 3/2 { d8[( c8 b8~)] } b4
  \tuplet 3/2 { c8[( b8 a8~)] } a4
  gis4( fis8[ gis8)]
  a2~^\>
  a4\! b4\rest

  % Ţie Îţi mulţumim, Doamne,
  c4~^\accent c16([ b16 d16 c16])
  b2
  \autoBeamOff
  b4^\> d8 e8\!
  \autoBeamOn
  f4( e4)
  d4( e8[ f8)]
  e2^\>

  % Şi ne rugăm Ţie, Dumnezeului nostru
  \autoBeamOff
  e4\!^\p e8 e8
  \autoBeamOn
  a4(^\ritMarkup g4)
  \acciaccatura g8 f8([ e8 d8 f8)]
  e2^\>
  c4\! c4^\atempoMarkup
  f8([ e8 d8 e8)]
  c8([ d8 c8 b8)]
  a4( b8[ c8])
  d8([ c16 d16] c8[ b8]
  a4 gis4)^\>
  a2~\!^\pp^\>
  a2~\!
  a2~^\<
  a2~\!^\>
  a2~\!^\ppp
  a4^\fermata b4\rest \bar "|."
}

altoMusic = \relative c' {
  % Pre Tine Te lăudăm,
  \partial 4 b'4\rest
  b4\rest a4
  d2
  \tuplet 3/2 { e8[( d8 c8~)] } c4
  \tuplet 3/2 { d8[( c8 b8~)] } b4
  \tuplet 3/2 { c8[( b8 a8~)] } a4
  a2
  gis2~
  gis4

  % Pre Tine bine Te cuvântăm.
  b4\rest
  b4\rest a4
  d4( f4)
  \tuplet 3/2 { e8[( d8 c8~)] } c4
  \tuplet 3/2 { d8[( c8 b8~)] } b4
  \tuplet 3/2 { c8[( b8 a8~)] } a4
  \tuplet 3/2 { b8[( a8 gis8~)] } gis4
  \tuplet 3/2 { a8[( gis8 a8~)] } a4
  gis4( fis8[ gis8)]
  a2~
  a4 b4\rest

  % Ţie Îţi mulţumim, Doamne,
  a2
  g2
  \autoBeamOff
  g4 b8 c8
  \autoBeamOn
  d4( c4)
  b4( c8[ d8)]
  c2

  % Şi ne rugăm Ţie, Dumnezeului nostru
  \autoBeamOff
  c4 d8 d8
  \autoBeamOn
  c4( e4)
  d8([ c8 b8 d8)]
  c2
  c4 c4
  d8([ c8 b8 c8)]
  a8([ b8 a8 gis8)]
  a4( gis8[ a8])
  b8([ a16 b16] a8[ gis8]
  a4 gis4)
  a2~
  a2~
  a2~
  a2~
  a2~
  a4 b4\rest
}

tenorMusic = \relative c' {
  % Pre Tine Te lăudăm,
  \partial 4 a4^\pp
  a2~
  a2
  a2
  a2
  a2
  f2
  e2~
  e4 \breathe

  % Pre Tine bine Te cuvântăm.
  a4
  a2~
  a2
  a2
  d,4( e4)
  e4( f4)
  e2
  e2
  e2
  e2~^\>
  e4\! d4\rest

  % Ţie Îţi mulţumim, Doamne,
  a'4(^\accent f4)^\>
  g2\!
  \autoBeamOff
  g4^\< g8 g8\!
  g2
  g2
  g2^\>
  
  % Şi ne rugăm Ţie, Dumnezeului nostru  
  c4\!^\p b8 gis8
  \autoBeamOn
  a2
  a2
  a2^\>
  a4\! a4
  a4( e4)
  e2
  f4( e4)
  e2~
  e2
  e2~^\pp^\>
  e4\!

  % Ne rugăm, ne rugăm.
  \autoBeamOff
  e8 e8^\<
  f2~\!^\>
  f4\! \breathe f8^\accent f8^\accent
  \autoBeamOn
  e2~^\ppp
  e4^\fermata d4\rest
}

bassMusic = \relative c' {
  % Pre Tine Te lăudăm,
  \partial 4 a4
  a2~
  a2
  a2
  a2
  a2
  f2
  e2~
  e4 \breathe

  % Pre Tine bine Te cuvântăm.
  a4
  a2~
  a2
  a,2
  d4( e4)
  e4( f4)
  e2
  e2
  e2
  a,2~
  a4 d4\rest

  % Ţie Îţi mulţumim, Doamne,
  a'4( f4)
  g2
  \autoBeamOff
  g4 g8 g8
  g2
  g2
  c,2
  
  % Şi ne rugăm Ţie, Dumnezeului nostru  
  c'4 b8 gis8
  \autoBeamOn
  a2
  a2
  a2
  a4 a4
  d,4( e4)
  e2
  f4( e4)
  e2~
  e2
  a,2~
  a4

  % Ne rugăm, ne rugăm.
  \autoBeamOff
  a8 a8
  d2~
  d4 d8 d8
  \autoBeamOn
  a2~
  a4 d4\rest
}

\include "two-staves.ly"
