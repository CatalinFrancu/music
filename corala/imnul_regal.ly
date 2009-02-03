\version "2.10.13"

\paper {
  #(set-paper-size "letter")
  between-system-padding = 0\mm
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Imnul Regal"
  poet = "versuri: Vasile Alecsandri"
  composer = "muzica: Ed. A. Hübsch"
  arranger = "aranjat de G. Musicescu"
  meter = "Allegro Maestoso"
  tagline = ""
}

global = {
  #(set-global-staff-size 16)
  \set Staff.midiInstrument = "clarinet"
  \override Score.VerticalAxisGroup #'remove-first = ##t
  \key g \major
  \time 4/4
  \autoBeamOff
}

% Use these instead of \p and \pp because the original document had something
% like g1^\f_\pp, which lilypond doesn't like.
myP = \markup {
  \musicglyph #"p"
}

myPp = \markup {
  \musicglyph #"p"
  \hspace #-1.0
  \musicglyph #"p"
}

dimMarkup = \markup { \italic "dim." }

finalNote = \markup {
  \bold
  \column {
    { \hspace #1.0 }
    { "Repetiţia se face cu" }
    { "nuanţarea însemnată" }
    { "sub portativ." }
  }
}

sopStanzaOne = \lyricmode {
  \set stanza = "1."
  Tră -- ias -- că Re -- ge -- le
  în pa -- ce şi o -- nor,
  De ţa -- ră iu -- bi -- tor
  Şi-a -- pă -- ră -- tor de __ ţa -- ră.

  Fi -- e Domn glo -- ri -- os __ glo -- ri -- os pes -- te noi,
  Fi -- e-n veci no -- ro -- cos, __ no -- ro -- cos în răz -- boi.
  O! Doam -- ne sfin -- te O! Doam -- ne __ sfin -- te
  ce -- resc pă -- rin -- te
  sus -- ţi -- ne cu-a Ta mâ -- nă
  co -- roa -- na, co -- roa -- na ro -- mâ -- nă.
}

sopStanzaTwo = \lyricmode {
  \set stanza = "2."
  Tră -- ias -- că pa -- tri -- a
  cât soa -- re -- le ce -- resc,
  Rai ve -- sel pă -- mân -- tesc
  Cu ma -- re fal -- nic __ nu -- me.

  Fi -- e-n veci el fe -- rit __ el fe -- rit de ne voi,
  Fi -- e-n veci lo -- cu -- it __ lo -- cu -- it de e -- roi.
  O! Doam -- ne sfin -- te O! Doam -- ne __ sfin -- te
  ce -- resc pă -- rin -- te
  în -- tin -- de a Ta mâ -- nă
  pe ţa -- ra, pe ţa -- ra ro -- "mâ -" \skip 2 nă.
}

altoStanzaOne = \lyricmode {
  \set stanza = "1."
  Tră -- ias -- că Re -- ge -- le
  în pa -- ce şi o -- nor,
  De ţa -- ră iu -- bi -- tor
  Şi-a -- pă -- ră -- tor de ţa -- ră.

  Fi -- e Domn glo -- ri -- os glo -- ri -- os pes -- te noi,
  Fi -- e-n veci no -- ro -- cos, no -- ro -- cos în răz -- boi.
  O! Doam -- ne sfin -- te O! Doam -- ne __ sfin -- te
  ce -- resc pă -- rin -- te
  sus -- ţi -- ne cu-a Ta mâ -- nă
  co -- roa -- na ro -- mâ -- nă.
}

tenorStanzaTwo = \lyricmode {
  \set stanza = "2."
  Tră -- ias -- că pa -- tri -- a
  cât soa -- re -- le ce -- resc,
  Rai ve -- sel pă -- mân -- tesc
  Cu ma -- re fal -- nic __ nu -- me.

  Fi -- e-n veci el fe -- rit el fe -- rit de ne voi,
  Fi -- e-n veci lo -- cu -- it lo -- cu -- it de e -- roi.
  O! Doam -- ne O! Doam -- ne __ sfin -- te
  ce -- resc pă -- rin -- te
  în -- tin -- de a Ta mâ -- nă
  pe ţa -- ra ro -- "mâ -" \skip 2 nă.
}

baritoneStanzaOne = \lyricmode {
  \set stanza = "1."
  Tră -- ias -- că Re -- ge -- le
  în pa -- ce şi o -- nor,
  De ţa -- ră iu -- bi -- tor
  Şi-a -- pă -- ră -- tor de ţa -- ră.

  Fi -- e Domn glo -- ri -- os
  Fi -- e-n veci no -- ro -- cos
  Fi -- e-n veci no -- ro -- cos în răz -- boi.
  O! Doam -- ne sfin -- te
  O! O Doam -- ne sfin -- te __
  ce -- resc pă -- rin -- te __
  sus -- ţi -- ne cu-a Ta mâ -- nă
  co -- roa -- na ro -- mâ -- nă.
}

baritoneStanzaTwo = \lyricmode {
  \set stanza = "2."
  Tră -- ias -- că pa -- tri -- a
  cât soa -- re -- le ce -- resc,
  Rai ve -- sel pă -- mân -- tesc
  Cu ma -- re fal -- nic nu -- me.

  Fi -- e-n veci el fe -- rit
  Fi -- e-n veci lo -- cu -- it
  Fi -- e-n veci lo -- cu -- it de e -- roi.
  O! Doam -- ne sfin -- te
  O! O Doam -- ne sfin -- te __
  ce -- resc pă -- rin -- te __
  în -- tin -- de a Ta mâ -- nă
  pe ţa -- ra ro -- "mâ -" \skip 2 nă.
}

bassStanzaOne = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8
  Şi-a -- pă -- ră -- tor de ţa -- ră.

  Fi -- e Domn glo -- ri -- os glo -- ri -- os pes -- te noi,
  Fi -- e-n veci no -- ro -- cos, no -- ro -- cos în răz -- boi.
  O! Doam -- ne sfin -- te
  ce -- resc pă -- rin -- te
}

