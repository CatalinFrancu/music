\version "2.10.13"

\paper {
  #(set-paper-size "letter")
  between-system-padding = 8\mm
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  ragged-last = ##t
  top-margin = 0\in
}

\header {
  title = "Într-o clipă (Luminânda din Joia Mare)"
  subtitle = "Denia celor douăsprezece Evanghelii"
  subsubtitle = "după Evanghelia a opta"
  meter = "Largo"
  tagline = ""
}

global = {
  #(set-global-staff-size 17)
  \set Staff.midiInstrument = "clarinet"
  \key d \minor
  \time 4/4
  \autoBeamOff
}

fermataAndPp = \markup {
  \hspace #0.5
  \musicglyph #"scripts.ufermata"
  \hspace #0.5
  \musicglyph #"p"
  \hspace #-1.0
  \musicglyph #"p"
}

sopWords = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4
  Pe mi -- ne lu -- mi -- nea -- ză, Pe
}

altoWords = \lyricmode {
  În -- tr-o cli -- pă-n -- vred -- ni -- ci -- t-ai Tu Doam -- ne
  Pe tâl -- ha -- ru-n -- ţe -- lept în Rai.
  Pe mi -- ne lu -- mi -- nea -- ză
  Pe mi -- ne lu -- mi -- nea -- ză- mă cu lem -- nul Cru -- cii
  şi mă mân -- tu -- ie.
}

tenorWords = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4
  Pe mi -- ne lu -- mi -- nea -- ză- mă, __ Pe
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4
  şi mă mân -- tu -- ie.
}

bassWords = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4
  Pe mi -- ne lu -- mi -- nea -- ză- mă
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  şi mă mân -- tu -- ie.
}

sopMusic = \relative {
  \partial 2
  d4 e4 |

  f4. d8 e4 f4 |
  a4 g8 g8 f4 e4 |
  f4. d8 e4 f8 g8 |
  \break

  f2 e2 |
  d2. r4 |
  R1 |
  r4 r4 r4 g4 |
  c4. d8 c4 bes4 |
  \break

  a2 a4 a4 |
  d4. es8 d4 c4 |
  bes4. bes8 a4 g4 |
  a2 a4 g4 |
  \break

  f2.^\p e4 |
  e4-> d2-> cis4-> |
  d1^\fermataAndPp
  \bar "|."
}

altoMusic = \relative {
  \partial 2
  d4 d4 |
  d4. d8 d4 d4 |
  d4 d8 d8 d4 d4 |
  d4. d8 d4 d8 d8 |

  d2 cis2 |
  d2. r4 |
  r2 r4 d4 |
  g4. a8 g4 f4 |
  e2 e2( |

  f2.) g4 |
  f4. f8 f4 f4 |
  g4. g8 f4 e4 |
  e2 cis4 cis4 |

  d2 bes2 |
  a4 a2 a4 |
  a1
}

tenorMusic = \relative {
  \partial 2
  f,4 g4 |
  a4. f8 g4 a4 |
  c4 bes8 bes8 a4 <g bes>4 |
  a4. f8 g4 a8 bes8 |

  a2 g2 |
  f2. a4 |
  d4. es8 d4 c4 |
  bes2. b4 |
  c1~ |

  c2. c4 |
  a4. a8 d4 d4 |
  d4. d8 d4 d4 |
  cis2 a4 a4 |

  a2^\p g2 |
  f2 g4 g4 |
  f1^\fermataAndPp
}

bassMusic = \relative {
  \partial 2
  d,4 d4 |
  d4. d8 d4 d4 |
  d4 d8 d8 d4 d4 |
  d4. d8 d4 d8 d8 |

  a2 a2 |
  d2. r4 |
  R1 |
  R1 |
  r2. c4 |

  <f f,>4. <g g,>8 <f f,>4 <es es,>4 |
  d1( |
  <g g,>4.) <g g,>8 <a a,>4 <bes bes,>4 |
  <a a,>2 <a a,>4 <a a,>4 |

  d,2 g,4 a4 |
  a2 a2 |
  d1
}

myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #5.0
} <<
  \new ChoirStaff <<
    \new Lyrics = "sopLyrics"
    \new Staff <<
      \new Voice = "sopVoice" { \global \voiceOne \sopMusic }
      \new Voice = "altoVoice" { \global \voiceTwo \altoMusic }
      \addlyrics { \altoWords }
    >>
    \context Lyrics = sopLyrics \lyricsto sopVoice \sopWords

    \new Lyrics = "tenorLyrics"
    \new Staff <<
      \clef bass
      \new Voice = "tenorVoice" { \global \voiceOne \tenorMusic }
      \new Voice = "bassVoice" { \global \voiceTwo \bassMusic }
      \addlyrics { \bassWords }
    >>
    \context Lyrics = tenorLyrics \lyricsto tenorVoice \tenorWords

  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \context {
    \Score tempoWholesPerMinute = #(ly:make-moment 68 4)
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
