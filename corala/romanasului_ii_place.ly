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
  title = "Românașului îi place"
  composer = "Melodie veche"
  tagline = ""
  meter = "Allegretto"
}

global = {
  \key d \major
  \time 2/4
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
  \set Score.tempoHideNote = ##t
}

stanzaOne = \lyricmode {
  \set stanza = "1."
  Ro -- mâ -- na -- șu -- lui îi pla -- ce
  Sus la mun -- te, sus la mun -- te, la iz -- vor,
  Li -- ber și să fi -- e-n pa -- ce
  Al na -- tu -- rii, al na -- tu -- rii dom -- ni -- tor!

  Un -- de prin -- tre stânci bă -- trâ -- ne
  Curg iz -- voa -- re cris -- ta -- li -- ne,
  Jos la co -- dru, jos la co -- dru-n -- flo -- ri -- tor.
}

stanzaTwo = \lyricmode {
  \set stanza = "2."
  Un -- de sal -- tă că -- pri -- oa -- ra
  Scut că -- tând ea, scut că -- tând de vâ -- nă -- tor,
  Un -- de bra -- dul dă ră -- coa -- re
  La tot o -- mul, la tot o -- mul că -- lă -- tor,

  Un -- de mi -- o -- ri -- ța zbia -- ră
  Flu -- ie -- raș cân -- tând de sea -- ră
  În -- tr-un glas sus -- pi -- nă -- tor, sus -- pi -- nă -- tor.
}

stanzaThree = \lyricmode {
  \set stanza = "3."
  De a -- ce -- ea lui îi pla -- ce
  Sus la mun -- te, sus la mun -- te, la iz -- vor,
  Li -- ber și să fi -- e-n pa -- ce
  Al na -- tu -- rii, al na -- tu -- rii dom -- ni -- tor!

  Să tră -- ias -- că-n fe -- ri -- ci -- re,
  Li -- ber -- ta -- te și iu -- bi -- re
  Tim -- pul iu -- te, tim -- pul iu -- te tre -- că -- tor!
}

womenMusic = \relative c' {
  fis4.^\mf g8
  a4 d4
  a4. b8
  a8([ g8)] fis4
  b8. b16 a8 a8
  g8. g16 e8 e8
  a8. a16
  \tempo 4 = 40
  fis4 \breathe
  \tempo 4 = 120

  fis4. g8
  a4 d4
  a4. b8
  a8([ g8)] fis4
  b8. b16 a8 a8
  g8. g16 e8 e8
  a8. a16
  \tempo 4 = 40
  fis4 \breathe
  \tempo 4 = 120

  \repeat volta 2 {
    d8. b'16 b8 b8
    b8 b8 d8 d8
    d8. cis16 cis8 b8
    b8 a8 d8 d8
    cis8. d16 e8 d8
    cis8. d16 e8 d8
    cis8.([ d16)] e8([ fis8)]
    d2
  }
}

menMusic = \relative c' {
  d,4.^\mf e8
  fis4 fis4
  fis4. g8
  fis8([ e8)] d4
  g8. g16 fis8 fis8
  e8. e16 cis8 cis8
  fis8. fis16 d4 \breathe

  d4. e8
  fis4 fis4
  fis4. g8
  fis8([ e8)] d4
  g8. g16 fis8 fis8
  e8. e16 cis8 cis8
  fis8. fis16 d4 \breathe

  \repeat volta 2 {
    d8. g16 g8 g8
    g8 g8 b8 b8
    b8. a16 a8 g8
    g8 fis8 fis8 fis8
    e8. fis16 g8 fis8
    e8. fis16 g8 fis8
    e4 g4
    fis2
  }
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
      % \addlyrics { \stanzaOne }
      % \addlyrics { \stanzaTwo }
      % \addlyrics { \stanzaThree }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \tempo 4 = 120
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