bassStanzaTwo = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8
  Cu ma -- re fal -- nic nu -- me.

  Fi -- e-n veci el fe -- rit el fe -- rit de ne voi,
  Fi -- e-n veci lo -- cu -- it lo -- cu -- it de e -- roi.
  O! Doam -- ne sfin -- te
  ce -- resc pă -- rin -- te
}

sopMusic = \relative {
  \set Staff.vocalName = "Soprani"
  g'1^\p\<
  a2 b2\!
  d2.^\> c4
  b2\! r2
  a1
  \break

  b2 a2
  g2 e'2
  d2 r2
  g,1^\<
  a2 b2
  \break

  c2 d2
  e2\! r2
  d2^\p g,4 g4
  b2 a4.( b8)
  a1
  g2 r2
  \break

  \repeat volta 2 {
    c2^\f_\myPp e2
    g1
    b,2 d2
    g2.( b,4)
    a2 e'2
    \break

    d2 fis,4 fis4
    g2 r2
    R1
    c2 e2
    \break
    
    g1
    b,2 d2
    g2.( b,4)
    a2 e'2
    d2 fis,4 fis4
    \break

    g2 r4 d4^\<
    e4 fis4 g4 a4\!
    b1^\mf_\myP
    b2 e4.( d8)
    c1
    \break

    fis,1
    c'1
    c2 fis4.( e8)
    d1
    b1
    \break

    b1^\dimMarkup_\pp
    b2 b2
    d2 c2
    b2 a4 a4
    \break

    d2 g,4 g4
    b2 a4. b8
    a1
  } \alternative {
    { g2 r2 }
    { g1^\fermata }
  }
  \bar "|."
}

altoMusic = \relative {
  \set Staff.vocalName = "Alti"
  d1^\p^\<
  d2 g2\!
  g2^\> g2
  g2\! r2
  g1

  fis2 fis2
  g2 g2
  g2 r2
  d1^\<
  d2 g2

  g2 g2
  g2\! r2
  g2^\p g4 g4
  g2 g2
  fis1
  g2 r2

  \repeat volta 2 {
    g2^\f_\myPp g2
    g1
    g2 g2
    g1
    fis2 fis2

    fis2 d4 d4
    d2 r2
    R1
    g2 g2
    
    g1
    g2 g2
    g1
    fis2 fis2
    fis2 d4 d4

    d2 r4 d4^\<
    e4 fis4 g4 fis4\!
    g1^\mf_\myP
    g2 c4.( b8)
    a1

    d,1
    a'1
    a2 d4.( c8)
    b1
    g1

    e1^\dimMarkup_\pp
    e2 e2
    e2 e2
    gis2 a4 a4

    g!1
    g2 g2
    fis1
  } \alternative {
    { g2 r2 }
    { g1^\fermata }
  }
}

tenorOneMusic = \relative {
  \set Staff.vocalName = "Tenori I"
  g'1^\p^\<
  fis2 f2\!
  e2^\> es2
  d2\! r2
  cis1

  c!2 c2
  b2 e2
  d2 r2
  b1^\<
  a2 d2

  c2 b2
  bes2\! r2
  b!2^\p b4 b4
  d2 c4.( d8)
  c1
  b2 r2

  \repeat volta 2 {
    e2^\f_\myPp e2
    e1
    d2 d2
    d1
    c2 c2

    c2 c4 c4
    b2 r2
    R1
    e2 e2
    
    e1
    d2 d2
    d1
    c2 c2
    c2 c4 c4

    b2 r2
    r4 d4 d4 c4
    b1^\mf_\myP
    b2 e4.( d8)
    c1

    c1
    c1
    c2 fis4.( e8)
    d1
    d1

    d1^\dimMarkup_\pp
    d2 e2
    e2 e2
    d2 c4 c4

    b1
    d2 c4.( d8)
    c1
  } \alternative {
    { b2 r2 }
    { b1^\fermata }
  }
}

