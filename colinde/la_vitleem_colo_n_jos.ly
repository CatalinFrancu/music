\version "2.8.6"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0\in
}

\header {
  title = "La Vitleem colo-n jos..."
  subtitle = "Din regiunea Suceava"
  composer = "Prelucrare de N. Lungu"
  meter = \markup { Allegro moderato \note #"4" #1 = 126 }
  tagline = ""
}

global = {
  #(set-global-staff-size 16)
  \set Staff.midiInstrument = "clarinet"
  \key d \minor
  \time 2/4
  \autoBeamOff
}

sopStanzaOne = \lyricmode {
  \set stanza = "1."
  La Vit -- le -- em co -- lo-n jos __
  Ce -- rul ar -- de lu -- mi -- nos, __
  Prea -- cu -- ra -- ta naş -- te as -- tăzi pe Hris -- tos.

  Nu mai plân -- ge, mai -- ca mea,
  Nu __ mai __ plân -- ge, mai -- ca __ mea, __

  Nu mai plân -- ge, mai -- ca mea, __
  Scu -- te -- ce -- le noi ţi-om da, __
  Prea -- cu -- ra -- tă, Prun -- cul Sfânt de-i în -- fă -- şa.

  La Vit -- le -- em co -- lo-n jos... __
}

sopStanzaTwo = \lyricmode {
  \set stanza = "2."
  Naş -- te-n ies -- lea bo -- i -- lor __
  Pe-m -- pă -- ra -- tul tu -- tu -- ror, __
  Prea -- cu -- ra -- ta stă şi plân -- ge-n -- ce -- ti -- şor.
}

sopStanzaThree = \lyricmode {
  \set stanza = "3."
  N-a -- re scu -- tec de-n -- fă -- şat __
  Nici hăi -- nu -- ţe de-m -- bră -- cat __
  Prea -- cu -- ra -- ta pen -- tru prun -- cul de-m -- pă -- rat.
}

altoStanzaOne = \lyricmode {
  \set stanza = "1."
  La __ Vit -- le -- em
  La Vit -- le -- em co -- lo-n jos __
  Ce -- rul ar -- de lu -- mi -- nos, __
  Prea -- cu -- ra -- ta naş -- te as -- tăzi pe Hris -- tos.

  Nu mai plân -- ge, mai -- ca mea,
  Nu __ mai plân -- ge, mai -- ca __ mea, __

  Nu mai plân -- ge, mai -- ca mea, __
  Scu -- te -- ce -- le noi ţi-om da, __
  Prea -- cu -- ra -- tă, Prun -- cul Sfânt de-i în -- fă -- şa. __

  La Vit -- le -- em co -- lo-n jos... __
}

altoStanzaTwo = \lyricmode {
  \set stanza = "2."
  Naş -- te-n ies -- lea
  Naş -- te-n ies -- lea bo -- i -- lor __
  Pe-m -- pă -- ra -- tul tu -- tu -- ror, __
  Prea -- cu -- ra -- ta stă şi plân -- ge-n -- ce -- ti -- şor.
}

altoStanzaThree = \lyricmode {
  \set stanza = "3."
  N-a -- re scu -- tec
  N-a -- re scu -- tec de-n -- fă -- şat __
  Nici hăi -- nu -- ţe de-m -- bră -- cat __
  Prea -- cu -- ra -- ta pen -- tru prun -- cul de-m -- pă -- rat.
}

tenorStanzaOne = \lyricmode {
  \set stanza = "1."
  La Vit -- le -- em co -- lo-n jos, __
  co -- lo-n jos
  Ce -- rul ar -- de lu -- mi -- nos, __
  Naş -- te as -- tăzi pe Hris -- tos.

  Nu __ mai plân -- ge,
  Nu __ mai plân -- ge, mai -- ca mea, __

  Nu __ mai plân -- ge,
  Scu -- te -- ce -- le noi __ ţi-om da, __
  Prun -- cul Sfânt de-i în -- fă -- şa. __
}

tenorStanzaTwo = \lyricmode {
  \set stanza = "2."
  Naş -- te-n ies -- lea bo -- i -- lor, __
  bo -- i -- lor
  Pe-m -- pă -- ra -- tul tu -- tu -- ror, __
  Stă şi plân -- ge-n -- ce -- ti -- şor.
}

tenorStanzaThree = \lyricmode {
  \set stanza = "3."
  N-a -- re scu -- tec de-n -- fă -- şat, __
  de-n -- fă -- şat
  Nici hăi -- nu -- ţe de-m -- bră -- cat __
  Pen -- tru prun -- cul de-m -- pă -- rat.
}

bassStanzaOne = \lyricmode {
  \set stanza = "1."
  La __ Vit -- le -- em __
  co -- lo-n jos
  Ce -- rul ar -- de lu -- mi -- nos, __
  Naş -- te as -- tăzi pe Hris -- tos.

  Nu __ mai __ plân -- ge,
  Nu __ mai plân -- ge, mai -- ca __ mea, __

  Nu __ mai plân -- ge,
  Scu -- te -- ce -- le noi ţi-om da, __
  Prun -- cul Sfânt de-i în -- fă -- şa. __
}

bassStanzaTwo = \lyricmode {
  \set stanza = "2."
  Naş -- te-n ies -- lea __
  bo -- i -- lor
  Pe-m -- pă -- ra -- tul tu -- tu -- ror, __
  Stă şi plân -- ge-n -- ce -- ti -- şor.
}

bassStanzaThree = \lyricmode {
  \set stanza = "3."
  N-a -- re scu -- tec __
  de-n -- fă -- şat
  Nici hăi -- nu -- ţe de-m -- bră -- cat __
  Pen -- tru prun -- cul de-m -- pă -- rat.
}

sopMusic = \transpose g f \relative {
  \repeat volta 3 {
    R2 R2 R2 R2
  
    e4^\mp^\( b'4
    a4 b4
    g4 a4
    b4( g4)\)

    a4.^\accent^\( b8
    a4 g4
    fis4 e4
    e4(^\> d4)\!\)

    e8([^\( fis8)] g8([ fis8)]
    g4. fis8\)
    \break
    a4.^\accent^\( b8
    a4 g4
  } \alternative {
    { fis4 e4^\> e2\!\)^\fermata \bar ":|" }
  }
  \break

  % Nu mai plânge maica mea
  b'4^\(^\mf c4
  b4 c4^\<
  b4\! c4
  b2\)

  % Nu mai plânge maica mea
  e2~^\(^\markup {
    \musicglyph #"f"
    \hspace #2.0
    \bold "poco rit..."
  }
  e4 d8([ e8)]^\>
  d2\!
  c2
  b4( c4)
  b4( a4)
  b2~^\>
  b4.\)\! r8

  % Nu mai plânge maica mea, scutecele noi ţi-om da...
  e,4^\(^\markup {
    \musicglyph #"m"
    \hspace #-1.0
    \musicglyph #"p"
    \hspace #2.0
    \bold "a tempo"
  } b'4
  a4 b4
  g4 a4
  b4( g4)\)

  a4.^\(^\accent b8
  a4 g4
  fis4 e4
  e4( d4)\)

  e8([^\( fis8)] g8([ fis8)]
  g4. fis8\)
  a4.^\(^\accent^\mf b8
  a4 g4
  fis4^\> e4\!
  e4.\) r8

  % La Vitleem colo-n jos...
  e4^\(^\markup {
    \musicglyph #"m"
    \hspace #-1.0
    \musicglyph #"p"
    \hspace #2.0
    \bold "coda a tempo"
  } b'4
  a4 b4
  g4 a4
  b2~\)^\>
  b2~\!
  b2~
  b2~\pp^\>
  b2~\!
  b2~^\ppp
  b4^\fermata r4
  \bar "|."
}

