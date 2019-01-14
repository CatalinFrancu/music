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
  Cu vred -- ni -- ci -- e __ şi cu drep -- ta -- te
  es -- te __ a __ ne __ în -- chi -- na
  Ta -- tă -- lui şi Fi -- u -- lui şi Sfân -- tu -- lui Duh,
  Tre -- i -- mei __ cei de o fi -- in -- ţă __
  şi ne -- des păr -- ţi -- tă.
}
menWords = \lyricmode {
  şi cu drep -- ta -- te
  es -- te a ne în -- chi -- na
  Ta -- tă -- lui şi Fi -- u -- lui şi Sfân -- tu -- lui Duh,
  Tre -- i -- mei __ cei de o fi -- in -- ţă
  şi ne -- des păr -- ţi -- tă.  
}

sopMusic = \relative c' {
  \cadenzaOn

  % Cu vrednicie şi cu dreptate
  b'4\rest b4 b4 b8([ e8)] \bar "|"
  \acciaccatura fis8 e8([ d8 c8 d8)] b8( c8) a4 \bar "|"
  g4 a4 \bar "|"
  b8( c8) a4 \bar "|"

  % este a ne închina
  d8([ c8 b8 c8)] b4( \tuplet 3/2 { b8[ a8 g8)] } \bar "|"
  a8([^\p c8)] b8([ a8)] g8([ fis8)] e8([ dis8)] \bar "|"
  e2 \bar "|"

  % Tatălui şi Fiului şi Sfântului Duh,
  e'8.([ fis16 e8)] d8 c8([ b8)] a4 \bar "|"
  d8.([ e16 d8)] c8 b8([ a8)] g4 \bar "|"
  a8([ c8 b8 a8)] \tuplet 3/2 { a8([ g8 fis8)] } g8([ a8)] \bar "|"
  b2.

  % Treimei cei de o fiinţă şi nedespărţită.
  b4 \bar "|"
  g'2 g4.( fis8) \bar "|"
  fis4. e8 e4. d8 \bar "|"
  c8([ b8 c8 d8)] b8([ a8] g4) \bar "|"
  e'4^\rallMarkup d8([ c8)] b4 a4 \bar "|"
  \acciaccatura b8 a8([ g8 fis8 g8)] \bar "|"
  e2.^\fermata b'4\rest \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn

  % Cu vrednicie şi cu dreptate
  b'4\rest b4 b4 b8([ a8)]
  g8([ fis8 e8 fis8)] g4 fis4
  e4 fis4
  g8( a8) fis4

  % este a ne închina
  b8([ a8 g8 a8)] g4( \tuplet 3/2 { g8[ fis8 e8)] }
  fis8([ a8)] g8([ fis8)] e8([ fis8)] e8([ dis8)]
  e2

  % Tatălui şi Fiului şi Sfântului Duh,
  c'4. b8 a8([ g8)] fis4
  b4. a8 g8([ fis8)] g4
  fis8([ a8 g8 fis8)] \tuplet 3/2 { fis8([ e8 fis8)] } e8([ fis8)]
  g2.

  % Treimei cei de o fiinţă şi nedespărţită.
  b4
  e2 e4.( d8)
  d4. c8 c4. b8
  a8([ g8 a8 b8)] g8([ fis8] e4)
  c'4 b8([ a8)] g4 fis4
  a8([ g8 fis8 g8)]
  e2. b'4\rest
}

tenorMusic = \relative c' {
  % Cu vrednicie şi cu dreptate
  \cadenzaOff
  \oneVoice R1 \voiceOne

  \cadenzaOn
  d,2\rest d4\rest d4
  e4 d4
  g4 d4
  
  % este a ne închina
  d2 e2
  d2\rest
  b8 b8 b8 b8
  e2

  % Tatălui şi Fiului şi Sfântului Duh,
  c'4. g8 a8([ g8)] fis4
  e4. fis8 g8([ fis8)] e4
  d2 d4 d4
  g2.

  % Treimei cei de o fiinţă şi nedespărţită.
  b4
  b2 b2
  b4. g8 g4. g8
  d2 e2
  c'4 b8([ a)] g4 fis4
  e2
  e2.^\fermata d4\rest
}

bassMusic = \relative c' {
  % Cu vrednicie şi cu dreptate
  \cadenzaOff
  \oneVoice R1 \voiceTwo

  \cadenzaOn
  d,2\rest d4\rest d4
  e4 d4
  g4 d4
  
  % este a ne închina
  d2 e2
  d2\rest
  b8 b8 b8 b8
  e2

  % Tatălui şi Fiului şi Sfântului Duh,
  c'4. g8 a8([ g8)] fis4
  e4. fis8 g8([ fis8)] e4
  d2 d4 d4
  g2.

  % Treimei cei de o fiinţă şi nedespărţită.
  b4
  e,2 e4.( b8)
  b4. c8 c4. d8
  d2 e2
  c'4 b8([ a)] g4 fis4
  e2
  e2. d4\rest
}

\include "two-staves.ly"
