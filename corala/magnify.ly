\version "2.10.33"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  %print-page-number = false
  top-margin = 0.25\in
  bottom-margin = 0.5\in
}

\header {
  title = "Magnify My Soul"
  composer = "Romanian Chant"
  tagline = ""
}

global = {
  #(set-global-staff-size 18)
  \set Staff.midiInstrument = "clarinet"
  \key e \minor
  \time 2/4
  \autoBeamOff
}

allWords = \lyricmode {
  Mag -- ni -- fy, mag -- ni -- fy my soul __
  the Most Pure Vir -- gin The -- o -- to -- kos;
  more __ ho -- no -- ra -- ble and more glo -- ri -- ous
  than the hea -- ven -- ly  hosts. __

  I be -- hold a strange, __ most glo -- ri -- ous mys -- te -- ry:
  hea -- ven, the cave;
  the __ Che -- ru -- bic throne, __ the __ Vir -- gin;
  the __ man -- ger, the place where Christ __ lay.
  The __ un -- con -- tain -- a -- ble love __
  whom __ we mag -- ni -- fy in __ song.
}

altoWords = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  whom we mag -- ni -- fy in song.
}

bassWords = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  song. __
}

sopMusic = \relative {
  \voiceOne

  % Magnify, magnify my soul
  e2 |
  a4( b4) |
  b2 |
  b4( a8) a8 |
  g4 a4 |
  b2( |
  b4)

  % the Most Pure Virgin Theotokos;
  e,4 |
  a2 |
  a2 |
  g4 fis4 |
  g4 a8([ b8)] |
  a2 |
  a4 b4\rest |

  % more honorable and more glorious
  a4( b4) |
  c4( b8[ c8] |
  d8[ e8] d4) |
  c4 b4 |
  a2 |
  g4 a4 |
  b8([ c8] b8) b8 |
  a2 |

  % than the heavenly hosts
  b4 a4 |
  g4 fis8 g8 |
  e2( |
  e4) bes'4\rest |

  % I behold a strange, most glorious mystery:
  g4 fis4 |
  e4 fis4 |
  g4( fis4 |
  e4.) e8 |
  fis4 g8([ a8)] |
  a4. b8\rest |
  \time 3/4
  g8([ a8]  b4) b4 |
  \time 2/4
  a2 |

  % heaven, the cave; the Cherubic throne, the Virgin;
  a4( g8[ a8)] |
  g4 fis4 |
  e2 |
  bes'4\rest fis8([ g8)] |
  a4( b4) |
  a4. d,8 |
  e4( fis4 |
  g4) fis8([ g8)] |
  a2 |
  e2 |

  % the manger, the place where Christ lay.
  g4( fis4) |
  e4( d4 |
  cis4 d4 |
  e8[ fis8] g4) |
  e4. e8 |
  a4. a8 |
  g4( a4) |
  b2 |

  % The uncontainable love
  b4( a4) |
  b4( c4 |
  d4) b4 |
  e4( d4) |
  c4 b4 |
  a2( |
  a4) b4\rest |

  % whom we magnify in song
  b8([ c8] b4 |
  a4) a4 |
  g4( a4 |
  b4) a4 |
  g4 fis8([ g8)] |
  e2( |

  % whom we magnify in song.
  e2 |
  e2 |
  e2 |
  e2)
  \bar "|."
}

altoMusic = \relative {
  \voiceTwo

  % Magnify, magnify my soul
  e2 |
  a4( b4) |
  b4.( a8) |
  g8( e4) e8 |
  e4 fis4 |
  g2( |
  g4)

  % the Most Pure Virgin Theotokos;
  e4 |
  e2 |
  e4( fis4) |
  e4 e4 |
  e4 e4 |
  e2 |
  e4 b'4\rest |

  % more honorable and more glorious
  e,4( g4) |
  g2( |
  a2) |
  g4 g4 |
  e2 |
  e4 e4 |
  g4. g8 |
  e4( fis4) |

  % than the heavenly hosts
  fis4 e4 |
  e4 e8 e8 |
  e2( |
  e4) bes'4\rest |

  % I behold a strange, most glorious mystery:
  g4 fis4 |
  e4 d4 |
  d2( |
  b4.) e8 |
  e4 e4 |
  e4. b'8\rest |
  \time 3/4
  e,2 e4 |
  \time 2/4
  e2 |

  % heaven, the cave; the Cherubic throne, the Virgin;
  e2 |
  e4 d4 |
  e2 |
  bes'4\rest d,4 |
  d4( e4) |
  d4. d8 |
  d2( |
  d4) d4 |
  d2 |
  e2 |

  % the manger, the place where Christ lay.
  e2 |
  e4( d4 |
  cis4 d4 |
  d2) |
  e4. e8 |
  e4. e8 |
  e4( fis4) |
  g2 |

  % The uncontainable love
  g2 |
  g2( |
  g4) g4 |
  g2 |
  a4 g4 |
  e2( |
  e4) b'4\rest |

  % whom we magnify in song
  g2( |
  e4) e4 |
  e4( fis4 |
  g4) fis4 |
  e4 d4 |
  c2 |

  % whom we magnify in song.
  c4 d4 |
  c4 c4 |
  b4 c4 |
  b2 |
}

