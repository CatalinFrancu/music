\version "2.10.13"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "By the Rivers of Babylon"
  arranger = "Arr. M. P. Hilko & M. F. Johnson"
  tagline = ""
}

global = {
  #(set-global-staff-size 17)
  \set Staff.midiInstrument = "clarinet"
  \key g \minor
  \time 4/4
  \autoBeamOff
}

markupOne = \markup { \large \bold "1." }
markupTwo = \markup { \large \bold "2." }
markupThree = \markup { \large \bold "3." }
markupFour = \markup { \large \bold "4." }
markupFive = \markup { \large \bold "5." }
markupSix = \markup { \large \bold "6." }

sopMusic = \relative {
  \voiceOne

  % 1
  \partial 2. <a' fis>4^\markupOne <a fis>4 <a fis>4
  <bes g>2 <bes g>4 <d bes>4
  <c a>4. <bes g>8 <a fis>2
  <d bes>4.( <c a>8) <bes g>4 <a fis>4
  <bes g>2 <c a>2
  <d bes>4. <c a>8 <d bes>4 <es c>4
  <f d>2. <es c>4
  <d bes>2( <c a>2)
  <d bes>2

  \bar "||"
  <c a>4 <c a>4
  <bes g>2( <a fis>2)
  <bes g>2.
  \bar ".|."

  % 2
  <bes g>4^\markupTwo
  <d bes>4( <bes g>4) <c a>4( <d bes>4)
  <es c>2( <d bes>4) <c a>4
  <bes g>2 <a fis>2
  <bes g>4. <c a>8 <d bes>4 <es c>4
  <f d>2. <es c>4
  <d bes>2

  \bar "||"
  <c a>4 <c a>4
  <bes g>2( <a fis>2)
  <bes g>2.
  \bar ".|."

  % 3
  bes4^\markupThree
  d2 c4 bes4
  a4. a8 g2
  es'2 d4 c4
  b4. b8 c4 c4
  d4. d8 d4 d4
  c4. c8 bes4 a4
  bes2 a2
  bes4 b4 c2
  d4 d4 es4( c4)
  bes2 a2
  <bes g>2. <c a>4
  <d bes>4.( <c a>8) <d bes>4 <es c>4
  <f d>2. <es c>4
  <d bes>2( <c a>2)
  <d bes>2

  \bar "||"
  <c a>4 <c a>4
  <bes g>2( <a fis>2)
  <bes g>2. bes4\rest
  \bar ".|."

  % 4
  <d bes>2^\markupFour <c a>4 <bes g>4
  <a fis>2 <bes g>4( <c a>4)
  <d bes>4. (<c a>8) <d bes>4 <es c>4
  <f d>2 <f d>4 <es c>4
  <d bes>2( <c a>2)
  <d bes>2

  \bar "||"
  <c a>4 <c a>4
  <bes g>2( <a fis>2)
  <bes g>2. bes4\rest
  \bar ".|."

  % 5
  <d bes>2^\markupFive bes4 <c a>4
  <d bes>2( <c a>4 <bes g>4)
  <a fis>2 <d bes>4 <c a>4
  <bes g>2 <a fis>2
  <bes g>2.( <c a>4)
  <d bes>4.( <c a>8) <d bes>4 <es c>4
  <f d>2 <f d>4 <es c>4
  <d bes>2( <c a>2)
  <d bes>2

  \bar "||"
  <c a>4 <c a>4
  <bes g>2( <a fis>2)
  <bes g>2.
  \bar ".|."

  % 6
  bes4^\markupSix
  d2 c4 bes4
  a4. a8 g2
  es'2 d4 c4
  b4. b8 c2
  d4. c8 bes4 b4
  c4( d4) es4 c4
  <bes g>2.( <c a>4)
  <d bes>4.( <c a>8) <d bes>4( <es c>4)
  <f d>2. <es c>4
  <d bes>2( <c a>2)
  <d bes>1

  \bar "||"
  <es c>2 <c a>2
  <c a>2( <bes g>2
  <<
    { \voiceOne g2 fis2) }
    \new Voice = "split" { \voiceThree a1 }
  >>
  g1
  \bar ".|."
}

