\version "2.19.80"
\include "defines.ly"
midiTempo = 
  \midi {
    \tempo 4 = 160
    }


\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = ""
}

monoWords = \lyricmode {
  Mă -- ri -- re Ta -- tă -- lui şi Fi -- u -- lui -- şi Sfân -- tu -- lui Duh
  şi a -- cum şi pu -- ru -- rea şi în ve -- cii ve -- ci -- lor, a -- min.
  Doam -- ne mi -- lu -- ieş -- te,
  Doam -- ne mi -- lu -- ieş -- te,
  Doam -- ne mi -- lu -- ieş -- te.
  În -- tru nu -- me -- le Dom -- nu -- lui,
  pă -- rin -- te, bi -- ne -- cu -- vin -- tea -- ză.
}

monoMusic = \relative c' {
  \cadenzaOn
  \autoBeamOff

  f4 f4 f4 g4 g4 f4 g4 a4 a4 g4 a4 bes4( c4) bes4 a4 g2 \bar "|"
  g4 a4 bes4 g4 a4 f4 g2 a4 bes4 c4 bes4 a4 g4 f2 e2 f2 \bar "|"
  f4. f8 f8 f8 f4. f8
  a4. a8 a8 a8 a4. a8
  c4. c8 c8 c8 d2 c2 \bar "|"
  d4 c4 bes4 a4 g4 a2 bes2 c2
  c4 d2 c2 g4 a4 bes4 c4 bes2 a2 \bar "|."
}

\include "single-staff.ly"
