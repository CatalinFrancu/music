\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0.7\in
  bottom-margin = 0.7\in
}

\header {
  title = "Sus la poarta raiului"
  arranger = "Emil Monția"
  meter = "Andantino"
  tagline = ""
}

#(set-global-staff-size 15)

global = {
  \set Staff.midiInstrument = "clarinet"
  \key a \major
  \autoBeamOff
}

sopWords = \lyricmode {
  \set stanza = "1."
  Sus la poar -- ta ra -- iu -- lui, poar -- ta ra -- iu -- lui,
  Paș -- te tur -- ma Ta -- tă -- lui, tur -- ma Ta -- tă -- lui.
  Li -- nu-i __ lin și ia -- ră lin,
  Ba -- te __ vân -- tul frun -- za lin,
  Lin și __ ia -- ră lin.
}

altoWords = \lyricmode {
  \set stanza = "1."
  Sus la poar -- ta ra -- iu -- lui, poar -- ta ra -- iu -- lui, __
  Paș -- te tur -- ma Ta -- tă -- lui, tur -- ma Ta -- tă -- lui. __
  Li -- nu-i lin și ia -- ră lin,
  Ba -- te vân -- tul frun -- za lin,
  Lin și ia -- ră lin.
}

tenorWords = \lyricmode {
  \set stanza = "1."
  Sus la poar -- ta ra -- iu -- lui, poar -- ta ra -- iu -- lui, __
  Paș -- te tur -- ma Ta -- tă -- lui, tur -- ma Ta -- tă -- lui. __
  Li -- nu-i __ lin și ia -- ră lin,
  Ba -- te __ vân -- tul frun -- za lin,
  Lin și __ ia -- ră __ lin.
}

bassWords = \lyricmode {
  \set stanza = "1."
  Sus la poar -- ta ra -- iu -- lui, poar -- ta ra -- iu -- lui, __
  Paș -- te tur -- ma Ta -- tă -- lui, tur -- ma Ta -- tă -- lui. __
  Li -- nu-i lin și ia -- ră lin,
  Ba -- te vân -- tul frun -- za __ lin,
  Lin și ia -- ră __ lin.
}

sopMusic = \relative c' {
  e8 a8 gis8 a8 b8^\accent cis8 b4
  cis8 b8 cis8^\accent d8 b2
  \break

  e,8 a8 gis8 a8 b8 cis8 b4
  cis8 b8 cis8 d8 b2
  \break

  \repeat volta 2 {
    e8^\markup{ \column { { \bold "Refren 1.-5." } " " }}
    fis16([ e16)] d8 cis8 b8 cis8 d4
    d8 e16([ d16)] cis8 b8 a8 b8 cis4
    b8 e16([ d16)] cis4 b4 a4^\fermata
  }
}

altoMusic = \relative c' {
  e8 e8 e8 e8 gis8^\accent gis8 gis4
  a8 gis8 a8^\accent fis8 e8([ fis8] gis16[ fis16 e16 d16)]

  cis8 e8 e8 e8 gis8 gis8 gis4
  a8 gis8 a8 fis8 e8([ fis8] gis4)

  \repeat volta 2 {
    e8 e8 e8 e8 e8 e8 e4
    e8 e8 e8 e8 e8 e8 e4
    gis8 gis8 a4 gis4 a4^\fermata
  }
}

tenorMusic = \relative c' {
  cis8 cis8 cis8 cis8 d8^\accent d8 d4
  cis8 d8 cis8^\accent a8 gis8([ a8 b8 gis8)]

  a8 cis8 cis8 cis8 d8 d8 d4
  cis8 d8 cis8 a8 gis8([ a8] b8[ e16 d16)]

  \repeat volta 2 {
    cis8 d16([ cis16)] b8 a8 gis8 a8 b4
    b8 cis16([ b16)] a8 gis8 fis8 gis8 a4
    b8 cis16([ b16)] a8([ cis8)] e8([ d8)] cis4^\fermata
  }
}

bassMusicOne = \relative c' {
  e,8 e8 e8 e8 e8^\accent e8 e4
  e8 e8 e8^\accent e8 e2

  e8 e8 e8 e8 e8 e8 e4
  e8 e8 e8 e8 e2

  \repeat volta 2 {
    a8 e8 e8 e8 e8 e8 e4
    e8 e8 e8 e8 e16([ d16)] cis16([ b16)] a4
    e'8 e8 e4 e4 e4^\fermata
  }
}

bassMusicTwo = \relative c' {
  a,8 a8 a8 a8 a8_\accent a8 a4
  a8 e'8 a,8_\accent a8 e8([ e'8] e,4)

  a8 a8 a8 a8 a8 a8 a4
  a8 e'8 a,8 a8 e8([ e'8] e,4)

  \repeat volta 2 {
    a8 e'8 a,8 a8 e8 e'8 e4
    gis,8 gis8 e8 e8 e'16([ d16)] cis16([ b16)] a4
    e8 e'8 e,4 e8([ e'8)] a,4_\fermata
  }
}

myScore = \new Score \with {
  \override SpacingSpanner.shortest-duration-space = #7.0
} <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \sopMusic }
    \addlyrics { \sopWords }

    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \altoWords }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorWords }
    >>

    \new Staff <<
      \clef bass
      \new Voice { \global \voiceOne \bassMusicOne }
      \new Voice { \global \voiceTwo \bassMusicTwo }
      \addlyrics { \bassWords }
    >>
  >>
>>

midiOutput =
  \midi {
    \tempo 4 = 64
    }



\book {
  \score {
    \myScore
    \layout { }
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
    \new Voice { \global \bassMusicOne }
    \midi { \midiOutput }
  }
  \score {
    \unfoldRepeats
    \new Voice { \global \bassMusicTwo }
    \midi { \midiOutput }
  }
  \markup {
    \vspace #2.0
    \large {
      \hspace #8.0
      \column {
        "2."
        " "
        " "
        "3."
        " "
      }
      \column {
        "Dar la poartă cine stă, cine, cine stă?"
        "Stă chiar Maica Precistă, Maica Precistă."
        " "
        "Lângă ea un legănel, da, un legănel"
        "Cu un copilaș în el, copilaș în el."
      }
      \hspace #5.0
      \column {
        "4."
        " "
        " "
        "5."
        " "
      }
      \column {
        "Copilașul când plângea, puiul când plângea,"
        "Maica Sfântă-L legăna, Maica-L legăna."
        " "
        "Copilașul când dormea, puiul când dormea,"
        "Maica sfântă lin cânta, Maica lin cânta."
      }
    }
  }
}
