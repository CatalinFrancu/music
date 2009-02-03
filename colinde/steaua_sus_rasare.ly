\version "2.8.6"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0\in
}

\header {
  title = "Steaua sus răsare"
  arranger = "Ioan D. Chirescu"
  tagline = ""
}

global = {
  #(set-global-staff-size 14)
  \override Score.VerticalAxisGroup #'remove-first = ##t
  \override ChoirStaff.SystemStartBracket #'collapse-height = #0.0
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = \markup {
    \override #'(baseline-skip . 2) \number {
      \column { "4" "4" }
    }
  }
  \set Staff.midiInstrument = "clarinet"
  \key a \major
  \time 4/4
  \autoBeamOff
}

introWords = \lyricmode {
  Ci -- ne pri -- meş -- te stea -- ua fru -- moa -- să şi
  lu -- mi -- noa -- să?
  Cu col -- ţuri mul -- te şi mă -- run -- te,
  De la Naş -- te -- rea lui Hris -- tos
}

sopStanzaOne = \lyricmode {
  Ca un soa -- re lu -- mi -- nos?
  \set stanza = "1."
  Stea -- ua sus ră -- sa -- re __
  Ca o tai -- nă ma -- re,
  Stea -- ua lu -- mi -- nea -- ză __
  Şi a -- de -- ve -- rea -- ză.

  De la ti -- ne -- re -- ţe __
  Pân' la bă -- trâ -- ne -- ţe.
}

sopStanzaTwo = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \set stanza = "2."
  Că as -- tăzi Cu -- ra -- ta, __
  Prea -- ne -- vi -- no -- va -- ta
  Fe -- cioa -- ra Ma -- ri -- a __
  Naş -- te __ pe Me -- si -- a.
}

sopStanzaThree = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \set stanza = "3."
  În ţa -- ra ves -- ti -- tă __
  Bet -- le -- em nu -- mi -- tă,
  Ma -- gii cum ză -- ri -- ră __
  Stea -- ua, __ şi por -- ni -- ră.
}

sopStanzaFour = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \set stanza = "4."
  Mer -- gând du -- pă ra -- ză __
  Pe Hris -- tos să-L va -- ză
  Şi da -- că so -- si -- ră, __
  În -- da -- tă-L gă -- si -- ră.
}

sopStanzaFive = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \set stanza = "5."
  La dân -- sul in -- tra -- ră __
  Şi se în -- chi -- na -- ră
  Cu da -- ruri gă -- ti -- te __
  Lui Hris -- tos me -- ni -- te.
}

sopStanzaSix = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \set stanza = "6."
  Lu -- ând fi -- e -- ca -- re __
  Bu -- cu -- ri -- e ma -- re,
  Ca -- re bu -- cu -- ri -- e __
  Şi a -- ici să fi -- e,
}

altoStanzaOne = \lyricmode {
  Ca un soa -- re lu -- mi -- nos?
  \skip 8. \skip 16 \skip 8 \skip 8 \skip 4 \skip 4
  \skip 8. \skip 16 \skip 8 \skip 8 \skip 4 \skip 4
  Stea -- ua lu -- mi -- nea -- ză
  Şi __ a -- de -- ve -- rea -- ză.

  De la ti -- ne -- re -- ţe __
  Pân' la bă -- trâ -- ne -- ţe.
}

altoStanzaTwo = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \skip 8. \skip 16 \skip 8 \skip 8 \skip 4 \skip 4
  \skip 8. \skip 16 \skip 8 \skip 8 \skip 4 \skip 4
  Fe -- cioa -- ra Ma -- ri -- a
  Naş -- te pe Me -- si -- a.
}

altoStanzaThree = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \skip 8. \skip 16 \skip 8 \skip 8 \skip 4 \skip 4
  \skip 8. \skip 16 \skip 8 \skip 8 \skip 4 \skip 4
  Ma -- gii cum ză -- ri -- ră
  Stea -- ua, şi por -- ni -- ră.
}

altoStanzaFour = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \skip 8. \skip 16 \skip 8 \skip 8 \skip 4 \skip 4
  \skip 8. \skip 16 \skip 8 \skip 8 \skip 4 \skip 4
  Şi da -- că so -- si -- ră,
  În -- da -- tă-L gă -- si -- ră.
}

