\version "2.8.7"

\paper {
  #(set-paper-size "letter")
  between-system-padding = 0\mm
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0\in
}

\header {
  title = "Cântec de Crăciun"
  arranger = "Gheorghe Budiş"
  meter = "Andantino"
  tagline = ""
}

global = {
  #(set-global-staff-size 15)
  \set Staff.midiInstrument = "clarinet"
  \key es \major
  \time 6/8
  \autoBeamOff
}

womenStanzaOne = \lyricmode {
  \set stanza = "1."
  Din an în an so -- sesc me -- reu la geam cu Moş __ A -- jun, __
  E ger cum -- plit, e dru -- mul greu, da-i o -- bi -- cei __ stră -- bun. __
  Azi cu stră -- mo -- şii cânt în cor co -- lin -- dul sfânt şi bun, __
  Tot moş e -- ra şi-n vre -- mea lor bă -- trâ -- nul Moş __ Cră -- ciun, __
  Tot
  trâ -- nul Moş __ Cră -- ciun. __
}

womenStanzaTwo = \lyricmode {
  \set stanza = "2."
  E săr -- bă -- toa -- re şi e joc în ca -- sa ta __ a -- cum, __
  Dar sunt bor -- de -- ie fă -- ră foc şi mâi -- ne-i Moş __ A -- jun. __
  Şi-a -- cum te las, fii să -- nă -- tos şi ve -- sel de Cră -- ciun, __
  Dar nu ui -- ta, când eşti vo -- ios, ro -- mâ -- ne să __ fii bun, __
  Dar
  mâ -- ne să __ fii bun. __
}

menStanzaOne = \lyricmode {
  \set stanza = "1."
  E ger cum -- plit, e dru -- mul greu, da-i o -- bi -- cei stră -- bun. __
  Azi cu stră -- mo -- şii cânt în cor co -- lin -- dul sfânt şi bun, __
  Tot moş e -- ra şi-n vre -- mea lor bă -- trâ -- nul Moş Cră -- ciun, __
  Tot
  trâ -- nul Moş Cră -- ciun. __
}

menStanzaTwo = \lyricmode {
  \set stanza = "2."
  Dar sunt bor -- de -- ie fă -- ră foc şi mâi -- ne-i Moş A -- jun. __
  Şi-a -- cum te las, fii să -- nă -- tos şi ve -- sel de Cră -- ciun, __
  Dar nu ui -- ta, când eşti vo -- ios, ro -- mâ -- ne să fii bun, __
  Dar
  mâ -- ne să fii bun. __
}

sopMusic = \relative {
  \partial 8 bes'8^\p
  g4 bes8 es4 d8
  c4 bes8 g4 bes8
  f4 f8 f8([ es8)] f8
  \break
  g4.~ g8 r8 bes8

  g4^\markup{ \italic "cresc." } bes8^\f g'4 f8
  es4 c8 bes4 as8
  g4^\p g8 f8([ es8)] f8
  \break
  es4.~ es8 r8 c8^\f

  d4 es8 f4 g8
  as4 e8 f4 g8
  as4 f8 c'4 g8
  \break
  bes4.~ bes8 r8 g'8^\f

  \repeat volta 2 {
    es4 d8 c4 g8
    bes4 b8 c4 as8
    \break
  } \alternative {
    {
      g4 g8 f8([ es8)] f8
      g4.( bes8) r8 g'8
    }
    {
      g,4 g8 f8([ es8)] f8
      es4.~ es8 r4
    }
  }
  \bar "|."
}

altoMusic = \relative {
  \partial 8 bes'8^\p
  g4 g8 g4 bes8
  as4 g8 es4 es8
  d4 d8 d8([ c8)] d8
  es4.~ es8 r8 bes'8

  g4^\markup{ \italic "cresc." } as8^\f bes4 b8
  c4 as8 g4 es8
  es4^\p es8 d8([ c8)] d8
  es4.~ es8 r8 c8^\f

  d4 es8 f4 g8
  as4 e8 f4 g8
  as4 f8 g4 es8
  d4.~ d8 r8 bes'8^\f

  \repeat volta 2 {
    bes4 as8 g4 g8
    f4 f8 es4 es8
  } \alternative {
    {
      es4 es8 d8([ c8)] d8
      es4.( g8) r8 bes8
    }
    {
      es,4 es8 d8([ c8)] d8
      es4.~ es8 r4
    }
  }
}

tenorMusic = \relative {
  \partial 8 r8
  R2. R2. R2.
  r4 r8 r4 bes8

  g4^\markup{ \italic "cresc." } bes8^\f es4 d8
  c4 es8 es4 es8
  es8([^\p bes8)] g8 bes4 as8
  g4.~ g8 r8 c,8^\f

  d4 es8 f4 g8
  as4 e8 f4 g8
  as4 bes8 g4 c8
  f,4.~ f8 r8 d'8^\f

  \repeat volta 2 {
    es4 bes8 c4 bes8
    d4 es8 c4 c8
  } \alternative {
    {
      bes4 bes8 bes4 bes8
      bes4.~ bes8 r8 d8
    }
    {
      bes4 bes8 as4 as8
      g4.~ g8 r4
    }
  }
}

bassMusic = \relative {
  \partial 8 r8
  R2. R2. R2.
  r4 r8 r4 bes8

  g4^\markup{ \italic "cresc." } f8^\f es4 g8
  as4 as8 es4 c'8
  bes8([^\p g8)] es8 bes4 bes8
  es4.~ es8 r8 c8^\f

  d4 es8 f4 g8
  as4 e8 f4 g8
  f4 d8 es4 c8
  bes4.~ bes8 r8 as'8^\f

  \repeat volta 2 {
    g4 f8 es4 f8
    g4 g8 as4 as8
  } \alternative {
    {
      bes4 bes8 bes,4 bes8
      es4.~ es8 r8 as8
    }
    {
      bes4 bes8 bes,4 bes8
      es4.~ es8 r4
    }
  }
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \sopMusic }
    \addlyrics { \womenStanzaOne }
    \addlyrics { \womenStanzaTwo }

    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \womenStanzaOne }
    \addlyrics { \womenStanzaTwo }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \menStanzaOne }
      \addlyrics { \menStanzaTwo }
    >>

    \new Staff <<
      \clef bass
      \new Voice { \global \bassMusic }
      \addlyrics { \menStanzaOne }
      \addlyrics { \menStanzaTwo }
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
