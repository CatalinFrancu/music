\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0.7\in
  bottom-margin = 0.7\in
}

\header {
  title = "Și era la ora a șasea"
  subtitle = "Denia celor douăsprezece Evanghelii"
  composer = "Gh. Mandicevschi"
  meter = "Adagio"
  tagline = ""
}

#(set-global-staff-size 17)

global = {
  \set Staff.midiInstrument = "clarinet"
  \key a \minor
  \time 4/4
  \autoBeamOff
}

crescMarkup = \markup{ \large \italic "cresc" }
marcatoMarkup = \markup{ \hspace #-5.0 \large \bold "marcato" }

fermataAndPpp = \markup {
  \hspace #-6.2
  \musicglyph "p"
  \hspace #-1.0
  \musicglyph "p"
  \hspace #-1.0
  \musicglyph "p"
  \hspace #0.5
  \musicglyph "scripts.ufermata"
}

womenWords = \lyricmode {
  Și e -- ra la o -- ra a șa -- sea
  și s-a fă -- cut __ în -- tu ne -- ric pes -- te tot pă -- mân -- tul
  pâ -- nă la o -- ra a no -- ua.

  Și s-a în -- tu -- ne -- cat soa -- re -- le
  și s-a rupt ca -- ta -- pe -- teas -- ma tem -- plu -- lui prin mij -- loc.

  Și stri -- gând Ii -- sus cu vo -- ce ta -- re a zis:
  "\"Pă" -- rin -- te, în mâi -- ni -- le Ta -- le
  în -- cre -- din -- țez Du -- hul "meu\"."

  Și a -- ces -- tea zi -- când
  și-a dat __ Du -- hul
  și-a dat Du -- hul.
}

menWords = \lyricmode {
  Și e -- ra la o -- ra a șa -- sea
  și s-a fă -- cut __ în -- tu ne -- ric pes -- te tot pă -- mân -- tul
  pâ -- nă la o -- ra a no -- ua.

  Și s-a în -- tu -- ne -- cat soa -- re -- le
  și s-a rupt ca -- ta -- pe -- teas -- ma tem -- plu -- lui prin mij -- loc.

  Și stri -- gând Ii -- sus cu vo -- ce ta -- re a zis:
  "\"Pă" -- rin -- te, în mâi -- ni -- le Ta -- le
  în -- cre -- din -- țez Du -- hul "meu\"."

  Și a -- ces -- tea zi -- când
  și-a dat Du -- hul
  și-a dat Du -- hul.
}

sopMusic = \relative c' {
  \voiceOne
  \override Voice.MultiMeasureRest.staff-position = #0
  R1 |
  b'2\rest b4\rest e8.^\p e16 |
  e4. e8 c4 d8 e8 |
  f2 e8 b16\rest e16^\< e8 e8 |
  \break

  a4.( g8) f4 d4\! |
  e2^\> d4 d8. d16\! |
  e2. d4 |
  d2 c8 \breathe c8 b8 a8 |
  b2 c4 d4 |
  \break

  c2( b2) |
  a2. b4\rest^\marcatoMarkup |
  a2.^\pp^\< a4\! |
  a4^\> a8 a8 a2\! |
  a4. a8 a4 b4\rest
  a2.^\< a4\! |
  \break

  a8^\> \breathe a8 a8 a8 a4.\! a8 |
  a4. a8 a4 cis4 |
  b1 |
  b2. b4\rest |
  e,4.^\< e8 gis4 b4\! |
  \break

  e2. e4 |
  e4.^\> e8 e4 e8. e16 |
  e2.\! \breathe e,4^\pp |
  c'2 b4 b8\rest b8 |
  a4 b8 c8 e4. (d8) |
  \break

  c2 b8\rest c8^\p b8 a8 |
  b2 b4.. a16 |
  a2 \breathe a4 a4 |
  f'2^\crescMarkup f4. f8 |
  e2. c4^\p |
  \break

  b2 b2 |
  a2 b4\rest a4^\pp |
  a2 b2 |
  cis1^\fermataAndPpp |
  \bar "|."
}

