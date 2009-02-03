\version "2.10.14"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Doruleţ, doruleţule!"
  subtitle = "Melodie populară"
  poet = "Versuri populare"
  meter = \markup { Allegretto \note #"4" #1 = 88 }
  tagline = ""
}

crescMarkup = \markup {
  \large \italic "cresc."
}

dimMarkup = \markup {
  \large \italic "dim."
}

sfAndFermata = \markup {
  \hspace #0.1
  \musicglyph #"scripts.ufermata"
  \musicglyph #"s"
  \musicglyph #"f"
}

global = {
  #(set-global-staff-size 16)
  \set Staff.midiInstrument = "clarinet"
  \key fis \minor
  \time 2/4
  \autoBeamOff
}

womenStanzaOne = \lyricmode {
  \set stanza = "1."
  Frun -- zu -- li -- ţă, frun -- za mea, __
  Do -- ru -- leţ, do -- ru -- le -- ţu -- le, __
  Vân -- tul când __ te-o le -- gă -- na. __
  Do -- ru -- leţ, do -- ru -- le -- ţu -- le. __

  Do -- ru -- leţ, do -- ru -- leţ, do -- ru -- le -- ţu -- le,
  Do -- ru -- leţ, do -- ru -- le -- ţu -- le, I -- ha!
  Do -- ru -- leţ, dor, do -- ru -- le! __

  Măi! __
}

womenStanzaTwo = \lyricmode {
  \set stanza = "2."
  Du pă -- du -- rii, du în zbor, __
  Do -- ru -- leţ, do -- ru -- le -- ţu -- le, __
  Cân -- te -- cul __ de drag şi dor!
}

womenStanzaThree = \lyricmode {
  \set stanza = "3."
  Du-l mai iu -- te, frun -- za mea, __
  Do -- ru -- leţ, do -- ru -- le -- ţu -- le, __
  Pân' nu vi -- ne iar -- na grea.
}

womenStanzaFour = \lyricmode {
  \set stanza = "4."
  Ea îm -- bra -- că-n
  \set ignoreMelismata = ##t
  şu -- ba groa -- \skip 16 să
  \unset ignoreMelismata
  Do -- ru -- leţ, do -- ru -- le -- ţu -- le, __
  Şi pă -- du -- rea
  \set ignoreMelismata = ##t
  mea fru -- moa -- \skip 16 să.
  \unset ignoreMelismata
}

womenStanzaFive = \lyricmode {
  \set stanza = "5."
  Dru -- mul iar -- na
  \set ignoreMelismata = ##t
  tro -- ie -- neş -- \skip 16 te
  \unset ignoreMelismata
  Do -- ru -- leţ, do -- ru -- le -- ţu -- le, __
  Do -- rul meu __ nu
  \set ignoreMelismata = ##t
  mai răz -- beş -- \skip 16 te.
  \unset ignoreMelismata
}

tenorStanzaOne = \lyricmode {
  \set stanza = "1."
  Frun -- zu -- li -- ţă, frun -- za mea, __
  Do -- ru -- leţ, do -- ru -- le -- ţu -- le, __
  Vân -- tul când __ te-o le -- gă -- na. __
  Do -- ru -- leţ, do -- ru -- le -- ţu -- le. __

  Do -- ru -- leţ, do -- ru -- leţ, do -- ru -- le -- ţu -- le,
  Do -- ru -- leţ, do -- ru -- le -- ţu -- le, I -- ha!
  Do -- ru -- leţ, do -- ru -- leţ, do -- ru -- le -- ţu -- le,
  dor, __ do -- ru -- le -- ţu -- le!

  Măi! __
}

bassWords = \lyricmode {
  \set stanza = "1.-5."
  Măi, do -- ru -- le -- ţu -- le!
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4

  Dor, do -- ru -- le -- ţu -- le, dor,

  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 4

  Dor, do -- ru -- le -- ţu -- le, dor!

  Do -- ru -- leţ, dor, Do -- ru -- le, do -- ru leţ __
  Do -- ru -- leţ, do -- ru -- leţ, do -- ru -- le -- ţu -- le
  do -- ru -- le -- ţu -- le! __ Măi,

  Măi! __
}

