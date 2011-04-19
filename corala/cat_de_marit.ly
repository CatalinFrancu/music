\version "2.12.3"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0.5\in
}

% diacritice: ă â î ş ţ

\header {
  title = "Cât de mărit este Domnul în Sion"
  composer = "D. S. Bortnianski"
  tagline = ""
  meter = "Andante"
}

global = {
  \key c \major
  \time 3/4
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
}

stanzaOne = \lyricmode {
  %\set stanza = ""
  Cât de mă -- rit es -- te Dom -- nul în Si -- on, 
  nu poa -- te lim -- ba a tâl -- cu -- i. 
  Ma -- re es -- te Dom -- nul în Cer pe Tron
  şi pâ -- nă -- ntr-un fir de iar -- bă pe pă -- mânt.
  
  Ma -- re eşti, pre -- tu -- tin -- de -- nea, Doa -- mne,
  pre -- tu -- tin -- deni eşti mă -- rit,
  în zi, în noa -- pte, cu stră -- lu -- ci -- re.
  Ma -- re re.
   
}

sopranMusic = \relative c'' {
  \partial 4
  	g4^\mf 
  e2 f4
  g2 c8 c8
  d4 c4 b8 b8
  c2\fermata
  g4
  a4( c4) a4
  g2 e4
  g4 f4 e4
  d2 g8 g8  
  e2 f4
  g2 c8 c8
  d4( c4) b4
  c2\breathe g4
  a4 c4 a4
  g2 e4
  a4. g8 f8 e8
  d4. r8 g8 g8
  
  \repeat volta 2 {
    b2( g4)
    c2 g4
    e'4 d4 c4
    c2 b4
    c4( b4) a4
    g2 e4
    a4.( g8) f8( e8)
    d2 g4
    b2 g4
    c2 g4
    e'4 d4 c4
    b2.
  }
  \alternative {
  	  {c2 g8 g8 }
  	  {c2. }
  }
}

altMusic = \relative c' {
  \partial 4
  	e4
  c2 d4
  e2 e8 e8
  f4 e4 d8 d8
  e2 e4 
  f4( a4) f4
  e2 c4
  e4 d4 c4
  b2 g'8 g8
  c,2 d4
  e2 e8 e8
  f4( e4) d4
  e2 e4
  f4 a4 f4
  e2 c4
  f4. e8 d8 c8
  b4. r8 g'8 g8
  
    \repeat volta 2 {
    f2( g4)
    e2 e4
    g4 f4 e4
    e2 d4
    e2 d4
    e2 c4
    f4.( e8) d8( c8)
    b2 g'4
    g2 g4
    e2 e4
    g4 f4 e4
    d2( f4)
    }
    \alternative {
  	  {e2 g8 g8 }
  	  {e2. }
  }
}  	

tenorMusic = \relative c'' {
  \partial 4
  	c,4
  c2 c4
  c2 g8 g8
  g4 g4 g8 g8
  g2 c4
  c2 c4
  c2 c4
  g4 g4 g4
  g2 g8 g8
  g2 g4
  g2 g8 g8
  g2 g4
  g2 c4
  c4 c4 c4
  c2 c4
  c4. c8 g8 g8
  g4. r8 g8 g8
  
   \repeat volta 2 {
   g2.
   g2 g4
   g4 g4 g4
   g2 g4
   g2 g4
   g2 g4
   f2 g4
   g2 g4
   g2 g4
   g2 g4
   g4 g4 g4
   g2.
   }
   \alternative {
  	  {g2 g8 g8 }
  	  {g2. }
  }
}

bassMusic = \relative c {
  \clef bass
  \partial 4
	c4
  c2 c4
  c2 c8 c8
  g'4 g4 g8 g8
  c,2 c4
  f2 f4
  c2 c4
  g'4 g4 g4
  g2 g8 g8
  c,2 c4
  c2 c8 c8
  g'2 g4
  c,2\breathe c4
  f4 f4 f4
  c2 c4
  f4. f8 g8 g8
  g4. r8 g8 g8
  
  \repeat volta 2 {
    d2.
    c2 c4
    c4 b4 c4
    g'2 g4
    c,4( e4) f4
    c2 c4
    f2 g4
    g2 g4
    d2 d4
    c2 c4
    g'4 g4 g4
    g2.
  }
  \alternative {
  	  { c,2 g'8 g8 }
  	  { c,2. }
  }
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff <<
    \set Staff.instrumentName = #"S" 
    \new Voice { \global \sopranMusic }
    \addlyrics { \stanzaOne }
    
    \new Staff <<
    \set Staff.instrumentName = #"A"  
    \new Voice { \global \altMusic }
    %  \addlyrics { \stanzaOne }

    \new Staff <<
    \set Staff.instrumentName = #"T"   
    \clef "G_8"
    \new Voice { \global \tenorMusic }
      \addlyrics { \stanzaOne }  
      
    \new Staff <<
    \set Staff.instrumentName = #"B"   
    \new Voice { \global \bassMusic }
    %  \addlyrics { \stanzaOne }
    >>  
    >>
    >>
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \context {
    \Score tempoWholesPerMinute = #(ly:make-moment 80 4)
  }
}


 \score {
  \unfoldRepeats
  \myScore
  \midi { \midiOutput }
}


\score {
  \unfoldRepeats
  \new Voice { \global \sopranMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \altMusic }
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

% \score {
%  \unfoldRepeats
%  \new Voice { \global \bassMusic }
%  \midi { \midiOutput }
%}

