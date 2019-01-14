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
  title = "Pui de lei"
  composer = "muzica: Ionel Brătianu"
  poet = "versuri: Ioan Nenițescu"
  meter = "Energic"
  tagline = ""
}

#(set-global-staff-size 14)

global = {
  \set Staff.midiInstrument = "clarinet"
  \key a \major
  \time 4/4
  \autoBeamOff
}

womenStanzaOne = \lyricmode {
  \set stanza = "1."
  E -- roi au fost, e -- roi sunt în -- că
  Și-or fi în nea -- mul ro -- mâ -- nesc,
  Căci rupți sunt ca din ta -- re stân -- că
  Ro -- mâ -- nii ori -- și -- un -- de cresc.

  E vi -- ța noas -- tră fă -- u -- ri -- tă
  De doi băr -- bați cu bra -- țe tari
  Și cu vo -- in -- ța o -- țe -- li -- tă,
  Cu minți deș -- tep -- te, i -- nimi mari. __

  \set stanza = "2."
  Și

  tori. __

  Au fost e -- roi, au fost
  Și în -- c-or să mai fi -- e, __
  Ce-or frân -- ge duș -- ma -- nii cei răi,
  Din coap -- sa Da -- ci -- ei și-a Ro -- mei,
  În veci, în veci s-or naș -- te pui de lei!
}

womenStanzaTwo = \lyricmode {
  \set stanza = "2."
  "___" u -- nu-i De -- ce -- bal cel har -- nic,
  Iar ce -- lă -- lalt, Tra -- ian cel drept,
  Ei pen -- tru va -- tra lor a -- mar -- nic,
  Au dat cu-a -- tâ -- ția duș -- mani piept.

  Și din a -- șa pă -- rinți de sea -- mă,
  În veci s-or naș -- te lup -- tă -- tori,
  Ce pen -- tru pa -- tri -- a lor ma -- mă
  Vor sta ca vred -- nici ur -- "mă -"
}

tenorStanzaOne = \lyricmode {
  \set stanza = "1."
  E -- roi au fost, e -- roi sunt în -- că
  Și-or fi în nea -- mul ro -- mâ -- nesc,
  Căci rupți sunt ca din ta -- re stân -- că
  Ro -- mâ -- nii __ ori -- și -- un -- de cresc.

  E vi -- ța noas -- tră fă -- u -- ri -- tă
  De doi băr -- bați cu bra -- țe tari
  Și cu vo -- in -- ța o -- țe -- li -- tă,
  Cu minți deș -- tep -- te, i -- nimi mari. __

  \set stanza = "2."
  Și

  tori. __

  E -- roi au fost, e -- roi au fost
  Și vor mai fi
  Și-n veci și-n veci __ se vor naș -- te pui de lei,
  În veci, în veci s-or naș -- te pui de lei!
}

tenorStanzaTwo = \lyricmode {
  \set stanza = "2."
  "___" u -- nu-i De -- ce -- bal cel har -- nic,
  Iar ce -- lă -- lalt, Tra -- ian cel drept,
  Ei pen -- tru va -- tra lor a -- mar -- nic,
  Au dat cu-a -- tâ -- ția duș -- mani piept.

  Și din a -- șa pă -- rinți de sea -- mă,
  În veci s-or naș -- te lup -- tă -- tori,
  Ce pen -- tru pa -- tri -- a lor ma -- mă
  Vor sta ca __ vred -- nici ur -- "mă -"
}

bassStanzaOne = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8
  E vi -- ța noas -- tră fă -- u -- ri -- tă
  De doi băr -- bați cu bra -- țe tari

  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8
  i -- nimi mari.
  \skip 8 \skip 8
  ur -- mă -- tori.
}

bassStanzaTwo = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8
  Și din a -- șa pă -- rinți de sea -- mă,
  În veci s-or naș -- te lup -- tă -- tori,
}

