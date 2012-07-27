\version "2.14.1"

\paper {
 %#(set-paper-size "a4")
  between-system-padding = 0\mm
  markup-system-spacing = #'((basic-distance . 2))
  %system-system-spacing = #'((basic-distance . 1))
  %system-system-spacing #'basic-distance = #1
  left-margin = 1.2\cm
  line-width = 19.7\cm
  print-page-number = false
  top-margin = 5\mm
  bottom-margin = 5\mm
  ragged-last-bottom=##f
  system-count = #5
}

% diacritice: ă â î ş ţ Ţ Ş Ă Î

\header {
  title = "Pe Tine Te lăudăm"
  subtitle = "Tibie paiom"
  composer =  \markup \center-column { "Dimitri Stepanovici Bortnianski" \small 
  "(1751 - 1825)" }
  meter = "Andante religioso-cantabile"
  tagline=""
}

global = {
  %#(set-global-staff-size 19)
  \key c \major
  \time 4/4
  \set Staff.midiInstrument = "clarinet"
}

womenWords = \lyricmode {
  Pe Ti -- ne Te __ lă -- u -- dăm,
  Pe Ti -- ne bi -- ne Te cu -- vân -- tăm.
  Ţi -- e Îţi mul -- ţu -- mim, Doam -- ne,
  şi ne ru -- găm Ţi -- e, şi ne ru -- găm Ţi -- e, 
  şi ne ru -- găm Ţi -- e, Doam -- ne, 
  Dum -- ne -- ze -- u -- lui nos -- tru.
}

menWords = \lyricmode {
  Pe Ti -- ne Te lă -- u -- dăm,
  Pe Ti -- ne bi -- ne Te cu -- vân -- tăm.
  Ţi -- e Îţi mul -- ţu -- mim, Doam -- ne
  şi ne ru -- găm Ţi -- e, şi ne ru -- găm Ţi -- e, 
  şi ne ru -- găm Ţi -- e, Doam -- ne, 
  Dum -- ne -- ze -- u -- lui nos -- tru.
}
sopMusic = \relative {
  \repeat volta 1 {
   \partial 4 e
   e2 e4 e e4. d8 d4 g f4. f8 f4 g8 g f4. f8 e2 
   g4( g) gis gis a a a2 g( f) e2. r4\break }
  \repeat volta 1 { 
   e4^\p e8^\< e f4( g^\!) f4.(^\> f8) f2^\!
   fis4^\< fis8 fis g4( a^\!) g4.(^\> g8) g2^\!
   gis4 gis8^\< gis a4( b^\!) a4.(^\> a8) a2^\!
   g( f) e2. r4\break }
  \repeat volta 1 {
   f2^\pp e f e d^\>( dis) e2 e2\!\fermata }
   %\bar "|."
}

altMusic = \relative {
  \repeat volta 1 {
   \partial 4 c4
   c2 c4 c c4. b8 b4 g d'4. d8 d4 d8 d c4. c8 c2
   e4( e) e e e e f2 e( d) c2. r4\break }
  \repeat volta 1 { 
   c4 c8 c c4( c) c4.( c8) c2 d4 d8 d d4( d) d4.( d8) d2
   e4 e8 e e4( e) e4.( e8) dis2 e2( d) c2. r4\break }
  \repeat volta 1 { 
  c2 c c c c( c) c c } 
}	

tenorMusic = \relative {
  \repeat volta 1 {
   \partial 4 g4
   g2 g4 g g4. g8 g4 g b4. b8 b4 b8 b a4. aes8 g2
   c4( c) c d c c c2 c( b) g2. r4\break }
  \repeat volta 1 { 
   g4 g8 g a4( bes) a4.( a8) a2 a4 a8 a b4( c) b4.( b8) b2
   b4 e8 d c4( d) c4.( c8) c2 c( b) g2. r4\break }
  \repeat volta 1 { 
   a2 g b4( a) g2 a( a) g g } 
}	

bassMusic = \relative {
  \partial 4 c,4
  c2 c4 e4 g4. g,8 g4 g' g4. g8 g4 g8 g8 c,4. c8 c2
  c4( e8[ g]) c4 b a g f2 g( g,) c2. r4
  c c8 c c4( e) f4.( f8) f2 d4 d8 d d4( fis4) g4.( g8) g2
  e4 e8 e e4( gis) a4.( g8) fis2
  g( g,) c2. r4
  c2 c c c <f f,>( <f f,>) c2 c2
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff <<
     \set Staff.instrumentName = #"S" 
     \new Voice { \global \sopMusic }
     \addlyrics { \womenWords }
    >>

    \new Staff <<
     \set Staff.instrumentName = #"A"  
     \new Voice { \global \altMusic }
     %  \addlyrics { \womenWords  }
    >>
    
    \new Staff <<
     \set Staff.instrumentName = #"T"   
     \clef "G_8"
     \new Voice { \global \tenorMusic }
     \addlyrics { \menWords }  
    >>
     
    \new Staff <<
      \set Staff.instrumentName = #"B"
      \clef bass
      \new Voice { \global \bassMusic }
      %\addlyrics { \menWords }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 60 4) }
    \context { \Voice \remove "Dynamic_performer" }
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
