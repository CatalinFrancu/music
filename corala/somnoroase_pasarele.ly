\version "2.10.14"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Somnoroase păsărele"
  poet = "versuri: Mihai Eminescu"
  composer = "muzica: Tudor Flondor (1862 - 1908)"
  tagline = ""
}

global = {
  #(set-global-staff-size 16)
  \override Score.VerticalAxisGroup #'remove-first = ##t
  \key f \major
  \time 3/4
  \autoBeamOff
}

soloStanzaOne = \lyricmode {
  \set stanza = "1."
  Doar iz -- voa -- re -- le sus -- pi -- nă,
  Pe când co -- drul ne -- gru ta -- ce;
  Dorm şi flo -- ri -- le-n gră -- di -- nă,
  Dormi în pa -- ce!
}

soloStanzaTwo = \lyricmode {
  \set stanza = "2."
  Pes -- te-a nop -- ţii fe -- e -- ri -- e
  Se ri -- di -- că mân -- dra lu -- nă.
  To -- tu-i vis şi ar -- mo -- ni -- e,
  Noap -- te bu -- nă!
}

sopStanzaOne = \lyricmode {
  \set stanza = "1."
  Som -- no -- roa -- se pă -- să -- re -- le
  Pe la cui -- buri se a -- du -- nă,
  Se as -- cund în ră -- mu -- re -- le,
  Noap -- te bu -- nă! Noap -- te bu -- nă!

  M __
  m __
  Dormi în pa -- ce!
}

sopStanzaTwo = \lyricmode {
  \skip 8 \skip 8
  le -- bă -- da pe a -- pe
  În -- tre tres -- tii să se cul -- ce,
  Fi -- e-ţi în -- ge -- rii a -- proa -- pe,
  Som -- nul dul -- ce! Som -- nul dul -- ce!

  \skip 8 \skip 8

  Noap -- te \skip 8 \skip 8
  \set stanza = "2."
  Tre -- ce
  bu -- nă!
}

tenorStanzaOne = \lyricmode {
  \set stanza = "1."
  Som -- no -- roa -- se pă -- să -- re -- le
  Pe la cui -- buri se a -- du -- nă,
  Se as -- cund în ră -- mu -- re -- le,
  Noap -- te bu -- nă! bu -- nă!

  M __
  m __
  pa -- ce!
}

tenorStanzaTwo = \lyricmode {
  \skip 8 \skip 8
  le -- bă -- da pe a -- pe
  În -- tre tres -- tii să se cul -- ce,
  Fi -- e-ţi în -- ge -- rii a -- proa -- pe,
  Som -- nul dul -- ce! dul -- ce!

  \skip 8 \skip 8

  \skip 8 \skip 8
  \set stanza = "2."
  Tre -- ce
  bu -- nă!
}

soloMusic = \relative {
  \set Staff.midiInstrument = "clarinet"

  \partial 4 s4

  \repeat volta 2 {
    R2. * 7
    r4 r4 f,8^\markup{\small \bold "Tenor solo"} f8
    c'4. c8 bes8 a8
    c4 bes4 bes8 bes8
    f'4. f8 es8 des8
    des4 c4 a8 bes8

    a4. g8 a8 e8
    g4 f4 e'8. d16
    d4 c4 r4
  } \alternative {
    { R2. }
    { R2. }
  }
}

sopMusic = \relative {
  \set Staff.midiInstrument = "recorder"
  \set Staff.vocalName = "S"

  \partial 4 c8 c8

  \repeat volta 2 {
    a'4. a8 g8 f8
    c'4 bes4 r4
    a8. a16 bes8 a8 g8 fis8
    \break
    a4 g2

    g8. c,16 d8. c16 a'8 g8
    g4 f4 f8 f8
    f4 c4^\markup{\small \bold "Sopr. Solo Tutti"} c8 a'8
    \break
    g4 f2

    a2.(
    bes2.
    bes2.
    bes4 a8) r8 r4
    \break

    a2.\( \melisma
    a2 g4
    f2\) \melismaEnd c8^\markup{\small \bold "Sopr. Solo Tutti"} a'8
  } \alternative {
    { g4 f8 r8 c8 c8 }
    { g'4 f8 r8 r4 }
  }

  \bar "|."
}

altoMusic = \relative {
  \set Staff.midiInstrument = "recorder"
  \set Staff.vocalName = "A"

  \partial 4 c8 c8

  \repeat volta 2 {
    f4. f8 d8 c8
    e4 e4 r4
    fis8. fis16 fis8 fis8 d8 d8
    d4 d2

    e8. c16 d8. c16 e8 e8
    e4 d4 b8 b8
    c4 c4 r4
    e4 c2

    f2.(
    f2.
    f2 fis4
    g4 f!8 r8 r4)

    g2.(
    g4 f4 g4
    a2) r4
  } \alternative {
    { c,4 c8 r8 c8 c8 }
    { c4 c8 r8 r4 }
  }
}

tenorMusic = \relative {
  \set Staff.midiInstrument = "recorder"
  \set Staff.vocalName = "T"

  \partial 4 c8 c8

  \repeat volta 2 {
    c4. c8 bes8 a8
    c4 c4 r4
    c8. c16 d8 c8 bes8 a8
    c4 bes2
    
    bes8. bes16 bes8. bes16 c8 bes8
    bes4 a4 f8 g8
    a4 c4 r4
    bes4 a2
    
    c4\( \melisma d4 es4~
    es4 d4 des4
    bes2.
    bes4 c8\) \melismaEnd r8 r4

    c2.\( \melisma
    d2 g,4
    a2\) \melismaEnd r4
  } \alternative {
    { bes4 a8 r8 c8 c8 }
    { bes4 a8 r8 r4 }
  }
}

bassMusic = \relative {
  \set Staff.midiInstrument = "recorder"
  \set Staff.vocalName = "B"

  \partial 4 c8 c8

  \repeat volta 2 {
    f,4. f8 bes8 a8
    g4 g4 r4
    d8. d16 d8 d8 d8 d8
    g4 g2
    
    c,8. c16 c8. c16 c8 c8
    cis4 d4 des8 des8
    c4 c4 r4
    c4 f2
    
    <f f,>2.(
    bes,2.)
    des2( es4
    e!4 f8) r8 r4

    e2\( a,4
    d!2 bes4
    c2\) r4
  } \alternative {
    { c4 f8 r8 c'8 c8 }
    { c,4 f8 r8 r4 }
  }
}

myScore = \new Score <<
  \new Staff <<
    \clef "G_8"
    \new Voice { \global \soloMusic }
    \addlyrics { \soloStanzaOne }
    \addlyrics { \soloStanzaTwo }
  >>

  \new StaffGroup <<
    \new Staff \new Voice { \global \sopMusic }
    \addlyrics { \sopStanzaOne }
    \addlyrics { \sopStanzaTwo }

    \new Staff \new Voice { \global \altoMusic }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorStanzaOne }
      \addlyrics { \tenorStanzaTwo }
    >>

    \new Staff <<
      \clef "bass"
      \new Voice { \global \bassMusic }
    >>
  >>
>>

\score {
  \myScore
  \layout {
    \context {
      \RemoveEmptyStaffContext
    }
  }
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
  \new Voice { \global \soloMusic }
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
