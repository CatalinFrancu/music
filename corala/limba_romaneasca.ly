\version "2.10.14"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Limba românească"
  composer = "Melodie veche"
  poet = "George Sion"
  tagline = ""
  meter = "Moderato"
}

global = {
  #(set-global-staff-size 16)
  \key g \major
  \time 2/4
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
}

stanzaOne = \lyricmode {
  \set stanza = "1."
  Mult e dul -- ce şi fru -- moa -- să
  Lim -- ba ce vor -- bim, __
  Al -- tă lim -- bă-ar -- mo -- ni -- oa -- să
  Ca ea nu gă -- sim;

  Sal -- tă i -- ni -- ma-n plă -- ce -- re,
  Când o as -- cul -- tăm __
  Şi pe bu -- ze-a -- du -- ce mie -- re
  Când o cu -- vân -- tăm.
}

stanzaTwo = \lyricmode {
  \set stanza = "2."
  Ro -- mâ -- na -- şul o iu -- beş -- te
  Ca su -- fle -- tul său; __
  Vor -- biţi, scri -- eţi ro -- mâ -- neş -- te,
  Pen -- tru Dum -- ne -- zeu.

  Fraţi ce-n dul -- cea Ro -- mâ -- ni -- e
  Naş -- teţi şi mu -- riţi, __
  Şi-n lu -- mi -- na ei cea vi -- e
  Dul -- ce vie -- ţu -- iţi!
}

stanzaThree = \lyricmode {
  \set stanza = "3."
  De ce lim -- ba ro -- mâ -- neas -- că
  Să n-o cul -- ti -- văm? __
  Au vo -- iţi ca să ro -- şeas -- că
  Ţăr -- na ce-o căl -- căm?

  Lim -- ba, ţa -- ra, vor -- be sfin -- te
  La stră -- moşi e -- rau; __
  Vor -- biţi, scri -- eţi ro -- mâ -- neş -- te,
  Pen -- tru Dum -- ne -- zeu!
}

womenMusic = \relative {
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

menMusic = \relative {
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
  \context {
    \Score tempoWholesPerMinute = #(ly:make-moment 72 4)
  }
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