altoStanzaFive = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \skip 8. \skip 16 \skip 8 \skip 8 \skip 4 \skip 4
  \skip 8. \skip 16 \skip 8 \skip 8 \skip 4 \skip 4
  Cu da -- ruri gă -- ti -- te
  Lui __ Hris -- tos me -- ni -- te.
}

altoStanzaSix = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \skip 8. \skip 16 \skip 8 \skip 8 \skip 4 \skip 4
  \skip 8. \skip 16 \skip 8 \skip 8 \skip 4 \skip 4
  Ca -- re bu -- cu -- ri -- e
  Şi __ a -- ici să fi -- e,
}

tenorStanzaOne = \lyricmode {
  Ca un soa -- re lu -- mi -- nos?
  \set stanza = "1."
  Stea -- ua sus ră -- sa -- re __
  Stea -- ua lu -- mi -- nea -- ză __
  Şi a -- de -- ve -- rea -- ză.

  De la ti -- ne -- re -- ţe __
  Pân' la bă -- trâ -- ne -- ţe.
}

tenorStanzaTwo = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \set stanza = "2."
  Că as -- tăzi Cu -- ra -- ta, __
  Fe -- cioa -- ra Ma -- ri -- a __
  Naş -- te pe Me -- si -- a.
}

tenorStanzaThree = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \set stanza = "3."
  În ţa -- ra ves -- ti -- tă __
  Ma -- gii cum ză -- ri -- ră __
  Stea -- ua, şi por -- ni -- ră.
}

tenorStanzaFour = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \set stanza = "4."
  Mer -- gând du -- pă ra -- ză __
  Şi da -- că so -- si -- ră, __
  În -- da -- tă-L gă -- si -- ră.
}

tenorStanzaFive = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \set stanza = "5."
  La dân -- sul in -- tra -- ră __
  Cu da -- ruri gă -- ti -- te __
  Lui Hris -- tos me -- ni -- te.
}

tenorStanzaSix = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4
  \set stanza = "6."
  Lu -- ând fi -- e -- ca -- re __
  Ca -- re bu -- cu -- ri -- e __
  Şi a -- ici să fi -- e,
}

bassWords = \lyricmode {
  la la la la la la la la
}