altoMusic = \relative {
  \voiceTwo

  % 1
  \partial 2. d4 d4 d4
  d2 d4 d4
  d4. d8 d2
  f!4.( es8) d2
  d2 f2
  f4. f8 f4 f4
  f2. g4
  f1
  f2

  es4 es4
  d1
  d2.

  % 2
  d4
  d2 g2
  g2. es4
  d2 d2
  d4. f8 f4 f4
  f2. f4
  f2

  es4 es4
  d1
  d2.

  % 3
  g4
  bes2 a4 g4
  fis4. fis8 g2
  g2 g4 g4
  g4. g8 g4 g4
  g4. g8 fis4 g4
  g4. g8 g4 g4
  g2 fis2
  g4 g4 g2
  g4 g4 g2
  g2 fis2
  d2. f!4
  f2 f4 f4
  f2. g4
  f1
  f2

  es4 es4
  d1
  d2. bes'4\rest

  % 4
  g2 d4 d4
  d2 d4( f!4)
  f2 f4 f4
  f2 f4 g4
  f1
  f2

  es4 es4
  d1
  d2. bes'4\rest

  % 5
  g2 g4 g4
  g2( d2)
  d2 d4 es4
  d2 d2
  d2.( f!4)
  f2 f4 f4
  f2 f4 g4
  f1
  f2

  es4 es4
  d1
  d2.

  % 6
  g4
  bes2 a4 g4
  fis4. fis8 g2
  g2 g4 g4
  g4. g8 g2
  fis4. fis8 g4 g4
  g2 g4 g4
  d2.( f4)
  f2 f2
  f2. g4
  f1
  f1

  g2 es2
  d1~
  d1
  d1
}

tenorMusic = \relative {
  \voiceOne

  % 1
  \partial 2. s4 s4 s4
  s1 s1 s1 s1 s1 s1 s1 s2

  <c a>4 <c a>4
  <bes g>2 <a fis>2
  <bes g>2.

  % 2
  s4 s1 s1 s1 s1 s1 s2

  <c a>4 <c a>4
  <bes g>2 <a fis>2
  <bes g>2.

  % 3
  d4
  d2 d4 d4
  c4. c8 bes2
  c2 b4 c4
  d4. d8 c4 c4
  bes!4. bes8 a4 g4
  c4. c8 d4 es4
  d2~ d2
  d4 d4 c2
  b4 b4 c4( es4)
  d2( d2)
  <d bes>2. <c a>4
  <d bes>4. <c a>8 <d bes>4 <es c>4
  <f d>2. <es c>4
  <d bes>2( <c a>2)
  <d bes>2

  <c a>4 <c a>4
  <bes g>2 <a fis>2
  <bes g>2. d,4\rest

  % 4
  s1 s1 s1 s1 s1 s2

  <c' a>4 <c a>4
  <bes g>2 <a fis>2
  <bes g>2. d,4\rest

  % 5
  s1 s1 s1 s1 s1 s1 s1 s1 s2

  <c' a>4 <c a>4
  <bes g>2 <a fis>2
  <bes g>2.

  % 6
  d4
  d2 d4 d4
  c4. c8 bes2
  c2 b4 c4
  d4. d8 c2
  a4. d8 d4 d4
  c4( b4) c4 c4
  <d bes>2. <c a>4
  <d bes>4.( <c a>8) <d bes>4 <es c>4
  <f d>2. <es c>4
  <d bes>2( <c a>2)
  <d bes>1

  <es c>2 <c a>2
  <a fis>2( <bes g>2
  <c a>1)
  bes1
}

bassMusic = \relative {
  \voiceTwo

  % 1
  \partial 2. d,4 d4 d4
  g2 g4 g4
  fis4. g8 d4( c4)
  bes4. (c8) d2
  g2 f2
  bes4. f8 d4 c4
  bes4( c4 d4) es4
  f1
  bes,2

  c4 c4
  d1
  g2.

  % 2
  g4
  g2 g2
  g2.
  c,4
  d2 d2
  g4.( f8) d4 c4
  bes2( d4) f4
  bes,2

  c4 c4
  d1
  g2.

  % 3
  g4
  g2 fis4 g4
  d4. d8 g2
  c,2 d4 es4
  f4. f8 es4 es4
  d4. d8 c4 bes4
  es4. es8 d4 c4
  d2 d2
  g4 f!4 es2
  d4 d4 c2
  d2 d2
  g2. f4
  bes4.( f8) d4 c4
  bes4( c4 d4) es4
  f1
  bes,2

  c4 c4
  d1
  g2. d4\rest

  % 4
  g2 fis4 g4
  d2 g4( f!4)
  bes4.( f8) d4 c4
  bes4( c4) d4 es4
  f1
  bes,2

  c4 c4
  d1
  g2. d4\rest

  % 5
  g2 g4 g4
  g2( fis4 g4)
  d4( c4) bes4 c4
  d2 d2
  g2.( f4)
  bes4.( f8) d4 c4
  bes4( c4) d4 es4
  f1
  bes,2

  c4 c4
  d1
  g2.  

  % 6
  g4
  g2 fis4 g4
  d4. d8 g2
  c,2 d4 es4
  f4. f8 es2
  d4. d8 g4 f!4
  es4( d4) c4 es4
  g2. f4
  bes4.( f8) d4( c4)
  bes4( c4 d4) es4
  f1
  bes,1

  c2 c2
  d1~
  d1
  <g g,>1
}

myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #5.0
} <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \global \sopMusic }
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
