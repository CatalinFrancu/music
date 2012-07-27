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
  composer =  \markup \center-column { "Gavriil Musicescu" \small 
  "(1847–1903)" }
  meter = "Andante"
  tagline=""
}

global = {
  #(set-global-staff-size 19)
  \key bes \major
  \time 4/4
  \set Staff.midiInstrument = "clarinet"
}

sopWords = \lyricmode {
  Pe Ti -- ne Te lă -- u -- dăm,
  pe Ti -- ne bi -- ne Te cu -- vân -- tăm.
  Ţi -- e-Ţi mul -- ţu -- mim, 
  Ţi -- e-Ţi mul -- ţu -- mim, 
  Ţi -- e-Ţi mul -- ţu -- mim, mul -- ţu -- mim, Doam -- ne.
  Şi ne ru -- găm, ne ru -- găm_ Ţi -- e,
  Dum -- ne -- ze -- u -- lui nos -- tru,
  Dum -- ne -- ze -- u -- lui nos -- tru.
}

altWords = \lyricmode {
  Pe Ti -- ne Te lă -- u -- dăm,
  pe Ti -- ne bi -- ne Te cu -- vân -- tăm.
  Ţi -- e-Ţi mul -- ţu -- mim, 
  Ţi -- e-Ţi mul -- ţu -- mim, 
  Ţi -- e-Ţi mul -- ţu -- mim, Îţi mul -- ţu -- mim, Doam -- ne.
  Şi ne ru -- găm Ţi -- e,
  Dum -- ne -- ze -- u -- lui nos -- tru,
  Dum -- ne -- ze -- u -- lui nos -- tru.
}

tenorWords = \lyricmode {
  Pe Ti -- ne Te lă -- u -- dăm,
  pe Ti -- ne bi -- ne Te cu -- vân -- tăm.
  Ţi -- e-Ţi mul -- ţu -- mim, 
  Ţi -- e-Ţi mul -- ţu -- mim, 
  Ţi -- e-Ţi mul -- ţu -- mim, Doam -- ne.
  Şi ne ru -- găm Ţi -- e, Ţi -- e,
  Dum -- ne -- ze -- u -- lui nos -- tru,
  Dum -- ne -- ze -- u -- lui nos -- tru.
}

bassWords = \lyricmode {
  Pe Ti -- ne Te lă -- u -- dăm,
  pe Ti -- ne bi -- ne Te cu -- vân -- tăm.
  Ţi -- e-Ţi mul -- ţu -- mim, 
  Ţi -- e-Ţi mul -- ţu -- mim, 
  Ţi -- e-Ţi mul -- ţu -- mim, Doam -- ne.
  Şi ne ru -- găm Ţi -- e,
  Dum -- ne -- ze -- u -- lui nos -- tru,
  Dum -- ne -- ze -- u -- lui nos -- tru.
}

sopMusicOne = \relative {
   \partial 4 d^\pp
   \override Hairpin #'minimum-length = #5
   bes'2.^\< a4^\!\> g2^\! a4 g fis2 b4\rest
   d,^\p 
   \revert Stem #'direction
   c' c c^\accent bes 
   a2 a8^\>[( g) fis( e^\!)]
   fis2^\> b2\rest^\!
   \stemUp
   c4.^\p c8^\< c[( a) bes( c^\!)] d4^\> b4\rest^\! b2\rest
   ees4.^\mf ees8^\< ees[( c) d( ees^\!)] f4 b,4\rest b2\rest
   c4.^\mf\> a8 d8[( c) bes( a^\!)] bes4 b4\rest
   \revert Stem #'direction
   g^\p g g2 g4( fis) g2. b4\rest \break
   d,2^\p^\< g4 a^\! bes2^\< bes4 c^\!
   d2^\>( c4 bes^\!) bes2^\> a^\!
   c2.^\accent\cresc c4 cis2 cis4 cis 
   d2.^\mf^\>( cis4^\!) d2
   a4^\p a c^\>( bes^\!) a g8[( a])
   bes2^\dim( a4 g a2 g4 fis) g2.^\pp\fermata b4\rest
   \bar "|."
}