introMusic = \relative {
  \set Staff.vocalName = \markup { \column { "S." "A." } }
  \set Staff.vocNam = \markup { \column { "S." "A." } }
  \once \override Staff.TimeSignature #'text = ""
  \cadenzaOn

  <<
    {
      \voiceOne
      \override DynamicLineSpanner #'staff-padding = #3
      a'8^\markup{ \column {
        { \bold "Psalmodiind" }
        { \line { \musicglyph #"m" \hspace #-1.0 \musicglyph #"p" } }
      } }
      a8
      a8 a8 gis8 b8 fis8 a8 gis8([ fis8)] e8 e8^\<
      fis8 gis8\! b4\fermata^\> a4\fermata\!
      \bar "|"
      \break
      
      gis8 b8^\accent a8 gis8 e8 fis8 gis8 a4\fermata a4\fermata
      
      \clef bass
      e,8^\markup{ \hspace #-2.0 "T." } e8 b'8 a8 gis8 gis8 fis8 e4\fermata
    }
    \new Voice = "split" {
      \autoBeamOff
      \voiceTwo
      a'8 a8 a8 a8 gis8 b8 fis8 a8 gis8([ fis8)] e8 e8
      fis8 gis8 b4\fermata a4\fermata
      \bar "|"
      
      gis8 b8_\accent a8 gis8 e8 fis8 gis8 a4\fermata a4\fermata
      
      \clef bass
      e,8_\markup{ \hspace #-2.0 "B." } e8 b'8 a8 gis8 gis8 fis8 e4\fermata
    }
  >>
  \bar "|"
  \cadenzaOff
  \time 4/4
  \break
}

sopMusic = \relative {
  \set Staff.vocNam = "S."
  \cadenzaOn
  s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4
  \cadenzaOff

  e8 e8^\< fis8 gis8 a8\! b8 cis4^\fermata

  \repeat volta 6 {
    <<
      { R1 }
      { s1^\markup{ \bold Moderato } }
    >>
    \break

    a8.^\mp gis16 a8 b8 cis16([ b16 a16 gis16)] fis8([ e8)]
    a8. gis16 a8 b8 cis16([ d16 e16 fis16)] e4
    \break

    e8 e8 e8 e8 fis16([ e16 d16 cis16)] b8([ a8)]
    b8 e16([ d16)] cis8 b8 a4 a4
    \break
  }

  d8.^\markup { \column {
    "Coda"
    { \bold "Poco a poco rall." }
  } }
  cis16 b8 cis16([ d16)] e8([ cis8)] a8([ cis8)]
  b8 b8 fis8 gis8 a8([ cis16 b16)] a4
  \bar "|."
}

altoMusic = \relative {
  \set Staff.vocNam = "A."
  \cadenzaOn
  s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4
  \cadenzaOff

  e8 e8^\< fis8 e8 e8\! e8 e4^\fermata

  \repeat volta 6 {
    R1

    cis8. b16 cis8 e8 a8([ e8)] cis4
    cis8. b16 cis8 e8 a16([ b16 cis16 d16)] cis4

    b8 a8 gis8 a16([ b16)] cis8([ a8)] e4
    gis16([ fis16)] gis8 a8 e8 e4 e4
  }

  d'8. cis16 b8 cis16([ d16)] e8([ cis8)] a8([ cis8)]
  b8 b8 fis8 gis8 a8([ cis16 b16)] a4
}

tenorMusic = \relative {
  \set Staff.vocNam = "T."
  \cadenzaOn
  s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4
  \cadenzaOff

  e,8 e8^\< fis8 gis8 a8\! b8 cis4^\fermata

  \repeat volta 6 {
    e8 e8 cis8 d8 e2

    e1~
    e1

    d8 cis8 b8 cis16([ d16)] e8([ cis8)] a8([ cis8)]
    b8 b8 e8 d8 cis4 cis4
  }

  d8. cis16 b8 cis16([ d16)] e8([ cis8)] a8([ cis8)]
  b8 b8 fis8 gis8 a8([ cis16 b16)] a4
}

bassMusic = \relative {
  \set Staff.vocNam = "B."
  \cadenzaOn
  s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4 s4
  \cadenzaOff

  % Ugly solution to show this staff (which only contains rests) while hiding
  % other staves with rests. Force an invisible r1.
  <<
    { R1 }
    {
      \once \override Staff.Rest #'break-visibility = #all-invisible
      r1
    }
  >>

  \repeat volta 6 {
    R1

    <a a,>4 <a a,>4 <a a,>4 <a a,>4 
    <a a,>4 <a a,>4 <a a,>4 <a a,>4 

    <gis gis,>8 <a a,>8 e8 e8 a4 a,4
    e'8 <e e,>8 <fis fis,>8 <gis gis,>8 <a a,>4 <a a,>4
  }

  d8. cis16 b8 cis16([ d16)] e8([ cis8)] a8([ cis8)]
  b8 b8 fis8 gis8 a8([ cis16 b16)] a4
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \introMusic }
    \addlyrics { \introWords }

    \new Staff \new Voice { \global \sopMusic }
    \addlyrics { \sopStanzaOne }
    \addlyrics { \sopStanzaTwo }
    \addlyrics { \sopStanzaThree }
    \addlyrics { \sopStanzaFour }
    \addlyrics { \sopStanzaFive }
    \addlyrics { \sopStanzaSix }

    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \altoStanzaOne }
    \addlyrics { \altoStanzaTwo }
    \addlyrics { \altoStanzaThree }
    \addlyrics { \altoStanzaFour }
    \addlyrics { \altoStanzaFive }
    \addlyrics { \altoStanzaSix }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorStanzaOne }
      \addlyrics { \tenorStanzaTwo }
      \addlyrics { \tenorStanzaThree }
      \addlyrics { \tenorStanzaFour }
      \addlyrics { \tenorStanzaFive }
      \addlyrics { \tenorStanzaSix }
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
  \tempo 4 = 92
  \context {
    \Voice
    \remove "Dynamic_performer"
    \remove "Span_dynamic_performer"
  }
}

\score {
  \unfoldRepeats
  \myScore
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \introMusic }
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