altoMusic = \transpose g f \relative {
  \repeat volta 3 {
    e2~^\p
    e4 e4
    e2
    e4. r8

    e4^\( g4
    fis4 g4
    e4 fis4
    g4( e4)\)

    fis4.^\accent^\( g8
    fis4 e4
    d4 e4
    e4(^\> d4)\)\!

    e8([^\( fis8)] g8([ fis8)]
    g4. fis8\)
    fis4.^\accent^\( g8
    fis4 e4
    d4 e4^\>
    e2\!\)^\fermata
  }

  % Nu mai plânge maica mea
  g4^\(^\mf a4
  g4 a4^\<
  g4\! a4
  g2\)

  % Nu mai plânge maica mea
  g2~^\(^\f
  g4 g4^\>
  g2\!
  a2
  b4( a4)
  g4( a4)
  g2~^\>
  g4.\)\! r8

  % Nu mai plânge maica mea, scutecele noi ţi-om da...
  e4^\(^\mp g4
  fis4 g4
  e4 fis4
  g4( e4)\)

  fis4.^\(^\accent g8
  fis4 e4
  d4 e4
  e4( d4)\)

  e8([^\( fis8)] g8([ fis8)]
  g4. fis8\)
  e4.^\(^\accent^\mf e8
  e4 e4
  d4^\> e4\!
  e2~\)

  % La Vitleem colo-n jos...
  e2~
  e2~
  e2~
  e4. r8
  b4^\(^\p fis'4
  e4 fis4
  d4^\pp e4^\>
  e2~\)\!
  e2~^\ppp
  e4^\fermata r4
}