tenorTwoMusic = \relative {
  \set Staff.vocalName = "Tenori II"
  b1^\p^\<
  a2 d2\!
  g,2^\> c2
  b2\! r2
  a1

  a2 a2
  g2 c2
  b2 r2
  b1^\<
  a2 g2

  g2 g2
  g2\! r2
  g2^\p g4 g4
  b2 a2
  a1
  g2 r2

  \repeat volta 2 {
    c2^\f_\myPp c2
    c1
    b2 b2
    b1
    a2 a2

    a2 a4 a4
    g2 r2
    R1
    c2 c2
    
    c1
    b2 b2
    b1
    a2 a2
    a2 a4 a4

    g2 r2
    R1
    g1^\mf_\myP
    g2 c4.( b8)
    a1

    a1
    a1
    a2 d4.( c8)
    b1
    b1

    b1^\dimMarkup_\pp
    b2 gis2
    a2 c2
    d2 c4 c4

    b1
    b2 a2
    a1
  } \alternative {
    { g2 r2 }
    { g1^\fermata }
  }
}

baritoneMusic = \relative {
  \set Staff.vocalName = "Baritoni"
  d,1^\p^\<
  d2 d2\!
  g2^\> g2
  g2\! r2
  e1

  d2 d2
  d2 c2
  g'2 r2
  g1^\<
  fis2 f2

  e2 d2
  cis2\! r2
  r4 d4^\p d4 d4
  d2 d2
  d1
  d2 r2

  \repeat volta 2 {
    R1
    e4^\f_\myPp g4 c2
    R1
    d,4 g4 b2
    R1

    R1
    r2 d,4 d4
    g2 g4 g4
    g2 r2
    
    e4 g4 c2
    R1
    d,4 g4 b2
    R1
    R1

    g4 g4 g4 \breathe d'4^\<
    cis4 c4 b4 a4\!
    g1~
    g2 r2
    r4 d4^\mf fis4 a4

    d4( c4) a4( fis4)
    R1
    R1
    r4 d4 g4 b4
    e4( d4) b4( g4)

    e2.^\dimMarkup_\pp (fis4)
    gis2 e2
    e2 e2
    e2 e4 e4

    d1
    d2 d2
    d1
  } \alternative {
    { g,2 r2 }
    { g1^\fermata }
  }
}

bassMusic = \relative {
  \set Staff.vocalName = "Bassi"
  g,1^\p^\<
  g2 g2\!
  g2^\> g2
  g2\! r2
  g1

  g2 g2
  g2 c2
  g2 r2
  g'1^\<
  fis2 f2

  e2 d2
  cis2\! r2
  d2^\p d4 d4
  d2 d2
  <d d,>1
  g,2 r2

  \repeat volta 2 {
    <c c,>2^\f_\myPp <c c,>2
    <c c,>1
    g2 g2
    g1
    <d' d,>2 <d d,>2

    <d d,>2 <d d,>4 <d d,>4
    g,2 r2
    R1
    <c c,>2 <c c,>2

    <c c,>1
    g2 g2
    g1
    <d' d,>2 <d d,>2
    <d d,>2 <d d,>4 <d d,>4

    g,2 r2
    R1
    g1
    g2 g2
    <d' d,>1

    <d d,>1
    <d d,>1
    <d d,>2 <d d,>2
    g,1
    g'1

    gis2(^\dimMarkup_\pp e4 fis4)
    gis2 e2
    a2 a,2
    b2 c4 c4

    d1
    <d d,>2 <d d,>2
    <d d,>1
  } \alternative {
    { g,2 r2_\finalNote }
    { g1^\fermata }
  }
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \sopMusic }
    \addlyrics { \sopStanzaOne }
    \addlyrics { \sopStanzaTwo }

    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \altoStanzaOne }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorOneMusic }
      \addlyrics { \tenorStanzaTwo }
    >>

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorTwoMusic }
    >>

    \new Staff <<
      \clef "bass"
      \new Voice { \global \baritoneMusic }
      \addlyrics { \baritoneStanzaOne }
      \addlyrics { \baritoneStanzaTwo }
    >>

    \new Staff <<
      \clef "bass"
      \new Voice { \global \bassMusic }
      \addlyrics { \bassStanzaOne }
      \addlyrics { \bassStanzaTwo }
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
    \Score tempoWholesPerMinute = #(ly:make-moment 240 4)
  }
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
  \new Voice { \global \tenorOneMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \tenorTwoMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \baritoneMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \bassMusic }
  \midi { \midiOutput }
}