womenMusic = \relative {
  \set Staff.vocalName = "S. + A."
  R2
  R2
  \repeat volta 5 {
    cis'8^\mp cis8 cis16([ d16)] d8
    cis8 cis8^\> \slurDashed cis16([ b16 a8)]\! \slurSolid
    \break
    gis16 a16 b8^\< b16 cis16 a16\! b16
    cis4~^\> cis8\! r8

    e8^\mf e8 e16([ fis16)] fis8
    cis8 cis8^\> \slurDashed cis16([ b16 a8)]\! \slurSolid
    \break
    gis16^\p a16 b8^\< b16 cis16 a16\! gis16
    fis4~^\> fis8\! r8

    gis16^\p a16 b8^\rtoe gis16^\crescMarkup a16 b8^\rtoe
    \break
    a16^\< gis16 a16\! b16 cis4\tenuto
    gis16^\mf a16 b8^\rtoe a16^\< gis16 a16 b16\!
    \break
    cis8 fis8^\rtoe^\sf cis8^\rtoe^\sf r8

    cis4.^\p cis8^\crescMarkup
    cis4.^\< fis8\!^\sf^\accent
    \break
    cis4.^\mf eis8^\tenuto^\dimMarkup
    fis4~^\> fis8\! r8
  }
  \acciaccatura { fis16[ gis16] } fis2~^\sfAndFermata
  fis8 r8 r4
  \bar "|."
}

tenorMusic = \relative {
  \set Staff.vocalName = "T."
  R2
  R2
  \repeat volta 5 {
    a8^\mp a8 a16([ b16)] b8
    a8 a8^\> \slurDashed a16([ gis16 a8)]\! \slurSolid
    e16 fis16 gis8^\< gis16 a16 fis16\! gis16
    a4~^\> a8\! r8

    cis8^\mf cis8 cis16([ d16)] d8
    a8 a8^\> \slurDashed a16([ gis16 a8)]\! \slurSolid
    e16^\p fis16 gis8^\< gis16 a16 fis16\! eis16
    fis4~^\> fis8\! r8

    eis16^\p fis16 gis8^\rtoe eis16 fis16 gis8^\rtoe
    fis16^\< eis16 fis16\! gis16 a4\tenuto
    eis16^\mf fis16 gis8^\rtoe fis16^\< eis16 fis16 gis16\!
    a8 gis8^\rtoe^\sf a8^\rtoe^\sf r8

    gis16^\p a16 b8^\rtoe gis16 a16 b8^\rtoe
    a16^\< gis16 a16 b16\! cis4\tenuto
    cis8([^\mf b8)]~ b8 b16 cis16
    a8^\> gis8 a8\! r8
  }
  \grace s8 ais2~^\sfAndFermata
  ais8 r8 r4
}

bassMusic = \relative {
  \set Staff.vocalName = "B."
  e,2^\sf_\accent
  e16^\> fis16 cis16 d16\! e4 
  \repeat volta 5 {
    a8^\mp e8 a8 e8
    a8 e8^\> \slurDashed a,8([ cis8)]\! \slurSolid
    e4\tenuto^\< e8 e16([[\! d16)]
    cis8^\> e8 a8^\! \breathe cis16([ b16)]

    a8^\mf e8 a8 e8
    a8 e8^\> \slurDashed a,8([ cis8)]\! \slurSolid
    e4^\p cis8^\< cis8\!
    fis8^\> fis8 fis8\! \breathe fis8^\sf

    cis4.^\p cis8
    cis4.^\< fis8\!^\sf
    cis4.^\mf^\< cis8\!
    fis4 \breathe fis16^\f a16^\> gis16([ fis16)]\!

    eis16^\p fis16 gis8^\rtoe eis16 fis16 gis8^\rtoe
    fis16^\< eis16 fis16 gis16\! a4\tenuto
    a8^\mf gis8 gis8 gis8
    fis4~^\> fis8\! \breathe fis8^\sf
  }
  \grace s8 fis2~^\sfAndFermata
  fis8 r8 r4
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \womenMusic }
    \addlyrics { \womenStanzaOne }
    \addlyrics { \womenStanzaTwo }
    \addlyrics { \womenStanzaThree }
    \addlyrics { \womenStanzaFour }
    \addlyrics { \womenStanzaFive }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorStanzaOne }
      \addlyrics { \womenStanzaTwo }
      \addlyrics { \womenStanzaThree }
      \addlyrics { \womenStanzaFour }
      \addlyrics { \womenStanzaFive }
    >>

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \bassMusic }
      \addlyrics { \bassWords }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \context {
    \Score tempoWholesPerMinute = #(ly:make-moment 88 4)
  }
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
