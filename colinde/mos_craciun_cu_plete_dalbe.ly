\version "2.8.6"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0\in
}

\header {
  title = "Moş Crăciun cu plete dalbe"
  tagline = ""
}

global = {
  #(set-global-staff-size 16)
  \set Staff.midiInstrument = "clarinet"
  \override Score.VerticalAxisGroup #'remove-first = ##t
  \key g \major
  \time 2/4
}

sopStanzaOne = \lyricmode {
  \set stanza = "1."
  Moş Cră -- ciun cu ple -- te dal -- be
  A so -- sit de prin nă -- meţi
  Şi a -- du -- ce da -- ruri mul -- te
  La fe -- ti -- ţe şi bă -- ieţi.
  Moş Cră -- ciun, __ Moş Cră -- ciun. __
}

sopStanzaTwo = \lyricmode {
  \set stanza = "2."
  Din bă -- trâni se po -- ves -- teş -- te
  Că-n toţi a -- nii ne -- gre -- şit
  Moş Cră -- ciun pri -- beag so -- seş -- te,
  Nici -- o -- da -- tă n-a lip -- sit.
}

sopStanzaThree = \lyricmode {
  \set stanza = "3."
  Moş Cră -- ciun cu ple -- te dal -- be,
  În -- co -- tro vrei s-o a -- puci?
  Ţi-aş cân -- ta "\"Flo" -- ri -- le dal -- "be\","
  De la noi să nu te duci.
}

altoWords = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  Moş Cră -- ciun, __ Moş Cră -- ciun. __  
}

tenorWords = \lyricmode {
  Moş Cră -- ciun, __ Moş Cră -- ciun. __  
}

bassWords = \tenorWords

sopMusic = \transpose c g \relative {
  \set Staff.vocalName = "S."
  \set Staff.vocNam = "S."

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

altoMusic = \transpose c g \relative {
  \set Staff.vocalName = "A."
  \set Staff.vocNam = "A."

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

tenorMusic = \transpose c g \relative {
  \set Staff.vocNam = "T."

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

bassMusic = \transpose c g \relative {
  \set Staff.vocNam = "B."

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
      \RemoveEmptyStaffContext
    }
  }
}

midiOutput = \midi {
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
