\version "2.10.13"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Miluieşte-mă, Dumnezeule (Psalmul 50)"
  subtitle = "Denia celor douăsprezece Evanghelii"
  subsubtitle = "după Evanghelia a şaptea"
  composer = "Gh. Cucu"
  tagline = ""
}

global = {
  #(set-global-staff-size 16)
  \set Staff.midiInstrument = "clarinet"
  \key a \minor
  \time 4/4
  \autoBeamOff
}

myCaesura = {
  \once \override BreathingSign #'text =
  #(make-musicglyph-markup "scripts.caesura")
  \breathe
}

crescMarkup = \markup{ \large \italic "cresc" }
ritMarkup = \markup{ \large \bold "rit." }

sopWords = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  şi du -- pă mul -- ţi -- mea în -- du -- ră -- ri -- lor Ta -- le

  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  şter -- ge __ fă -- ră -- de -- le -- gea __ mea __
  şter -- ge
  şter -- ge
  şter -- ge
}

altoWords = \lyricmode {
  Mi -- lu -- ieş -- te -- mă
  Mi -- lu -- ieş -- te -- mă
  Mi -- lu -- ieş -- te -- mă,
  mi -- lu -- ieş -- te -- mă,
  Mi -- lu -- ieş -- te -- mă, Dum -- ne -- ze -- u -- le,
  du -- pă ma -- re mi -- la Ta. __
  Mi -- lu -- ieş -- te -- mă, Dum -- ne -- ze -- u -- le,
  mi -- lu -- ieş -- te -- mă, Dum -- ne -- ze -- u -- le,
  mi -- lu -- ieş -- te -- mă, Dum -- ne -- ze -- u -- le,
  du -- pă ma -- re mi -- la __ Ta. __

  şter -- ge __
  şter -- ge __
  şter -- ge __ fă -- ră -- de -- le -- gea __ mea,
  şter -- ge fă -- ră -- de -- le -- gea __ mea __
  şter -- ge __
  şter -- ge __

  Mai vâr -- tos mă spa -- lă de fă -- ră -- de -- le -- gea mea __
  şter -- ge __ fă -- ră -- de -- le -- gea __ mea __
  şter -- ge __
  şter -- ge __
  şter -- ge __
  şter -- ge __ fă -- ră -- de -- le -- gea __ mea __
  fă -- ră -- de le -- gea __ mea __

  şi de pă -- ca -- tul meu cu -- ră -- ţeş -- te -- mă
  şi de pă -- ca -- tul meu cu -- ră -- ţeş -- te -- mă.
  Mi -- lu -- ieş -- te -- mă, Dum -- ne -- ze -- u -- le,
  du -- pă ma -- re mi -- la Ta. __
}

menWords = \lyricmode {
  Mi -- lu -- ieş -- te -- mă, Dum -- ne -- ze -- u -- le,
  du -- pă ma -- re mi -- la Ta. __
  Mi -- lu -- ieş -- te -- mă
  Mi -- lu -- ieş -- te -- mă
  mi -- lu -- ieş -- te -- mă,
  Mi -- lu -- ieş -- te -- mă, Dum -- ne -- ze -- u -- le,
  du -- pă ma -- re mi -- la Ta. __

  Mi -- lu -- ieş -- te -- mă, Dum -- ne -- ze -- u -- le,
  mi -- lu -- ieş -- te -- mă, Dum -- ne -- ze -- u -- le,
  mi -- lu -- ieş -- te -- mă, Dum -- ne -- ze -- u -- le,
  du -- pă ma -- re mi -- la __ Ta. __

  şter -- ge __
  şter -- ge __
  şter -- ge __ fă -- ră -- de -- le -- gea mea,
  şter -- ge fă -- ră -- de -- le -- gea __ mea __
  şter -- ge __
  şter -- ge __
  
  Mai vâr -- tos mă spa -- lă de fă -- ră -- de -- le -- gea mea __
  şter -- ge __ fă -- ră -- de -- le -- gea mea __
  şter -- ge __
  şter -- ge __
  şter -- ge __
  şter -- ge __ fă -- ră -- de -- le -- gea mea __
  fă -- ră -- de -- le -- gea mea __

  şi de pă -- ca -- tul meu cu -- ră -- ţeş -- te -- mă
  şi de pă -- ca -- tul meu cu -- ră -- ţeş -- te -- mă.
  Mi -- lu -- ieş -- te -- mă, Dum -- ne -- ze -- u -- le,
  du -- pă ma -- re mi -- la Ta. __
}

