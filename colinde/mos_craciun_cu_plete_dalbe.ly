\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0.7\in
  bottom-margin = 0.7\in
}

\header {
  title = "Moș Crăciun cu plete dalbe"
  tagline = ""
}

#(set-global-staff-size 16)

global = {
  \set Staff.midiInstrument = "clarinet"
  \override Score.VerticalAxisGroup.remove-first = ##t
  \key g \major
  \time 2/4
}

sopStanzaOne = \lyricmode {
  \set stanza = "1."
  Moș Cră -- ciun cu ple -- te dal -- be
  A so -- sit de prin nă -- meți
  Și a -- du -- ce da -- ruri mul -- te
  La fe -- ti -- țe și bă -- ieți.
  Moș Cră -- ciun, __ Moș Cră -- ciun. __
}

sopStanzaTwo = \lyricmode {
  \set stanza = "2."
  Din bă -- trâni se po -- ves -- teș -- te
  Că-n toți a -- nii ne -- gre -- șit
  Moș Cră -- ciun pri -- beag so -- seș -- te,
  Nici -- o -- da -- tă n-a lip -- sit.
}

sopStanzaThree = \lyricmode {
  \set stanza = "3."
  Moș Cră -- ciun cu ple -- te dal -- be,
  În -- co -- tro vrei s-o a -- puci?
  Ți-aș cân -- ta "\"Flo" -- ri -- le dal -- "be\","
  De la noi să nu te duci.
}

altoWords = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  Moș Cră -- ciun, __ Moș Cră -- ciun. __
}

tenorWords = \lyricmode {
  Moș Cră -- ciun, __ Moș Cră -- ciun. __
}

bassWords = \tenorWords

sopMusic = \transpose c g \relative c' {
  \set Staff.vocalName = "S."
  \set Staff.shortVocalName = "S."

  \repeat volta 3 {
    g4 c4
    b4. g8
    a4 b4
    c4 g4
    g4 f'4
    e4. c8
    d4 d4
    c2
    \break

    g4 c4
    b4. g8
    a4 b4
    c4 g4
    g4 f'4
    e4. c8
    d4 d4
    c2
    \break

    e2
    c2
    f2~
    f2

    e2
    d2
    c2~
    c2
  }
}

altoMusic = \transpose c g \relative c' {
  \set Staff.vocalName = "A."
  \set Staff.shortVocalName = "A."

  \repeat volta 3 {
    g4 e4
    g4. g8
    f4 f4
    e4 g4
    g4 g4
    g4. g8
    f4 f4
    e2

    g4 e4
    g4. g8
    f4 f4
    e4 g4
    g4 g4
    g4. g8
    f4 f4
    e2

    c'2
    c2
    c2~
    c2

    c2
    b2
    g2~
    g2
  }
}

tenorMusic = \transpose c g \relative c' {
  \set Staff.shortVocalName = "T."

  \repeat volta 3 {
    R2 R2 R2 R2 R2 R2 R2 R2
    R2 R2 R2 R2 R2 R2 R2 R2

    g2
    e2
    a2~
    a2

    g2
    f2
    e2~
    e2
  }
}

bassMusic = \transpose c g \relative c' {
  \set Staff.shortVocalName = "B."

  \repeat volta 3 {
    R2 R2 R2 R2 R2 R2 R2 R2
    R2 R2 R2 R2 R2 R2 R2 R2

    c,2
    c2
    f,2~
    f2

    g2
    g,2
    c2~
    c2
  }
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \global \sopMusic }
      \addlyrics { \sopStanzaOne }
      \addlyrics { \sopStanzaTwo }
      \addlyrics { \sopStanzaThree }
    >>

    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \altoWords }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorWords }
    >>

    \new Staff <<
      \clef bass
      \new Voice { \global \bassMusic }
      \addlyrics { \bassWords }
    >>
  >>
>>

\score {
  \myScore
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
}

midiOutput =
  \midi {
    \tempo 4 = 108
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
