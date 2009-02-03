\version "2.8.6"

\paper {
  #(set-paper-size "letter")
  between-system-padding = 1\mm
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0\in
}

\header {
  title = "Plecarea magilor"
  composer = "Dimitrie G. Kiriac"
  meter = "Allegro"
  tagline = ""
}

global = {
  #(set-global-staff-size 15)
  \set Staff.midiInstrument = "clarinet"
  \key g \major
  \time 2/4
  \autoBeamOff
}

sopStanzaOne = \lyricmode {
  \set stanza = "1."
  Da -- că __ Ma -- gii __ au ple -- cat
  De la __ Cra -- iul __ fer -- me -- cat,
  Stea -- ua __ iar le-a ră -- să -- rit, __
  Dru -- mul __ ei l-au ur -- mă rit. __
}

sopStanzaTwo = \lyricmode {
  \set stanza = "2."
  Pâ -- n-a __ fost o -- pri -- tă __ sus
  Un -- de __ s-a năs -- cut Ii -- sus
  Ma -- gii __ dorm vi -- sând şi-aş --
  \set ignoreMelismata = ##t
  teap -- \skip 8 tă __ \skip 8
  \unset ignoreMelismata
  Răs -- plă -- ti -- rea lor cea
  \set ignoreMelismata = ##t  
  dreap -- tă.
  \unset ignoreMelismata
}

altoStanzaOne = \lyricmode {
  La la la la la la la la la la la la la la la la la la la la la la la la
  Stea -- ua iar le-a ră -- să -- rit, __
  Dru -- mul ei l-au ur -- mă rit. __
}

altoStanzaTwo = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \set ignoreMelismata = ##t
  Ma -- gii dorm vi -- sând şi-aş -- teap -- tă
  Răs -- plă -- ti -- rea lor cea dreap -- tă.
  \unset ignoreMelismata
}

tenorStanzaOne = \lyricmode {
  La la la la la la la la la la la la la la la la la la la la la la la la
  Stea -- ua iar le-a ră -- să -- rit, __
  Dru -- mul ei l-au ur -- mă rit. __
}

tenorStanzaTwo = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \set ignoreMelismata = ##t
  Ma -- gii dorm vi -- sând şi-aş -- teap -- \skip 8 tă __ \skip 8
  Răs -- plă -- ti -- rea lor cea dreap -- tă.
  \unset ignoreMelismata
}

bassStanzaOne = \altoStanzaOne
bassStanzaTwo = \altoStanzaTwo

sopMusic = \relative {
  \set Staff.midiMinimumVolume = #0.4
  \repeat volta 2 {
    R2 R2
  }
  a'4^\mf b8([ c8)]
  d4 c8([ b8)]
  a4 e'8([ cis8)]
  d2
  \break

  R2 R2

  a4 b8([ c8)]
  d4 c8([ b8)]
  a4 e'8([ cis8)]
  d2

  \repeat volta 2 {
    d8([ e8)] d8([ c!8)]
    \break
    b4 g4
    a4 fis4
    \slurDashed
    g8([ a8] b8[ c8)]
    \slurSolid

    d8([ e8)] d8([ c8)]
    b4 g4
    a4 fis4
    \tieDashed
    g4~ g8 r8
    \tieSolid
  }
}

altoMusic = \relative {
  \repeat volta 2 {
    d8^\p r8 g8 r8
    d8 r8 g8 r8
  }

  d8 r8 g8 r8
  d8 r8 g8 r8
  d8 r8 g8 r8
  d8 r8 g8 r8

  d8 r8 g8 r8
  d8 r8 g8 r8

  d8 r8 g8 r8
  d8 r8 g8 r8
  d8 r8 g8 r8
  d8 r8 g8 r8

  \repeat volta 2 {
    a4 fis4
    g4 g4
    fis4 d4
    \slurDashed
    d4( g4)
    \slurSolid

    a4 fis4
    g4 g4
    fis4 d4
    \tieDashed
    d4~ d8 r8
    \tieSolid
  }
}

tenorMusic = \relative {
  \repeat volta 2 {
    d8^\p r8 b8 r8
    d8 r8 b8 r8
  }

  d8 r8 b8 r8
  d8 r8 b8 r8
  d8 r8 b8 r8
  d8 r8 b8 r8

  d8 r8 b8 r8
  d8 r8 b8 r8

  d8 r8 b8 r8
  d8 r8 b8 r8
  d8 r8 b8 r8
  d8 r8 b8 r8

  \repeat volta 2 {
    d4 d4
    d4 d4
    d4 c4
    \slurDashed
    b8([ c8] d8[ e8)]
    \slurSolid

    d4 d4
    d4 d4
    d4 c4
    \tieDashed
    b4~ b8 r8
    \tieSolid
  }
}

bassMusic = \relative {
  \repeat volta 2 {
    d,8^\p r8 g8 r8
    d8 r8 g8 r8
  }

  d8 r8 g8 r8
  d8 r8 g8 r8
  d8 r8 g8 r8
  d8 r8 g8 r8

  d8 r8 g8 r8
  d8 r8 g8 r8

  d8 r8 g8 r8
  d8 r8 g8 r8
  d8 r8 g8 r8
  d8 r8 g8 r8

  \repeat volta 2 {
    fis4 d4
    g4 b4
    d4 d,4
    \tieDashed
    g4~ g4
    \tieSolid

    fis4 d4
    g4 b4
    d4 d,4
    \tieDashed
    g4~ g8 r8
    \tieSolid
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
  \tempo 4 = 160
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