sopMusicTwo = \relative {
  \skip 4 \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1
  a'4. a8 a([ fis) g( a]) bes4 \skip 4 \skip 2
  c4. c8 c([ a) bes( c]) d4  \skip 4 \skip 2
  a4. f8 bes([ a) g( fis]) g4 \skip 4 \skip 2
  \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1 \skip 1 \skip 1
  \skip 1 \skip 1
}


altMusic = \relative {
    \partial 4 d4
    g2 fis g ees4 e d2 r4
    d a' a a g fis2 e4 d8([ cis])
    d2 d4 d d d d2( d4) r4 r2
    f4 f f f f r r2
    f4 f d4. d8 g4 d ees ees d2 c2 bes2. r4
    r1 d2 g4 a bes2( a4 g) g2 fis 
    r4 g2 g4 g2 g4 g fis2( g) fis2 fis4 fis g2 ees4 ees d1( d) d2. r4	
}

tenorMusicOne = \relative {
    \stemDown
    \partial 4 d4
    d2 c bes c4 bes4 a2 b4\rest
    d d d d d d2
    \stemUp
    cis4 d8[( e]) a,2 b2\rest b1\rest
    d4. d8 d([ bes) c( d)] ees4 b4\rest b2\rest
    f'4. d8 g([ f) ees( d)] c4 b4\rest b2\rest
    bes4. bes8 c4 c bes2 a g2. b4\rest b1\rest b1\rest
    \stemDown
    d4 d d d d2 d b4\rest c2 c4 bes bes 
    \stemUp
    a g8 g
    a2( bes) a2 d4 d c2 c4 c bes2( c4 d c2 bes4 a) bes2. b4\rest
}

tenorMusicTwo = \relative {
   \skip 4 \skip 1 \skip 1 \skip 1 \skip 1 \skip 2
   a4 a a2 \skip 2 \skip 1
   bes4. bes8 bes([ g) a( bes]) c4 \skip 4 \skip 2
   bes4. bes8 ees8([ d) c( bes]) a4 \skip 4 \skip 2
   g4. g8 g4 a bes2 \skip 2 \skip 1 
   \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
   a2 a4 a g2 g4 g g2( a4 bes c2 bes4 a) g2. \skip 4      
}

bassMusic = \relative {
  \partial 4 d,4
  g,2 d' ees c4 cis d2 r4
  d fis fis g g a2 a,4 a d2 r r1
  g4 g g g f r r2
  bes4 bes, bes4. d8 f4 r r2
  g4 g, c c d2 <d d,>2 g,2. r4 r1 r1
  d'4 d fis g d2 d
  r4 ees2 ees4 ees2 ees4 ees
  d2( d) d d4 d ees2 c4 c 
  \set doubleSlurs = ##t
  d1( <d d,>) 
  g,2. r4
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff <<
     \set Staff.instrumentName = #"S" 
     \new Voice { \global \voiceOne \sopMusicOne }
     \addlyrics { \sopWords }
     \new Voice { \global \voiceTwo \sopMusicTwo }
    >>

    \new Staff <<
     \set Staff.instrumentName = #"A"  
     \new Voice { \global \altMusic }
     \addlyrics { \altWords  }
    >>
    
    \new Staff <<
     \set Staff.instrumentName = #"T"   
     \clef "G_8"
     \new Voice { \global \voiceOne \tenorMusicOne }
     \addlyrics { \tenorWords } 
     \new Voice { \global \voiceTwo \tenorMusicTwo }
    >>
     
    \new Staff <<
      \set Staff.instrumentName = #"B"
      \clef bass
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
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 60 4) }
    \context { \Voice \remove "Dynamic_performer" }
}

\score {
  \myScore
  \midi { \midiOutput }
}

\score {
  \new Voice { \global \sopMusicOne }
  \midi { \midiOutput }
}

\score {
  \new Voice { \global \altMusic }
  \midi { \midiOutput }
}

\score {
  \new Voice { \global \tenorMusicOne }
  \midi { \midiOutput }
}

\score {
  \new Voice { \global \bassMusic }
  \midi { \midiOutput }
}
