\version "2.12.3"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}

% diacritice: ă â î ş ţ

\header {
  title = "De sus din cer"
  composer = "după G. Musicescu"
  tagline = ""
  meter = "Andante"
}

global = {
  \key c \major
  \time 4/4
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
}

stanzaOneWomen = \lyricmode {
  %\set stanza = ""
  De sus din cer, Tu, Stă -- pân a toa -- te, aibi în -- du -- ra -- re de-ai 
  Tăi fii, dă rod bo -- gat şi câm -- pii mă -- noa -- se fi -- i -- lor Tăi, 
  dă mi -- la Ta.
}

stanzaOneMen = \lyricmode {
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
}

stanzaTwoWomen = \lyricmode {
  %\set stanza = ""
  De sus din cer, De sus din cer, Tu, Stă -- pân a toa -- te, aibi în -- du -- 
  ra -- re de-ai Tăi fii, dă rod bo -- gat dă rod bo -- gat şi câm -- pii mă -- 
  noa -- se fi -- i -- lor Tăi, dă mi -- la Ta.
}

stanzaTwoMen = \lyricmode {
  %\set stanza = ""
  De sus din cer, Tu, Stă -- pân a toa -- te, aibi în -- du -- ra -- re
  de-ai Tăi fii, dă rod bo -- gat şi câm -- pii mă -- noa -- se 
  fi -- i -- lor Tăi, dă mi -- la Ta.
}

womenMusicOne = \relative c'' {
  g2^\mf a4. b8 | c1 | c4. c8 f4 f4 | e2 e4 r4 | c2 d4. d8 | e2 e2 | c2 f2 | d1
  | g,2 a4. b8 | c1 | c4. c8 f4 f4 | e2 e4 r4 | d2 d4 d4 | e1 | c2 d4 d4 | c2 
  r2 \bar"||" \break
}

womenMusicTwo = \relative c'' {
  g2^\mf a4. b8 | c1 | g2 a4. b8 | c1 | c4. c8 f4 f4 | e2 e4 r4 | c2 d4. d8 | 
  e2 e2 | c2 f2 | d1 | g,2 a4. b8 | c1 | g2 a4. b8 | c1 | c4. c8 f4 f4 | 
  e2 e4 r4 | d2 d4 d4 | e1 | c2 d4 d4 | c2 r2 \bar"|."
}

menMusicOne = \relative c' {
  g2 a4. g8 | g1 | g4. g8 c4 c4 | c2 c4 r4 | c2 b4. b8 | c2 c2 | a2 a2 | b1
  | g2 a4. g8 | g1 | g4. g8 c4 c4 | c2 c4 r4 | a2 a4 a4 | gis1 | a2 b4 b4 | c2
  r2 \bar"||"
}  	

menMusicTwo = \relative c' {
  r1 | g2 a4. b8 | c1 | e4. e8 e4 e4 | c1 | c4 r4 r2 | c2 b4. b8 | c2 c2 | 
  a2 a2 | b1 | r1 | g2 a4. b8 | c1 | e4. e8 e4 e4 | c1 | c4 r4 r2 | a2 a4 a4 |
  gis1 | a2 b4 b4 | c2
  r2 \bar"|."
}  	

myScoreIntro = \new Score <<
  \new ChoirStaff <<
    \new Staff <<
    \set Staff.midiMinimumVolume = #1.0
    \new Voice { \global \womenMusicOne }
    \addlyrics { \stanzaOneWomen }
    >>
  >>
>>

myScorePoly = \new Score <<
   \set Score.currentBarNumber = #17
   \bar ""
   \new ChoirStaff <<
    \new Staff <<
    \set Staff.midiMinimumVolume = #1.0
    \new Voice { \global \womenMusicOne \womenMusicTwo }
    \addlyrics { \stanzaOneWomen \stanzaTwoWomen }
    
    \new Staff <<
    \clef "G_8"
    \new Voice { \global \menMusicOne \menMusicTwo }
    \addlyrics { \stanzaOneMen \stanzaTwoMen }
    >>
    >>
  >>
>>

\score {
  \myScoreIntro
  \layout { }
}

\score {
  \myScorePoly
  \layout { indent = 0\in }
}

midiOutput = \midi {
  \context {
    \Score tempoWholesPerMinute = #(ly:make-moment 160 4)
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\score {
  \unfoldRepeats
  \myScorePoly
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \womenMusicOne \womenMusicTwo }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \menMusicOne \menMusicTwo}
  \midi { \midiOutput }
}
