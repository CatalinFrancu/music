\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  system-system-spacing.basic-distance = #20
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0.7\in
  bottom-margin = 0.7\in
}

\header {
  title = "Limba românească"
  composer = "Melodie veche"
  poet = "George Sion"
  tagline = ""
  meter = "Moderato"
}

#(set-global-staff-size 16)

global = {
  \key g \major
  \time 2/4
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
}

stanzaOne = \lyricmode {
  \set stanza = "1."
  Mult e dul -- ce și fru -- moa -- să
  Lim -- ba ce vor -- bim, __
  Al -- tă lim -- bă-ar -- mo -- ni -- oa -- să
  Ca ea nu gă -- sim;

  Sal -- tă i -- ni -- ma-n plă -- ce -- re,
  Când o as -- cul -- tăm __
  Și pe bu -- ze-a -- du -- ce mie -- re
  Când o cu -- vân -- tăm.
}

stanzaTwo = \lyricmode {
  \set stanza = "2."
  Ro -- mâ -- na -- șul o iu -- beș -- te
  Ca su -- fle -- tul său; __
  Vor -- biți, scri -- eți ro -- mâ -- neș -- te,
  Pen -- tru Dum -- ne -- zeu.

  Frați ce-n dul -- cea Ro -- mâ -- ni -- e
  Naș -- teți și mu -- riți, __
  Și-n lu -- mi -- na ei cea vi -- e
  Dul -- ce vie -- țu -- iți!
}

stanzaThree = \lyricmode {
  \set stanza = "3."
  De ce lim -- ba ro -- mâ -- neas -- că
  Să n-o cul -- ti -- văm? __
  Au vo -- iți ca să ro -- șeas -- că
  Țăr -- na ce-o căl -- căm?

  Lim -- ba, ța -- ra, vor -- be sfin -- te
  La stră -- moși e -- rau; __
  Vor -- biți, scri -- eți ro -- mâ -- neș -- te,
  Pen -- tru Dum -- ne -- zeu!
}

womenMusic = \relative c' {
  b'8^\p b8 c8 b8
  a8 g8 fis8 e8
  b'8 b8 c8 a8
  b4~ b8 r8
  \break

  b8 b8 c8 b8
  a8 g8 fis8 e8
  fis8 fis8 g8 fis8
  e4 r4
  \break

  b8 e8 g8 b8
  a8 g8 fis8 e8
  b'8 b8 c8 a8
  b4~ b8 r8
  \break

  b,8 e8 g8 b8
  a8 g8 fis8 e8
  fis8 fis8 g8 fis8
  e4 r4
  \bar "|."
}

menMusic = \relative c' {
  b8^\p b8 c8 b8
  a8 g8 fis8 e8
  g8 d8 e8 fis8
  g4~ g8 r8

  b8 b8 c8 b8
  a8 g8 fis8 e8
  dis8 dis8 b8 b8
  e4 r4

  b8 e8 g8 b8
  a8 g8 fis8 e8
  g8 d8 e8 fis8
  g4~ g8 r8

  b,8 e8 g8 b8
  a8 g8 fis8 e8
  dis8 dis8 b8 b8
  e4 r4
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \womenMusic }
    \addlyrics { \stanzaOne }
    \addlyrics { \stanzaTwo }
    \addlyrics { \stanzaThree }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \menMusic }
      \addlyrics { \stanzaOne }
      \addlyrics { \stanzaTwo }
      \addlyrics { \stanzaThree }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \tempo 4 = 72
}

\score {
  \unfoldRepeats
  \myScore
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \womenMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \menMusic }
  \midi { \midiOutput }
}
