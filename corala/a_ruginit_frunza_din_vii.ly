\version "2.10.14"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "A ruginit frunza din vii"
  composer = "D. G. Kiriac"
  tagline = ""
  meter = "Allegretto"
}

global = {
  #(set-global-staff-size 17)
  \key g \major
  \time 3/4
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
}

stanzaOne = \lyricmode {
  \set stanza = "1."
  A ru -- gi -- nit frun -- za din vii
  Şi rân -- du -- ni -- ci -- le-au ple -- cat,
  Pus -- tii sunt la -- nuri şi câm -- pii,
  Pus -- ti -- i-s ho -- re -- le din sat.

  M. __ m. __ m. __ m. __
}

stanzaTwo = \lyricmode {
  \set stanza = "2."
  Când vi -- o -- ri -- ca va-n -- flo -- ri
  Şi rân -- du -- ni -- ca va so -- si,
  A -- tunci va creş -- te iar, în bolţi,
  Frun -- za bu -- tu -- ci -- lor în vii.
}

stanzaThree = \lyricmode {
  \set stanza = "3."
  Iar când în flori şi fân co -- sit
  Va tre -- ce va -- ra pe câm -- pii,
  În a -- ur la -- nu -- ri -- le-or fi
  Şi ho -- ra-n sat ne-on -- ve -- se -- li.
}

womenMusic = \relative {
  \partial 4. g'8^\mf g8 a8
  b4. b8 b8 b8
  d4. b8 b8 b8
  a4. a8 g8 a8
  \break

  b4. g8 g8 a8
  b4. b8 b8 b8
  d4. b8 b8 b8
  a4. a8 g8 a8
  g2 r4
  \break

  e2.(^\p
  g2.)
  a2.(
  b2.)
  e,2.(^\pp
  g2.)
  a2.\( \melisma
  b2.~
  b4.\) \melismaEnd s4.
  \bar "|."
}

menMusic = \relative {
  \partial 4. b,8^\mf b8 d8
  g4. g8 g8 g8
  b4. g8 g8 g8
  d4. d8 b8 d8

  g4. b,8 b8 d8
  g4. g8 g8 g8
  b4. g8 g8 g8
  d4. d8 b8 d8
  b2 r4

  c2.(^\p
  b2.)
  d2.(
  g2.)
  c,2.(^\pp
  b2.)
  d2.\( \melisma
  g2.~
  g4.\) \melismaEnd s4.
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
    \Score tempoWholesPerMinute = #(ly:make-moment 96 4)
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
