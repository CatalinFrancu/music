\version "2.19.80"
\include "defines.ly"
midiTempo = 
  \midi {
    \tempo 4 = 140
    }


\include "preamble.ly"

\header {
  meter = "Allegreto"
}

global = {
  \globalPreamble
  \key g \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #mixedTimeSigMarkup
  \time 2/4
}

sopWords = \lyricmode {
  Mă -- ri -- re Ta -- tă -- lui şi Fi -- u -- lui şi Sfân -- tu -- lui Duh.
  Şi a -- cum şi pu -- ru -- rea şi în ve -- cii ve -- ci -- lor. __ A -- min.
}

altoWords = \sopWords
tenorWords = \sopWords
bassWords = \sopWords

sopMusic = \relative c' {
  \cadenzaOn

  % Mărire Tatălui şi Fiului şi Sfântului Duh.
  e8^\mf \bar "|"
  e4 e \bar "|"
  a^\accent g a b^\< \bar "|"
  c a\! b cis \bar "|"
  d8(^\accent e d4) c8( b) a4^\> \bar "|"
  b2\! \breathe

  % Şi acum şi pururea şi în vecii vecilor, amin.
  e,4^\p e \bar "|"
  a^\accent g \bar "|"
  a^\accent b^\> b2\! \bar "|"
  b4 cis^\< d cis\! \bar "|"
  d8( e) d4^\> c8( b)\! \breathe a4^\< \bar "|"
  b1\! \bar "||"
}

altoMusic = \relative c' {
  \cadenzaOn

  % Mărire Tatălui şi Fiului şi Sfântului Duh.
  e8^\mf
  e4 e
  e^\accent e e e^\<
  e e\! e g
  fis2^\accent fis4 fis^\>
  g2\! \breathe

  % Şi acum şi pururea şi în vecii vecilor, amin.
  e4^\p e
  a^\accent g
  fis^\accent g^\> g2\!
  g4 g^\< fis fis\!
  b b^\> c8( b)\! \breathe a4^\<
  b1\!
}

tenorMusic = \relative c' {
  \cadenzaOn

  % Mărire Tatălui şi Fiului şi Sfântului Duh.
  e,8^\mf
  e4 e
  c'^\accent b c d^\<
  c c\! b a
  a2^\accent a4 d^\>
  d2\! \breathe

  % Şi acum şi pururea şi în vecii vecilor, amin.
  e4^\p e
  e^\accent d
  d^\accent d^\> d2\!
  e4 e^\< d e\!
  fis8( e) d4^\> c8( b)\! \breathe a4^\<
  b1\!
}

bassMusic = \relative c' {
  \cadenzaOn
  % Mărire Tatălui şi Fiului şi Sfântului Duh.
  e,8^\mf
  e4 e
  a^\accent g a b^\<
  a a\! e e
  d2^\accent d4 d^\>
  g2\! \breathe

  % Şi acum şi pururea şi în vecii vecilor, amin.
  e4^\p e
  c'^\accent b
  a^\accent g^\> g2\!
  g4 a^\> b b\!
  b b^\> c8( b)\! \breathe a4^\<
  b1\!
}

\include "four-staves.ly"