sopMusic = \relative {
  \voiceOne
  \partial 4 bes'4\rest
  R1
  R1
  R1
  \break

  R1
  R1
  R1
  R1
  \break

  R1
  R1
  r2^\crescMarkup r4 \myCaesura a8^\mf a8
  c4. b8 a4 b8 c8
  \break

  d4. c8 b4 c8 d8
  e4. d8 c8([ d8)] b4
  a1~
  a2~ a4 e'8^\p e8
  \break

  e4. d8 d4 d8 e8
  d4. c8 c4 \myCaesura e8 e8
  e4. d8 d4 d8 e8
  d4. c8 c4 \myCaesura c8 c8
  \break

  c4. b8 b4 b8 c8
  b4. a8 a4 b8 c8
  e4. d8 c8([ d8)] b4
  a1~
  \break % page 1

  a1
  a8 a8 b8 c8 d8 c8 b8 c8
  e8([ d8)] c8 d8 e4 a,4
  f'4-> e4~ e8 b8\rest b4\rest
  \break

  e4 d4~ d8 b8\rest b4\rest
  f'4 e4~ e8 d8 c8 b8
  c4 d4 e4 \breathe f4
  \break

  e8 g8 e8 d8 c8([ d8)] b4
  a1~
  a1~
  a2~ a4 b4\rest
  \break

  c4^\pp b4~^\ritMarkup b8 b8\rest b4\rest
  b4 a4~ a8 b8\rest b4\rest
  d4 d4~ d8 d8 d8 d8
  e4 d8([ c8)] d2~
  \break

  d4 r4 r8 e4( d8)
  c4 r4 r8 f4( e8)
  d4 r4  r8 g4 f8
  \break

  e4 d4~ d8 d8 d8 d8
  e4 d8([ c8)]  d4~ d8 b8\rest
  f'4 e4~ e8 b8\rest b4\rest
  e4 d4~ d8 b8\rest b4\rest
  \break % page 2

  f'4 e4~ e8 b8\rest b4\rest
  e4 e4~ e8 e8 e8 e8
  e4 e4 e2~
  e2~ e8 \breathe e8 e8 e8
  \break

  e4 e4 e2~
  e2~ e8 \myCaesura e8 e8 e8
  e4. d8 d4 d8 e8
  d4. c8 c8 e8 e8 e8
  \break

  e4. d8 d4 d8 e8
  d4. c8 c4 \myCaesura c8 c8
  c4. b8 b4 b8 b8
  b4. a8 a4 \breathe b8 c8
  \break

  e4. d8 c8([ d8)] b4
  a1~
  a1~
  a2~ a4 b4\rest
  \bar "|."
}