tenorMusic = \transpose g f \relative {
  \repeat volta 3 {
    b4^\mp c4
    b4 c4
    b4 c4
    b2~

    b2~
    b2
    b4 b4
    b2

    d4.^\accent^\( d8
    d4 b4
    b8([ a8)] g4
    g4( a4

    b2)~
    b4.\) r8
    d4.^\accent^\( d8
    d4 b4
    b4 b4^\>
    b2\)\!^\fermata
  }

  % Nu mai plânge
  e2~^\(^\mf
  e4 e4^\<
  e2\!
  e2\)

  % Nu mai plânge maica mea
  e2~^\(^\f
  e4 e4^\>
  e2\!
  e2
  e2
  e2
  e2~^\>
  e4.\)\! r8
  
  % Nu mai plânge maica mea, scutecele noi ţi-om da...
  e2~^\(^\p
  e4 e4
  e4( c4)
  b2\)

  d4.^\(^\accent d8
  d4 b4
  b8([ a8)] g4
  g4( a4

  b2)~
  b4.\) r8
  c4.^\(^\mf^\accent b8
  c4 b4
  b4 b4^\>
  b2~\)\!

  b2~
  b2~
  b2~
  b2~^\>
  b2~\!
  b2~
  b2~^\pp^\>
  b2~\!
  b2~^\ppp
  b4^\fermata r4
}

bassMusic = \transpose g f \relative {
  \repeat volta 3 {
    e,2~^\p
    e4 e4
    e2
    e2~

    e2~
    e2
    e4 e4
    e2

    d4.^\accent^\( d8
    d4 e4
    b4 c4
    c4(^\accent d4

    e2)~
    e4.\) r8
    d4.^\accent^\( d8
    d4 e4
    b4 e4^\>
    e2^\)\!^\fermata
  }

  % Nu mai plânge
  e2~^\(^\mf
  e4 e4^\<
  e2\!
  e2\)

  % Nu mai plânge maica mea
  c'2~^\(^\f
  c4 b8([^\> c8)]
  b2\!
  a2
  g4( a4)
  b4( c4)
  b2(^\>
  e,4.)\)\! r8
  
  % Nu mai plânge maica mea, scutecele noi ţi-om da...
  e2~^\(^\p
  e4 e4
  e2
  e2\)

  d4.^\(^\accent d8
  d4 e4
  b4 c4
  c4(^\accent d4

  e2)~
  e4.\) r8
  a4.^\(^\accent^\mf g8
  a4 b4
  b,4^\> e4\!
  e2~\)

  e2~
  e2~
  e2~
  e2~^\>
  e2~\!
  e2~
  e2~^\pp^\>
  e2~\!
  e2~^\ppp
  e4^\fermata r4
}

myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #9.0
} <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \sopMusic }
    \addlyrics { \sopStanzaOne }
    \addlyrics { \sopStanzaTwo }
    \addlyrics { \sopStanzaThree }
    
    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \altoStanzaOne }
    \addlyrics { \altoStanzaTwo }
    \addlyrics { \altoStanzaThree }
    
    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorStanzaOne }
      \addlyrics { \tenorStanzaTwo }
      \addlyrics { \tenorStanzaThree }
    >>
    
    \new Staff <<
      \clef bass
      \new Voice { \global \bassMusic }
      \addlyrics { \bassStanzaOne }
      \addlyrics { \bassStanzaTwo }
      \addlyrics { \bassStanzaThree }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \tempo 4 = 96
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
