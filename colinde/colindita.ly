\version "2.8.7"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0\in
}

\header {
  title = "Colindiţa"
  arranger = "Emil Monţia"
  meter = "Allegretto"
  tagline = ""
}

global = {
  #(set-global-staff-size 14)
  \set Staff.midiInstrument = "clarinet"
  \set Staff.midiMinimumVolume = #0.3
  \key a \major
  \autoBeamOff
}

sopStanzaOne = \lyricmode {
  \set stanza = "1."
  \set ignoreMelismata = ##t
  Co -- lin -- di -- ţa nu-i mai mul -- tă,
  Să tră -- ias -- că ci -- ne-as -- cul -- tă.
  Sus la ce -- ruri o năl -- ţăm
  Şi la gaz -- dă o-n -- chi -- năm.

  O-n -- chi -- năm cu ve -- se -- li -- e
  Şi cu ma -- re bu -- cu -- ri -- e
  C-am a -- juns sea -- ra de-A -- jun
  Şi-a bă -- trâ -- nu -- lui Cră -- ciun.
}

sopStanzaTwo = \lyricmode {
  \set stanza = "2."
  Sus mai sus v-am î -- năl -- ţat, __
  Ce-am şti -- ut tot v-am cân -- tat. __
  Să ră -- mâ -- neţi să -- nă -- toşi,
  Să -- nă -- toşi şi bu -- cu -- roşi,

  C-am a -- juns zi -- ua cea sfân -- tă
  Când co -- lin -- de -- le se cân -- tă.
  Săr -- bă -- toa -- rea lui Hris -- tos
  Să vă fi -- e de fo -- los.
}

altoStanzaOne = \lyricmode {
  \set stanza = "1."
  \set ignoreMelismata = ##t
  Co -- lin -- di -- ţa nu-i mai mul -- tă,
  Să tră -- ias -- că ci -- ne-as -- cul -- \skip 16 tă.
  \unset ignoreMelismata
  Sus la ce -- ruri o năl -- ţăm __
  Şi la gaz -- dă o-n -- chi -- năm.

  O-n -- chi -- năm cu ve -- se -- li -- e
  Şi cu ma -- re bu -- cu -- ri -- e
  C-am a -- juns sea -- ra de-A -- jun
  Şi-a bă -- trâ -- nu -- lui Cră -- ciun.
}

altoStanzaTwo = \lyricmode {
  \set stanza = "2."
  Sus mai sus v-am î -- năl -- ţat, __
  Ce-am şti -- ut tot v-am cân -- tat. __
  Să ră -- mâ -- neţi să -- nă -- toşi, __
  Să -- nă -- toşi şi bu -- cu -- roşi,

  C-am a -- juns zi -- ua cea sfân -- tă
  Când co -- lin -- de -- le se cân -- tă.
  Săr -- bă -- toa -- rea lui Hris -- tos
  Să vă fi -- e __ de fo -- los.
}

tenorStanzaOne = \lyricmode {
  \set stanza = "1."
  \set ignoreMelismata = ##t
  Co -- lin -- di -- ţa nu-i mai mul -- tă,
  \unset ignoreMelismata
  Să __ tră -- ias -- că ci -- ne-as --
  \set ignoreMelismata = ##t
  cul -- tă.
  \unset ignoreMelismata
  Sus la ce -- ruri o năl -- ţăm
  Şi __ la __ gaz -- dă o-n -- chi -- năm.

  O-n -- chi -- năm cu ve -- se -- li -- e
  Şi __ cu __ ma -- re bu -- cu -- ri -- e
  C-am a -- juns sea -- ra de-A -- jun
  Şi-a bă -- trâ -- nu -- lui Cră -- ciun.
}