altoMusic = \relative {
  \voiceTwo
  \partial 4 b'4\rest
  R1 |
  R1 |
  R1 |

  r2 r4 e,8^\p e8 |
  e4. e8 e4 r4 |
  r2 r4 e8 g8 |
  f4. e8 e4 r4 |

  r2 r4 e8 e8 |
  e4. e8 e4 e8 e8 |
  e4. e8 e4 a8 a8 |
  c4. b8 a4 b8 c8 |

  d4. c8 b4 c8 d8 |
  e4. d8 c8([ d8)] b4 |
  a4( g8[ f8] e8[ a8 g8 f8] |
  e4 f4 e4) e8 e8 |

  a4. a8 a4 b8 b8 |
  g4. g8 g4 e8 e8 |
  a4. a8 a4 b8 b8 |
  g4. g8 g4 g8 a8 |

  f4. f8 f4 f8 g8 |
  e4. e8 e4 g8 g8 |
  a8([ b8 c8)] b8 a8([ g8)] f8([ g8)]
  a4( g8[ f8] e8[ a8 g8 f8] |
  % page 1

  e4 f4 e4 d4 |
  e2)~ e8 r8 r4 |
  R1 |
  a8([ b8)] c4~ c8 b8\rest b4\rest |

  g8([ a8)] b4~ b8 b8\rest b4\rest |
  a8([ b8)] c4~ c8 g8 e8 g8 |
  c8([ g8)] a8([ b8)] c8([ b8)] a8([ b8)] |

  c8 e8 c8 b8 a8([ g8)] f8([ g8)] |
  a4( g8[ f8] e8[ a8 g8 f8] |
  e4 f4 e4 d4 |
  e2)~ e4 b'4\rest |

  e,8([ fis8)] g4~ g8 b8\rest b4\rest |
  d,8([ e8)] fis4~ fis8 b8\rest b4\rest |
  R1 |
  R1 |

  g8 g8 a8 b8 c4 b4 |
  a8 a8 b8 c8 d4 c4 |
  b8([ g8 a8 b8] c4~ c8[ b16 c16)] |

  g8([ a8)] b4~ b8 b8 b8 b8 |
  g4 g8([ a8)] b4~ b8 b8\rest |
  a8([ b8)] c4~ c8 b8\rest b4\rest |
  g8([ a8)] b4~ b8 b8\rest b4\rest |
  % page 2

  a8([ b8)] c4~ c8 b8\rest b4\rest |
  c4 b4~ b8 e8 d8 c8 |
  b8([ e8)] d8([ c8)] b4( c4 |
  b4 a4 b8) e8 d8 c8 |

  b8([ e8)] d8([ c8)] b4( c4 |
  b4 a4 b8) e,8 e8 e8 |
  a4. a8 a4 b8 b8 |
  g4. g8 g8 e8 e8 e8 |

  a4. a8 a4 b8 b8 |
  g4. g8 g4 g8 a8 |
  f4. f8 f4 f8 g8 |
  e4. e8 e4 b'8 c8 |

  e4. d8 c8([ d8)] b4
  a4( g8[ f8] e8[ a8 g8 f8] |
  e4 f4 e4 d4 |
  e2)~ e4 b'4\rest
}

