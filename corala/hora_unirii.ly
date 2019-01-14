\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0.7\in
  bottom-margin = 0.7\in
}

\header {
  title = "Hora Unirii"
  composer = "Melodie veche"
  poet = "versuri de Vasile Alecsandri"
  tagline = ""
  meter = "Tempo di Hora"
}

#(set-global-staff-size 17)

global = {
  \key g \major
  \time 6/8
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
}

stanzaOne = \lyricmode {
  \set stanza = "1."
  Hai să dăm mâ -- nă cu mâ -- nă
  Cei cu i -- ni -- ma __ ro -- mâ -- nă,
  Să-n -- vâr -- tim ho -- ra fră -- ți -- ei
  Pe pă -- mân -- tul Ro -- mâ -- ni -- ei!

  Iar -- ba rea din hol -- de pia -- ră,
  Pia -- ră duș -- ma -- nii __ din ța -- ră,
  În -- tre noi să nu __ mai fi -- e
  De -- cât flori și ar -- mo -- ni -- e!
}

stanzaTwo = \lyricmode {
  \set stanza = "2."
  Măi mun -- te -- ne, măi ve -- ci -- ne,
  Vi -- no să te prinzi __ cu mi -- ne
  Și la via -- ță cu u -- ni -- re
  Și la moar -- te cu-n -- fră -- ți -- re!

  Un -- de-i u -- nul nu-i __ pu -- te -- re
  La ne -- voi și la __ du -- re -- re;
  Un -- de-s doi, pu -- te -- rea creș -- te
  Și duș -- ma -- nul nu __ spo -- reș -- te.
}

stanzaThree = \lyricmode {
  \set stanza = "3."
  A -- mân -- doi sun -- tem de-o ma -- mă,
  De-o făp -- tu -- ră și __ de-o sea -- mă,
  Ca doi brazi în -- tr-o tul -- pi -- nă,
  Ca doi ochi în -- tr-o __ lu -- mi -- nă.

  A -- mân -- doi a -- vem __ un nu -- me,
  A -- mân -- doi o soar -- tă-n lu -- me,
  Eu ți-s fra -- te, tu __ mi-ești fra -- te,
  În noi doi un su -- flet ba -- te.
}

stanzaFour = \lyricmode {
  \set stanza = "4."
  Vin' la Mil -- cov cu gră -- bi -- re
  Să-l se -- căm din -- tr-o __ sor -- bi -- re,
  Ca să trea -- că dru -- mul ma -- re
  Pes -- te-a noas -- tre vechi __ ho -- ta -- re!

  Și să va -- dă sfân -- tul soa -- re,
  În -- tr-o zi de săr -- bă -- toa -- re,
  Ho -- ra noas -- tră cea __ fră -- țeas -- că
  Pe câm -- pi -- a ro -- mâ -- neas -- că!
}

womenMusic = \relative c' {
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

menMusic = \relative c' {
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
  \tempo 4 = 96
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
