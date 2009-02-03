\version "2.8.6"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0\in
}

\header {
  title = "O, ce veste minunată"
  arranger = "Dimitrie G. Kiriac"
  meter = "Andante"
  tagline = ""
}

global = {
  #(set-global-staff-size 16)
  \set Staff.midiInstrument = "clarinet"
  \key g \major
  \autoBeamOff
}

sopWords = \lyricmode {
  \set stanza = "1."
  O, ce ves -- te mi -- nu -- na -- tă
  În Bet -- le -- em ni s-a -- ra -- tă
  Că a năs -- cut prunc,
  Prunc din Du -- hul Sfânt,
  Fe -- cioa -- ră cu -- ra -- tă,
  ra -- tă.
}
altoWords = \sopWords
tenorWords = \sopWords

bassWords = \lyricmode {
  \set stanza = "1."
  O, ce ves -- te mi -- nu -- na -- tă
  În Bet -- le -- em ni s-a -- ra -- tă
  % Că a năs -- cut prunc,
  Prunc din Du -- hul Sfânt,
  Fe -- cioa -- ră cu -- ra -- tă,
  ra -- tă.
}

sopMusic = \relative {
  \partial 4 d8 d8
  g4 g4 a4 c4
  b2 a4^\fermata d,8 d8
  g4 g4 a4 c4
  b2 a2

  \repeat volta 2 {
    d4. b8 c8 b8 a4
    b4. c8 b8 a8 g4
    \time 2/4
    fis8 g8 a8 b8
    \time 4/4
  } \alternative {
    { a4.( g8) b2 }
    { a4.( g8) g2 }
  }
  \bar "|."
}

altoMusic = \relative {
  \partial 4 d8 d8
  d4 d4 e4 g4
  g2 fis4^\fermata d8 d8
  d4 d4 e4 g4
  g2 fis2

  \repeat volta 2 {
    b4. g8 a8 g8 fis4
    g4. g8 g8 fis8 g4
    \time 2/4
    d8 d8 d8 d8
    \time 4/4
  } \alternative {
    { c4.( b8) d2 }
    { c4.( b8) b2 }
  }
}

tenorMusic = \relative {
  \partial 4 d,8 d8
  b'4 b4 c4 e4
  d2 d4^\fermata d,8 d8
  b'4 b4 c4 e4
  d2 d2

  \repeat volta 2 {
    r4 d8 d8 d8 d8 d4
    r4 d8 e8 d8 c8 b4
    \time 2/4
    c8 b8 a8 g8
    \time 4/4
  } \alternative {
    { fis4.( g8) g2 }
    { fis4.( g8) g2 }
  }
}

bassMusic = \relative {
  \partial 4
  <<
    {
      \voiceOne
      d,8 d8
      g4 g4 g4 g4
      g2 d4^\fermata d8 d8
      g4 g4 g4 g4
      g2 d2
    }
    \new Voice = "split" {
      \voiceTwo
      \autoBeamOff
      d8 d8
      g,4 g4 g4 g4
      g2 d'4_\fermata d8 d8
      g,4 g4 g4 g4
      g2 d'2
    }
  >>
  \oneVoice

  \repeat volta 2 {
    R1
    r4 g8 c,8 d8 d8 g4
    \time 2/4
    d8 d8 d8 d8
    \time 4/4
  } \alternative {
    { d4.( g,8) g2 }
    { d'4.( g,8) g2 }
  }
}

myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #7.0
} <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \sopMusic }
    \addlyrics { \sopWords }
    
    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \altoWords }
    
    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorWords }
    >>
    
    \new Staff <<
      \clef bass
      \new Voice { \global \bassMusic }
      \addlyrics { \bassWords }
    >>
  >>
>>

midiOutput = \midi {
  \tempo 4 = 80
}

\book {
  \score {
    \myScore
    \layout { }
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
  \markup {
    \large {
      \hspace #25.0
      "2."
      \column {
        "Că la Betleem Maria"
        "Săvârşind călătoria"
        "În sărac lăcaş lâng-acel oraş"
        "A născut pe Mesia."
      }
      \hspace #5.0
      "3."
      \column {
        "Pe Fiul cel din vecie"
        "Ce L-a trimis Tatăl mie"
        "Să se nască şi să crească"
        "Să ne mântuiască."
      }
    }
  }
}