tenorMusic = \relative {
  \voiceOne
  \partial 4 a,8^\mf a8 |
  c4. b8 a4 b8 c8 |
  d4. c8 b4 c8 d8 |
  e4. d8 c8([ d8)] b4 |

  a2~ a4 d4\rest |
  d2\rest d4\rest a8 a8 |
  c4. b8 a4 d4\rest |
  d2\rest d4\rest a8 a8 |

  c4. b8 a4 d4\rest |
  d2\rest d4\rest e8 e8 |
  e4. e8 e4 \myCaesura a,8 a8 |
  c4. b8 a4 b8 c8 |

  d4. c8 b4 c8 d8 |
  e4. d8 c8([ d8)] b4 |
  a4( d4 a4 d4 |
  a4 d4 a4) e'8^\p e8 |

  f4. f8 f4 g8 g8 |
  e4. e8 e4 \myCaesura e8 e8 |
  f4. f8 f4 g8 g8 |
  e4. e8 e4 \myCaesura e8 f8 |

  d4. d8 d4 d8 e8 |
  c4. c8 c4 e8 e8 |
  d4. e8 f8([ c8)] d8([ e8)] |
  f4( d4 a4 d4 |
  % page 1

  a4 d4 a4 d4 |
  a2)~ a8 d8\rest d4\rest |
  \override Voice.MultiMeasureRest #'staff-position = #0
  R1 |
  d4-> e4~ e8 d8\rest d4\rest |

  c4 d4~ d8 d8\rest d4\rest |
  d4 c4~ c8 b8 c8 d8 |
  e4 d4 c4 d4 |

  c8 c8 d8 e8 f8([ c8)] d8([ e8)] |
  f4( d4 a4 d4 |
  a4 d4 a4 d4 |
  a2)~ a4 d4\rest |

  a'4 e4~ e8 d8\rest d4\rest |
  g4 d4~ d8 d8\rest d4\rest |
  R1 |
  R1 |

  d2\rest c8 c8 d8 e8 |
  f4 e4 d8 d8 e8 f8 |
  g4 f4 e4( d4) |

  c4 g'4~ g8 g8 g8 g8 |
  c,4 e4 g4~ g8 d8\rest |
  d4 e4~ e8 d8\rest d4\rest |
  c4 d4~ d8 d8\rest d4\rest |
  % page 2

  d4 e4~ e8 d8\rest d4\rest |
  a'4 e4~ e8 e8 a8 a8 |
  e4 a4 e4( a4 |
  e4 c4 e8) \breathe e8 a8 a8 |

  e4 a4 e4( a4 |
  e4 c4 e8) e8 e8 e8 |
  f4. f8 f4 g8 g8 |
  e4. e8 e8 e8 e8 e8 |

  f4. f8 f4 g8 g8 |
  e4. e8 e4 \myCaesura e8 f8 |
  d4. d8 d4 d8 e8 |
  c4. c8 c4 b8 c8 |

  e4. d8 c8([ d8)] b4 |
  a4( d4 a4 d4 |
  a4( d4 a4 d4 |
  a2)~ a4 d4\rest |
}

bassMusic = \relative {
  \voiceTwo
  \partial 4 a,8 a8 |
  c4. b8 a4 b8 c8 |
  d4. c8 b4 c8 d8 |
  e4. d8 c8([ d8)] b4 |

  a2~ a4 d4\rest |
  d2\rest d4\rest a8 a8 |
  c4. b8 a4 d4\rest |
  d2\rest d4\rest a8 a8 |

  c4. b8 a4 d4\rest |
  d2\rest d4\rest e8 e8 |
  e4. e8 e4 \myCaesura a,8 a8 |
  c4. b8 a4 b8 c8 |

  d4. c8 b4 c8 d8 |
  e4. d8 c8([ d8)] b4 |
  a4( d4 a4 d4 |
  a4 d4 a4) e'8 e8 |

  f4. f8 f4 g8 g8 |
  e4. e8 e4 \myCaesura e8 e8 |
  f4. f8 f4 g8 g8 |
  e4. e8 e4 \myCaesura e8 f8 |

  d4. d8 d4 d8 e8 |
  c4. c8 c4 e8 e8 |
  d4. e8 f8([ c8)] d8([ e8)] |
  f4( d4 a4 d4 |
  % page 1

  a4 d4 a4 d4 |
  a2)~ a8 d8\rest d4\rest |
  \override Voice.MultiMeasureRest #'staff-position = #0
  R1 |
  d4-> a4~ a8 d8\rest d4\rest |

  c4 g4~ g8 d'8\rest d4\rest |
  d4 c4~ c8 b8 c8 d8 |
  e4 d4 c4 d4 |

  c8 c8 d8 e8 f8([ c8)] d8([ e8)] |
  f4( d4 a4 d4 |
  a4 d4 a4 d4 |
  a2)~ a4 d4\rest |

  a4 e'4~ e8 d8\rest d4\rest |
  g,4 d'4~ d8 d8\rest d4\rest |
  R1 |
  R1 |

  d2\rest c8 c8 d8 e8 |
  f4 e4 d8 d8 e8 f8 |
  g4 f4 e4( d4) |

  c4 g'4~ g8 g8 g8 g8 |
  c,4 e4 g4~ g8 d8\rest |
  d4 a4~ a8 d8\rest d4\rest |
  c4 g4~ g8 d'8\rest d4\rest |
  % page 2

  d4 a4~ a8 d8\rest d4\rest |
  a8([ c8)] e4~ e8 e8 a8 a8 |
  e4 a4 e4( a4 |
  e4 c4 e8) \breathe e8 a8 a8 |

  e4 a4 e4( a4 |
  e4 c4 e8) e8 e8 e8 |
  f4. f8 f4 g8 g8 |
  e4. e8 e8 e8 e8 e8 |

  f4. f8 f4 g8 g8 |
  e4. e8 e4 \myCaesura e8 f8 |
  d4. d8 d4 d8 e8 |
  c4. c8 c4 \breathe b8 c8 |

  e4. d8 c8([ d8)] b4 |
  a4( d4 a4 d4 |
  a4( d4 a4 d4 |
  a2)~ a4 d4\rest |
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Lyrics = "sopLyrics"
    \new Staff <<
      \new Voice = "sopVoice" { \global \sopMusic }
      \new Voice { \global \altoMusic }
      \addlyrics { \altoWords }
    >>
    \context Lyrics = sopLyrics \lyricsto sopVoice \sopWords

    \new Staff <<
      \clef "bass"
      \new Voice { \global \tenorMusic }
      \addlyrics { \menWords }
      \new Voice { \global \bassMusic }
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