tenorMusic = \relative {
  \voiceOne

  % Magnify, magnify my soul
  e,2 |
  a4( b4) |
  b2 |
  b4( c8) c8 |
  b4 d4 |
  d2( |
  d4)

  % the Most Pure Virgin Theotokos;
  c4 |
  c2 |
  c2 |
  b4 a4 |
  b4 c8([ d8)] |
  c2 |
  c4 d,4\rest |

  % more honorable and more glorious
  c'4( d4) |
  c2( |
  fis2) |
  e4 d4 |
  c2 |
  d4 c4 |
  d4. d8 |
  c2 |

  % than the heavenly hosts
  d4 c4 |
  b4 a8 b8 |
  g2( |
  g4) d4\rest |

  % I behold a strange, most glorious mystery:
  g4 fis4 |
  e4 a4 |
  b4( a4 |
  g4.) b8 |
  a4 b8([ c8)] |
  c4. d,8\rest |
  \time 3/4
  b'2 d4 |
  \time 2/4
  c2 |

  % heaven, the cave; the Cherubic throne, the Virgin;
  c2 |
  b4 a4 |
  g2 |
  d4\rest a'4 |
  a4( g4) |
  a4. d,8 |
  e4( fis4 |
  g4) a4 |
  a2 |
  e2 |

  % the manger, the place where Christ lay.
  g4( a4) |
  b2( |
  b2 |
  b2) |
  c?4. b8 |
  c4. c8 |
  b4( d4) |
  d2 |

  % The uncontainable love
  d4( c4) |
  d2( |
  d4) d4 |
  e2 |
  e4 e8([ d8)] |
  c2( |
  c4) d,4\rest |

  % whom we magnify in song
  b'2( |
  c4) c4 |
  b4( d4 |
  d4) c4 |
  b4 a8([ b8)] |
  g2 |

  % whom we magnify in song.
  a4 b4 |
  a4 a4 |
  g4 fis4 |
  gis2 |
}

bassMusic = \relative {
  \voiceTwo

  % Magnify, magnify my soul
  e,2 |
  a4( b4) |
  b4.( a8) |
  g4( a8) a8 |
  e4 d4 |
  <g g,>2( |
  <g g,>4)

  % the Most Pure Virgin Theotokos;
  b4 |
  a2 |
  a4( d,4) |
  e4 e4 |
  e4 a4 |
  a2 |
  a4 d,4\rest |

  % more honorable and more glorious
  a'4( g4) |
  e2( |
  d2) |
  e4 g4 |
  a2 |
  b4 a4 |
  g4. g8 |
  a4( d,4) |

  % than the heavenly hosts
  b4 c4 |
  e4 e8 e8 |
  e2( |
  e4) d4\rest |

  % I behold a strange, most glorious mystery:
  g4 fis4 |
  e4 d4 |
  g4( d4 |
  e4.) e8 |
  e4 e8([ a8)] |
  a4. d,8\rest |
  \time 3/4
  e8([ fis8]  g4) g4 |
  \time 2/4
  a2 |

  % heaven, the cave; the Cherubic throne, the Virgin;
  a2 |
  b4 b,4 |
  e2 |
  d4\rest d4 |
  d4( c4) |
  d4. d8 |
  d2( |
  d4) d4 |
  d4( b4) |
  e2 |

  % the manger, the place where Christ lay.
  e2 |
  e4( fis4 |
  g4 fis4 |
  e2) |
  a4. e8 |
  a4. a8 |
  e4( d4) |
  g2 |

  % The uncontainable love
  g2 |
  g4( a4 |
  b4) g4 |
  c4( b4) |
  a4 e4 |
  a2( |
  a4) d,4\rest |

  % whom we magnify in song
  e2( |
  e4) e4 |
  e4( d4 |
  g4) d4 |
  e4 b4 |
  c2( |

  % whom we magnify in song.
  a2 |
  a2 |
  a2 |
  <e' e,>2) |
}

myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #5.0
} <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \global \sopMusic }
      \addlyrics { \allWords }
      \new Voice { \global \altoMusic }
      \addlyrics { \altoWords }
    >>

    \new Staff <<
      \clef "bass"
      \new Voice { \global \tenorMusic }
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
    \Score tempoWholesPerMinute = #(ly:make-moment 72 4)
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