tenorStanzaTwo = \lyricmode {
  \set stanza = "2."
  Sus mai sus v-am î -- năl -- ţat, __
  Ce-am __ şti -- ut tot v-am cân -- tat. __
  Să ră -- mâ -- neţi să -- nă -- toşi,
  Să -- nă -- toşi şi bu -- cu -- roşi,

  C-am a -- juns zi -- ua cea sfân -- tă
  Când __ co -- lin -- de -- le se cân -- tă.
  Săr -- bă -- toa -- rea lui Hris -- tos
  Să vă fi -- e de fo -- los.
}

sopMusic = \relative {
  \repeat volta 2 {
    \slurDashed
    e'8^\f e8 e8 fis8 e8 d8 cis8( a8)
    b8 b8 e8. d16 cis8 b8 cis8( a8)
    \break
    e'8 e8 e8 fis8 e8 d8 cis4
    b8 b8 e8. d16 cis8 b8 a4
    \break

    b8^\ppp b8 b8 cis8 b8 a8 b8 cis8
    b8 b8 e8. d16 cis8 b8 cis8 a8
    \break
    b8 b8 b8 cis8 b8 a8 b4
    b8 b8 e8. d16 cis8^\markup{ \bold "rall." } b8 a4    
  }
}

altoMusic = \relative {
  \repeat volta 2 {
    \slurDashed
    a'8^\f a8 a8 a8 a8 gis8 a8( e8)
    \slurSolid
    e8. fis16 gis8 e8 e8 d8 cis16([ e16) a8]
    a8 a8 a8 a8 a8 gis8 a8( e8)
    e8 fis8 gis8 e8 e8 d8 cis4

    e8^\ppp e8 e8 e8 e8 e8 e8 e8
    e8. fis16 gis8 e8 e8 e8 e8 e8
    e8 e8 e8 e8 e8 e8 e4
    e8 e8 a8 cis16([ b16)] a8 gis8 e4
  }
}

tenorMusic = \relative {
  \repeat volta 2 {
    \slurDashed
    cis8^\f cis8 cis8 d8 cis8 b8 a8( a8)
    \slurSolid
    gis16([ b16)] e16([ d16)] cis8. b16 a8 gis8 \slurDashed a8( a8)
    \slurSolid
    cis8 cis8 cis8 d8 cis8 b8 a4
    gis16([ b16)] e16([ d16)] cis8. b16 a8 gis8 a4

    gis8^\ppp gis8 gis8 a8 gis8 fis8 gis8 a8
    gis16([ b16)] e16([ d16)] cis8. b16 a8 gis8 a8 a8
    gis8 gis8 gis8 a8 gis8 fis8 gis4
    a8 a8 cis16([ d16 e16)] fis16 e8 d8 cis4
  }
}

bassMusic = \relative {
  \repeat volta 2 {
    \slurDashed
    a8^\f a8 a8 a8 a8 e8 a,8( cis8)
    \slurSolid
    e8 e8 e8 fis16([ gis16)] a8 e8 a8 a,8
    a'8 a8 a8 a8 cis,8 e8 a,8([ cis8)]
    e8 e8 e8 fis16([ gis16)] a8 e8 a,4

    e'8^\ppp e8 e8 e8 d8 cis8 b8 a8
    e'8 e8 e8 fis16([ gis16)] a8 e8 a,8 cis8
    e8 e8 e8 e8 e8 e8 e16([ d16 cis16 b16)]
    a8 a'8 a8 d,8 e8 e8 a,4
  }
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \sopMusic }
    \addlyrics { \sopStanzaOne }
    \addlyrics { \sopStanzaTwo }

    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \altoStanzaOne }
    \addlyrics { \altoStanzaTwo }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorStanzaOne }
      \addlyrics { \tenorStanzaTwo }
    >>

    \new Staff <<
      \clef bass
      \new Voice { \global \bassMusic }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \tempo 4 = 124
}

\score {
  \unfoldRepeats
  \myScore
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \sopMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \altoMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \tenorMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \bassMusic }
  \midi { \midiOutput }
}
