\version "2.11.57"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  %print-page-number = false
  top-margin = 0.25\in
  bottom-margin = 0.5\in
}

\header {
  title = "Today the Virgin"
  composer = ""
  tagline = ""
}

global = {
  #(set-global-staff-size 18)
  \set Staff.midiInstrument = "clarinet"
  \key f \major
  \time 3/4
  %\autoBeamOff
}

womenWords = \lyricmode {
  To -- day __ the Vir -- gin gives birth
  to __ the trans -- cen -- dent __ One,
  and the earth __ of -- fers a cave
  to __ the Un -- ap -- proach -- a -- ble One!
  An -- gels with shep -- herds glo -- ri -- fy __ Him!
  The wise men jour -- ney with __ the __ star!
  Since __ for __ our __ sake
  The E -- ter -- nal __ God __ was born
  as a lit -- tle child! __
}

sopMusic = \relative {
  \voiceOne

  % Today the Virgin gives birth
  \partial 2
  f4 (g4) |
  g4( a4) f4 |
  bes4 a4 g4 |
  a2.

  % to the transcendent One
  f4( g4) a4 |
  \time 2/4
  c4( bes4) |
  \time 4/4
  a4( g4) a4( bes4) |
  g1 |

  % and the earth offers a cave
  \time 3/4
  bes4\rest f4 g4 |
  g4( a4 f4) |
  bes4 a4 g4 |
  a2. |

  % to the Unapproachable One!
  f4( g4) a4 |
  \time 2/4
  c4 bes4 |
  \time 4/4
  a4( g4) a4 bes4 |
  g1 |

  % Angels with shepherds glorify Him!
  \time 3/4
  c2( bes4) |
  \time 4/4
  c2. bes4 |
  a4( bes4 c4 d4) |
  c2 bes4 bes4 |
  a4( g4 a4 bes4) |
  g1 |

  % The wise men journey with the
  \time 3/4
  a4 g2 |
  f2. |
  f4( g4 a4 |
  bes4 c4 bes4) |
  \time 2/4
  bes2 |
  \time 4/4
  a4( g4) a4( bes4) |

  % star! Since for our sake The Eternal God was born
  g2^\fermata a4( bes4 |
  c4 bes4) a4( bes4) |
  bes4( c4) c2 |
  f,4 f4 a4  bes8([ c8)] |
  \time 3/4
  bes4( c4) c4 |
  c2 bes4\rest

  % as a little child
  \time 2/4
  a4 a4 |
  \time 4/4
  bes2( a4) g4 |
  g1( |
  g4 f4 bes2 |
  g4^\markup{\large \italic "rit."} e4 a2)^\fermata |
  \bar "|."
}

altoMusic = \relative {
  \voiceTwo

  % Today the Virgin gives birth
  \partial 2
  f2 |
  f2 f4 |
  f4 f4 f4 |
  f2.

  % to the transcendent One
  f2 f4 |
  \time 2/4
  f2 |
  \time 4/4
  f4( e4) f2 |
  e1 |

  % and the earth offers a cave
  \time 3/4
  bes'4\rest f4 f4 |
  f2. |
  f4 f4 f4 |
  f2. |

  % to the Unapproachable One!
  f2 f4 |
  \time 2/4
  f4 f4 |
  \time 4/4
  f4( e4) f4 f4 |
  e1 |

  % Angels with shepherds glorify Him!
  \time 3/4
  f2. |
  \time 4/4
  f2. g4 |
  e4( g2.) |
  g2 g4 g4 |
  e2.( g4) |
  e1 |

  % The wise men journey with the
  \time 3/4
  e4 d2 |
  d2. |
  f2.( |
  f2.) |
  \time 2/4
  g2 |
  \time 4/4
  e2 e4( g4) |

  % star! Since for our sake The Eternal God was born
  e2 f2( |
  f4 d8[ e8)] f2 |
  f2 f2 |
  f4 f4 f4  f4 |
  \time 3/4
  f2 f4 |
  f2 bes4\rest

  % as a little child
  \time 2/4
  f4 f4 |
  \time 4/4
  f2. f4 |
  e1( |
  e4 d4 f2 |
  e4 c4 f2) |
  \bar "|."
}

