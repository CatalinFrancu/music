\version "2.8.6"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  ragged-bottom = ##t
  top-margin = 0.5\in
}

\header {
  title = "Trei crai de la răsărit"
  composer = "Melodia după Anton Pann"
  meter = "Andante"
  tagline = ""
}

global = {
  #(set-global-staff-size 16)
  \override Score.VerticalAxisGroup #'remove-first = ##t
  \set Staff.midiInstrument = "clarinet"
  \autoBeamOff
}

soloStanzaOne = \lyricmode {
  A -- co -- lo cum au __ a -- juns __
  Stea -- ua-n __ nori __ li s-a __ as -- cuns __
  Şi le-a fost a se __ plim -- ba, __
  Prin o -- raş __ a în -- tre -- ba.
  \skip 2
  Trei crai de __ la ră -- să -- rit __
  Spre __ stea au __ că -- lă -- to -- rit.
}

soloStanzaTwo = \lyricmode {
  Şi cu toţi s-au bu -- cu -- rat __
  Pe __ Hris -- tos __ da -- c-au __ a -- flat, __
  Cu da -- ruri s-au în -- chi -- nat __
  Ca la un __ ma -- re-m -- pă- \skip 2. rat.
}

womenStanzaOne = \lyricmode {
  \set stanza = "1."
  Trei crai de __ la ră -- să -- rit __
  Spre __ stea au __ că -- lă -- to -- rit.
  A __
  A __
  \markup{ \bold 2. Un } -- de
  "____"
  Trei crai de __ la ră -- să -- rit __
  Spre __ stea au __ că -- lă -- to -- rit.  
}

womenStanzaTwo = \lyricmode {
  \skip 8 \skip 8
  s-a __ năs -- cut, __ zi -- când, __
  Un __ crai ma -- re de __ cu -- rând?
}

tenorStanzaOne = \lyricmode {
  \markup { A \italic \small "(respiraţie individuală)" } __
  Şi-au mers, du -- pă __ cum ci -- tim, __
  Pâ -- nă la __ Ie -- ru -- sa -- lim.
  A __
  "____"
  Trei crai de __ la ră -- să -- rit __
  Spre __ stea au __ că -- lă -- to -- rit.  
}

tenorStanzaTwo = \lyricmode {
  \skip 2
  Şi-au mers pâ -- nă __ au stă -- tut __
  Und' __ e -- ra __ prun -- cul __ năs -- cut.
}

bassWords = \lyricmode {
  \markup { A \italic \small "(respiraţie individuală)" } __
  "____"
  Trei crai de __ la ră -- să -- rit __
  Spre __ stea au __ că -- lă -- to -- rit.  
}

soloMusic = \relative {
  \set Staff.vocNam = "Solo T."
  \key a \minor
  \time 2/4
  R2
  \repeat volta 2 {
    \time 2/4
    R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2

    r4 d8 d8
    d4 d4
    g8([ f8)] e8([ d8)]
    c8.([ b16 c8 d8)]
    e8([ d8)] c8([ b8)]
    a8.([ g16 b8)] d8
    c8([ b8)] a4

    a8.([ g16)] a8 b8
    c4. d8
    \acciaccatura d8 c8([ b8)] a4
    d8([ c8 b8 a8)]
    \time 3/4
    g8 fis8 g4( a4)
    d4 c8([ b8)] a4
    
  } \alternative {
    { a2. }
    { a2^\fermata g8 a8 }
  }

  \time 2/4
  a8([^\markup{ Finale } b8)] g4
  \break
  a8.([ g16 a8)] b8
  c8.([ d16 c8 b8)]
  d8([ c16 d16] c8) b8
  a8([ b16 c16] b8) d8
  \acciaccatura d8 c8([ b8)] a4
  a2^\fermata^\markup { \italic perdendosi }
}

womenMusic = \relative {
  \set Staff.vocalName = "S. + A."
  \set Staff.vocNam = "S. + A."
  \key a \minor
  \time 2/4
  r4 g'8 a8
  \repeat volta 2 {
    \time 2/4
    a8([ b8)] g4
    a8.([ g16 a8)] b8
    c8.([ d16 c8 b8)]
    \break
    d8([ c16 d16] c8) b8
    a8([ b16 c16] b8) d8
    \acciaccatura d8 c8([ b8)] a4
    a2^\fermata

    a2~
    \break
    a2~
    a2~
    a2~
    a2~
    a2~
    \break
    a2^\fermata

    a2~
    a2~
    a2~
    a2~
    a2~
    \break
    a2~
    a2~
    a2~
    a2~
    a2~
    \break
    \time 3/4
    a2.~
    a2.~
  } \alternative {
    { a4. r8 g8 a8 }
    { a2^\fermata g8 a8 \bar "||" }
  }

  \time 2/4
  a8([^\markup{ Finale } b8)] g4
  \break
  a8.([ g16 a8)] b8
  c8.([ d16 c8 b8)]
  d8([ c16 d16] c8) b8
  a8([ b16 c16] b8) d8
  \acciaccatura d8 c8([ b8)] a4
  a2^\fermata^\markup { \italic perdendosi }
  \bar "|."
}

tenorMusic = \relative {
  \set Staff.vocalName = "T."
  \set Staff.vocNam = "T."
  \key a \minor
  \time 2/4
  a2~^\fermata
  \repeat volta 2 {
    \time 2/4
    a2~
    a2~
    a2~
    a2~
    a2~
    a2~

    a4^\fermata e'8 d8
    d4 c8([ d8)]
    e4 a,8([ b8)]
    c8.([ d16 c8 b8)]
    d8([ c16 d16] c8) b8
    a8([ b16 c16] b8) d8
    \acciaccatura d8 c8([ b8)] a4
    a2^\fermata
    
    a2~
    a2~
    a2~
    a2~
    a2~
    a2~
    a2~
    a2~
    a2~
    a2~
    \time 3/4
    a2.~
    a2.~
  } \alternative {
    { a2. }
    { a2^\fermata g8 a8 }
  }

  \time 2/4
  a8([ b8)] g4
  a8.([ g16 a8)] b8
  c8.([ d16 c8 b8)]
  d8([ c16 d16] c8) b8
  a8([ b16 c16] b8) d8
  \acciaccatura d8 c8([ b8)] a4
  a2^\fermata
}

bassMusic = \relative {
  \set Staff.vocalName = "B."
  \set Staff.vocNam = "B."
  \key a \minor
  \time 2/4
  <a a,>2~^\fermata
  \repeat volta 2 {
    \time 2/4
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~^\fermata
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~
    <a a,>2~

    \time 3/4
    <a a,>2.~
    <a a,>2.~
  } \alternative {
    { <a a,>2. }
    { <a a,>2^\fermata <g g,>8 <a a,>8 }
  }

  \time 2/4
  <a a,>8([ <b b,>8)] <g g,>4
  <a a,>8.([ <g g,>16 <a a,>8)] <b b,>8
  <c c,>8.([ <d d,>16 <c c,>8 <b b,>8)]
  <d d,>8([ <c c,>16 <d d,>16] <c c,>8) <b b,>8
  <a a,>8([ <b b,>16 <c c,>16] <b b,>8) <d d,>8
  \acciaccatura d8 <c c,>8([ <b b,>8)] <a a,>4
  <a a,>2^\fermata
}

myScore = \new Score <<
  \new Staff <<
    \clef "G_8"
    \new Voice { \global \soloMusic }
    \addlyrics { \global \soloStanzaOne }
    \addlyrics { \global \soloStanzaTwo }
  >>

  \new StaffGroup <<
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
  \tempo 4 = 72
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
