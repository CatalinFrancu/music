\version "2.10.14"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Hora Unirii"
  composer = "Melodie veche"
  poet = "versuri de Vasile Alecsandri"
  tagline = ""
  meter = "Tempo di Hora"
}

global = {
  #(set-global-staff-size 17)
  \key g \major
  \time 6/8
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
}

stanzaOne = \lyricmode {
  \set stanza = "1."
  Hai să dăm mâ -- nă cu mâ -- nă
  Cei cu i -- ni -- ma __ ro -- mâ -- nă,
  Să-n -- vâr -- tim ho -- ra fră -- ţi -- ei
  Pe pă -- mân -- tul Ro -- mâ -- ni -- ei!

  Iar -- ba rea din hol -- de pia -- ră,
  Pia -- ră duş -- ma -- nii __ din ţa -- ră,
  În -- tre noi să nu __ mai fi -- e
  De -- cât flori şi ar -- mo -- ni -- e!
}

stanzaTwo = \lyricmode {
  \set stanza = "2."
  Măi mun -- te -- ne, măi ve -- ci -- ne,
  Vi -- no să te prinzi __ cu mi -- ne
  Şi la via -- ţă cu u -- ni -- re
  Şi la moar -- te cu-n -- fră -- ţi -- re!

  Un -- de-i u -- nul nu-i __ pu -- te -- re
  La ne -- voi şi la __ du -- re -- re;
  Un -- de-s doi, pu -- te -- rea creş -- te
  Şi duş -- ma -- nul nu __ spo -- reş -- te.
}

stanzaThree = \lyricmode {
  \set stanza = "3."
  A -- mân -- doi sun -- tem de-o ma -- mă,
  De-o făp -- tu -- ră şi __ de-o sea -- mă,
  Ca doi brazi în -- tr-o tul -- pi -- nă,
  Ca doi ochi în -- tr-o __ lu -- mi -- nă.

  A -- mân -- doi a -- vem __ un nu -- me,
  A -- mân -- doi o soar -- tă-n lu -- me,
  Eu ţi-s fra -- te, tu __ mi-eşti fra -- te,
  În noi doi un su -- flet ba -- te.
}

stanzaFour = \lyricmode {
  \set stanza = "4."
  Vin' la Mil -- cov cu gră -- bi -- re
  Să-l se -- căm din -- tr-o __ sor -- bi -- re,
  Ca să trea -- că dru -- mul ma -- re
  Pes -- te-a noas -- tre vechi __ ho -- ta -- re!

  Şi să va -- dă sfân -- tul soa -- re,
  În -- tr-o zi de săr -- bă -- toa -- re,
  Ho -- ra noas -- tră cea __ fră -- ţeas -- că
  Pe câm -- pi -- a ro -- mâ -- neas -- că!
}

womenMusic = \relative {
  g'4^\mf b8 e4 d8
  c4 b8 a4 b8
  c4 d8 b4 a8
  \break
  a8([^\< g8)] b8 d4 d8\! \breathe

  g,4^\f b8 e4 d8
  c4 b8 a4 b8
  c4 d8 b4 a8
  \break
  a8([^\> g8)] fis8 g4 g8\! \breathe

  d'4^\mf^^ g,8 g4 g8
  g8([ fis8)] e8 fis4 a8
  \break
  c4 c8 b4 a8
  a8([^\< g8)] b8 d4 d8\!

  d4^\f^^ g,8 g4 g8
  \break
  g8([ fis8)] e8 fis4 a8
  c4 c8 b4 a8
  a8([ g8)] fis8 g4 g8
  \bar "|."
}

menMusic = \relative {
  b4^\mf g8 c4 b8
  a4 g8 fis4 g8
  a4 fis8 g4 d8
  fis4^\< d8 g4 g8\! \breathe

  b4^\f g8 c4 b8
  a4 g8 fis4 g8
  a4 fis8 g4 d8
  fis4^\> d8 g4 g8\! \breathe

  d4^\mf^^ b'8 b4 b8
  b8([ a8)] g8 a4 fis8
  d4 fis8 g4 fis8
  fis4^\< g8 b4 b8\!

  d,4^\f^^ b'8 b4 b8
  b8([ a8)] g8 a4 fis8
  d4 fis8 g4 fis8
  fis8([ g8)] d8 g4 g8
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \womenMusic }
    \addlyrics { \stanzaOne }
    \addlyrics { \stanzaTwo }
    \addlyrics { \stanzaThree }
    \addlyrics { \stanzaFour }

    \new Staff <<
      \clef "bass"
      \new Voice { \global \menMusic }
      \addlyrics { \stanzaOne }
      \addlyrics { \stanzaTwo }
      \addlyrics { \stanzaThree }
      \addlyrics { \stanzaFour }
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