tenorMusic = \relative {
  \voiceOne

  % Today the Virgin gives birth
  \partial 2
  a4 (bes4) |
  bes4( c4) a4 |
  d4 c4 bes4 |
  c2.

  % to the transcendent One
  a4( bes4) c4 |
  \time 2/4
  c4( d4)
  \time 4/4 |
  c2 c4( d4) |
  c1 |

  % and the earth offers a cave
  \time 3/4
  d,4\rest a'4 bes4 |
  bes4( c4 a4) |
  d4 c4 bes4 |
  c2. |

  % to the Unapproachable One!
  a4( bes4) c4 |
  \time 2/4
  c4 d4 |
  \time 4/4
  c2 c4 d4 |
  c1 |

  % Angels with shepherds glorify Him!
  \time 3/4
  c2( d4) |
  \time 4/4
  a2. d4 |
  c4( d4 e4 f4) |
  e2 d4 d4 |
  c4( d4 c4 d4) |
  c1 |

  % The wise men journey with the
  \time 3/4
  c4 bes2 |
  a2. |
  a4( bes4 c4 |
  d4 c4 d4) |
  \time 2/4
  d2 |
  \time 4/4
  c4( d4) c4( d4) |

  % star! Since for our sake The Eternal God was born
  c2 c4( bes4 |
  a4 g4) c4( d4) |
  bes4( a4) a2 |
  f4 a4 c4  g8([ a8)] |
  \time 3/4
  g4( a4) a4 |
  a2 d,4\rest

  % as a little child
  \time 2/4
  c'4 c4 |
  \time 4/4
  d2( c4) bes4 |
  c1( |
  bes4 a4 d2 |
  c1) |
  \bar "|."
}

bassMusic = \relative {
  \voiceTwo

  % Today the Virgin gives birth
  \partial 2
  f,2 |
  d4( c4) c4 |
  bes4 c4 d4 |
  f2.

  % to the transcendent One
  d2 c4 |
  \time 2/4
  a4( bes4) |
  \time 4/4
  c2 f4( bes,4) |
  c1 |

  % and the earth offers a cave
  \time 3/4
  d4\rest f4 f4 |
  d4( c2) |
  bes4 c4 d4 |
  f2. |

  % to the Unapproachable One!
  d2 c4 |
  \time 2/4
  a4 bes4 |
  \time 4/4
  c2 f4 bes,4 |
  c1 |

  % Angels with shepherds glorify Him!
  \time 3/4
  a2( bes4) |
  \time 4/4
  <f'f,>2. g4 |
  a4( g4 c,4 bes4) |
  c2 g'4 g4 |
  a4( bes4 a4 g4) |
  c,1 |

  % The wise men journey with the
  \time 3/4
  a4 bes4( c4) |
  d2. |
  d2( c4 |
  bes4 a4 bes4) |
  \time 2/4
  g'2 |
  \time 4/4
  a4( bes4) a4( g4) |

  % star! Since for our sake The Eternal God was born
  c,2 <f f,>4( <g g,>4 |
  <a a,>4 <bes bes,>4) <c c,>4( <bes bes,>4) |
  <g g,>4( <a a,>4) <a a,>2 |
  f4 f4 f4  f4 |
  \time 3/4
  f2 f4 |
  f2 d4\rest

  % as a little child
  \time 2/4
  f4 f4 |
  \time 4/4
  bes,2( c4) d4 |
  c1( |
  c4 d4 bes2 |
  c2 <f f,>2) |
  \bar "|."
}

myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #5.0
  \override TimeSignature #'style = #'numbered % Display 4/4, not C (Common)
} <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \global \sopMusic }
      \addlyrics { \womenWords }
      \new Voice { \global \altoMusic }
    >>

    \new Staff <<
      \clef "bass"
      \new Voice { \global \tenorMusic }
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
    \Score tempoWholesPerMinute = #(ly:make-moment 100 4)
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