altoMusic = \relative c' {
  \voiceTwo
  \override Voice.MultiMeasureRest.staff-position = #0
  R1 |
  b'2\rest b4\rest c8. c16 |
  c4. c8 c4 b8 bes8 |
  a4( b!4) c8 b16\rest c16 c8 c8 |

  c4.( cis8) d4 d4 |
  c!2 b4 b8. b16 |
  b2 gis2 |
  a2 a8 a8 gis8 a8 |
  a2 a4 a4 |

  a2.( gis4) |
  a2. b4\rest |
  a2. a4 |
  a4 g8 g8 f2 |
  e4. e8 e4 b'4\rest
  a2. a4 |

  a8 a8 g8 g8 f4. f8 |
  e4. e8 e4 a4 |
  gis2( a4 gis4) |
  fis2. b4\rest |
  e,4. e8 gis4 b4 |

  e2. e4 |
  e4. e8 d4 c8. c16 |
  b2. e,4 |
  a2 gis4 b8\rest gis8 |
  a4 gis8 a8 b2 |

  a2 b8\rest a8 gis8 a8 |
  a2 gis4.. a16 |
  a2 a4 a4 |
  d2 d4. d8 |
  c2. a4 |

  a4( gis8[ fis8)] gis2 |
  a2 b4\rest a4 |
  a2 gis2 |
  a1 |
}

tenorMusic = \relative c' {
  \voiceOne
  e,2^\mp\espressivo e2\espressivo |
  e2\espressivo e2\espressivo |
  e2 e4. e8 |
  d2 e8 d16\rest a'16^\< a8 a8 |

  a2 a4 a4\! |
  g2^\> g4 g8. g16\! |
  gis2 e2 |
  e2 e8 \breathe e8 e8 e8 |
  f2 f4 f4 |

  e1 |
  a2. d,4\rest |
  a'2.^\pp^\< g4\! |
  f4^\> e8 e8 d2\! |
  cis4. cis8 cis4 d4\rest
  a'2.^\< g4\! |

  f8^\> \breathe f8 e8 e8 d4.\! d8 |
  cis4. cis8 cis4 e4 |
  e2( fis4 e4) |
  dis2. d4\rest |
  e4. e8 gis4 b4 |

  e2. d4 |
  c4. c8 b4 a8. a16 |
  gis2. \breathe e4^\pp |
  e2 e4 d8\rest e8 |
  e4 e8 e8 e2 |

  e2 d8\rest e8^\p e8 e8 |
  f2 e4.. a16 |
  a2 \breathe a4 a4 |
  a2 a4. a8 |
  a2. e4^\p |

  e2 e2 |
  e2 d4\rest g4^\pp |
  fis2 f2 |
  e1^\fermataAndPpp |
}

bassMusic = \relative c' {
  \voiceTwo
  a,2 a2 |
  a2 a2 |
  a2 a4. a8 |
  d2 a8 d16\rest a'16 a8 a8 |

  f4.( e8) d4 f4 |
  g2 g4 f8. f16 |
  e2 e2 |
  a,2 a8 a8 b8 c8 |
  d2 c4 b4 |

  e1 |
  a,2. d4\rest |
  a'2. g4 |
  f4 e8 e8 d2 |
  a4. a8 a4 d4\rest
  a'2. g4 |

  f8 f8 e8 e8 d4. d8 |
  a4. a8 a4 a4 |
  b1 |
  b2. d4\rest |
  e4. e8 gis4 b4 |

  e,2. e4 |
  e4. e8 e4 e8. e16 |
  e2. e4 |
  a,2 b4 d8\rest b8 |
  c4 b8 a8 gis2 |

  a2 d8\rest a8 b8 c8 |
  d2 e4.. a,16 |
  a2 a4 a4 |
  d2 d4. d8 |
  e2. e4 |

  e2 e2 |
  a,2 d4\rest a4 |
  d2 d2 |
  a1 |
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \global \sopMusic }
      \new Voice { \global \altoMusic }
      \addlyrics { \womenWords }
    >>

    \new Staff <<
      \clef "bass"
      \new Voice { \global \tenorMusic }
      \new Voice { \global \bassMusic }
      \addlyrics { \menWords }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \tempo 4 = 60
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