womenMusic = \relative c' {
  \partial 4 e4^\f

  \repeat volta 2 {
    cis'4. b8 a8. gis16 a8. b16
    cis2 a8 r16 a16 gis8 a8
    d4 cis4 b4 e,4
    \break

    cis'2 r8 cis8 d8 e8
    a,4. a8 gis4 a4
    fis2 b8 \breathe b8 cis8 d8
    \break

    cis4 e,4 cis'4 b4
    a2 r2
    r8 cis8^\p cis8. gis16 gis8 gis8 gis8 gis8
    \break

    b2^\> a4\! r4
    r8 cis8^\mf e8. b16 b8 b8 cis8 d8
    cis2^\< r8 cis8 d8 e8\!
    \break

    fis4^\f\accent e4\accent d4\accent cis4\accent
    e2\accent d8\accent \breathe b8 cis8 d8
    cis4 e,4 cis'4 b4
  } \alternative {
    { a2~ a8 r8 e4 \break }
    { a2~ a8 r8 e4^\f }
  }

  a8. e16 a8. cis16 e4. e,8
  a8. e16 a8. cis16 e8 r8 e4~
  \break

  e8 a,8 b8 cis8 d8 r8 d4(~
  d8[ gis,8]) a8 b8 cis4. cis8
  cis4. cis8 d8. d16 dis8. dis16
  \break

  e4 cis8. a16 fis'4^\fermata r8 fis8
  e4^\fermata r8 cis8 \tuplet 3/2 { e8([ d8)] cis8 } b8. b16
  a2^\ff r2
  \bar "|."
}

tenorMusic = \relative c' {
  \partial 4 e,4^\f

  \repeat volta 2 {
    a4. gis8 e8. e16 e8. e16
    e2 e8 r16 e16 e8 e8
    gis4 a4 gis4 e4

    e2 r2
    r8 fis8 fis8 fis8 eis8. eis16 fis8 fis8
    fis4( e4) d8 \breathe fis8 fis8 fis16([ gis16)]

    a4 e4 a4 gis4
    e2 r2
    r8 fis8^\p eis8. eis16 eis8 eis8 eis8 eis8

    gis2^\> fis4\! r4
    r8 a8^\mf gis8. gis16 gis8 gis8 a8 b8
    a2^\< r8 a8 b8 cis8\!

    d4^\f\accent cis4\accent b4\accent a4\accent
    ais2 b8 \breathe fis8 fis8 fis16([ gis16)]
    a4 e4 a4 gis4
  } \alternative {
    { a2~ a8 r8 e4 }
    { a2~ a8 r8 r4 }
  }

  r2 r8 d,8^\f d8 d8
  cis8 r8 r4 r8 d8 d8 d8

  cis8 r8 r4 r8 <a' fis>8 <a fis>8 <a fis>8
  <a fis>8 r8 r4 r8 <gis eis>8 <a fis>8 <b gis>8
  a8.([ gis16)] fis8 eis8 fis8. fis16 a8. a16

  cis4 a4 d4^\fermata r8 d8
  cis4^\fermata r8 a8 \tuplet 3/2 { cis8([ b8)] a8 } gis8. gis16
  a2^\ff r2
}

bassMusic = \relative c' {
  \partial 4 e,4^\f

  \repeat volta 2 {
    a4. e8 cis8. d16 cis8. b16
    a2 cis8 r16 cis16 d8 cis8
    b4 a4 e'4 e4

    a,2 r2
    r8 cis8 cis8 cis8 cis8. cis16 cis8 cis8
    d4( cis4) b8 \breathe d8 cis8 b8

    e4 e4 e4 e8([ d8)]
    cis2 r8 cis8^\p cis8. cis16
    cis4. cis8 cis4 cis4

    cis2 fis8 \breathe fis8 fis8 fis8
    fis4 e4 e4 e4
    a2^\< r8 a8 b8 cis8\!

    d4^\f\accent cis4\accent b4\accent a4\accent
    fis2\accent b,8 \breathe d8 cis8 b8
    e4 e4 e4 e4
  } \alternative {
    { a4 \tuplet 3/2 { e8([ cis8)] e8 } a8 r8 e4 }
    { a4 \tuplet 3/2 { e8([ cis8)] e8 } a8 r8 r4 }
  }

  r2 r8 e8^\f e8 e8
  a8 r8 r4 r8 e8 e8 e8

  a8 r8 r4 r8 d,8 d8 d8
  d8 r8 r4 r8 cis8 dis8 eis8
  fis8.([ e16)] d8 cis8 b8. cis16 b'8. b16

  a4 a4 d4^\fermata r8 d8
  a4^\fermata r8 e8 \tuplet 3/2 { e4 e8 } e8. e16
  a2^\ff r2
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \womenMusic }
    \addlyrics { \womenStanzaOne }
    \addlyrics { \womenStanzaTwo }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorStanzaOne }
      \addlyrics { \tenorStanzaTwo }
    >>

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \bassMusic }
      \addlyrics { \bassStanzaOne }
      \addlyrics { \bassStanzaTwo }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \tempo 4 = 120
  \context {
    \Voice
    \remove "Dynamic_performer"
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
  \new Voice { \global \tenorMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \bassMusic }
  \midi { \midiOutput }
}
