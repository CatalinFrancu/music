\version "2.14.1"

\paper {
  %#(set-paper-size "a4")
  between-system-padding = 0\mm
  markup-system-spacing = #'((basic-distance . 2))
  %system-system-spacing = #'((basic-distance . 1))
  %system-system-spacing #'basic-distance = #1
  left-margin = 9\mm
  line-width = 20\cm
  print-page-number = false
  top-margin = 5\mm
  %bottom-margin = 1\mm
  ragged-last-bottom=##f
  system-count = #6
}

% diacritice: ă â î ş ţ Ţ Ş Ă

\header {
  title = "Imnul Heruvic"
  %subtitle = ""
  composer = "Gavriil Musicescu"
  %meter = "Adagio"
  tagline=""
}

global = {
  #(set-global-staff-size 19)
  \key d \major
  \time 4/4
  \set Staff.midiInstrument = "clarinet"
}

sopWords = \lyricmode {
  Ca -- re pe he -- ru -- vimi, cu tai -- nă în_ -- chi -- pu -- im,
  cu tai -- nă, cu tai -- nă, cu_ tai -- nă în -- chi -- pu -- im.
  
  Şi viu fă -- că -- toa -- rei, viu fă -- că -- toa -- rei Tre -- imi 
  trei sfân -- tă cân -- ta -- re trei sfân -- tă cân -- ta -- re a -- du -- cem.
  
  Toa -- tă gri -- ja cea lu -- meas -- că a -- cum, a -- cum, a -- cum, a -- cum
  să_ o le_ -- pă -- dăm, să o le_ -- pă -- dăm,  să o le_ -- pă -- dăm,  
  să o le_ -- pă -- dăm.
}

altoWords = \lyricmode {
  Ca -- re cu tai -- nă în_ -- chi -- pu -- im,
  cu tai -- nă, cu tai -- nă, tai -- nă în -- chi -- pu -- im.
  
  Şi viu fă -- că -- toa -- rei Tre -- imi 
  trei sfân -- tă cân -- ta -- re trei sfân -- tă cân -- ta -- re a -- du -- cem.
  
  Toa -- tă gri -- ja cea lu -- meas -- că a -- cum, a -- cum
  să_ o le_ -- pă -- dăm, să o le_ -- pă -- dăm,  să o le_ -- pă -- dăm,  
  să o le_ -- pă -- dăm. 
}

tenoroneWords = \lyricmode {
  Ca -- re pe he -- ru -- vimi, cu tai -- nă în_ -- chi -- pu -- im,
  tai -- nă, tai -- nă, cu_ tai -- nă în -- chi -- pu -- im.
  
  Şi viu fă -- că -- toa -- rei, viu fă -- că -- toa -- rei Tre -- imi 
  sfân -- tă cân -- ta -- re trei sfân -- tă cân -- ta -- re a -- du -- cem.
  
  Toa -- tă gri -- ja cea lu -- meas -- că a -- cum
  să_ o le_ -- pă -- dăm, să o le_ -- pă -- dăm,  să o le -- pă -- dăm,  
  să o le_ -- pă -- dăm.
  }

tenortwoWords = \lyricmode {
  Ca -- re pe he -- ru -- vimi, cu tai -- nă în_ -- chi -- pu -- im,
  tai -- nă, tai -- nă, cu tai -- nă, cu tai -- nă,  în -- chi -- pu -- im.
  
  Şi viu fă -- că -- toa -- rei, viu fă -- că -- toa -- rei Tre -- imi 
  trei sfân -- tă cân -- ta -- re trei sfân -- tă cân -- ta -- re a -- du -- cem.
  
  Toa -- tă gri -- ja cea lu -- meas -- că a -- cum, a -- cum
  să_ o le_ -- pă -- dăm, să o le_ -- pă -- dăm,  să o le -- pă -- dăm,  
  să o le -- pă -- dăm.
  }

barWords = \lyricmode {
  Ca -- re pe he -- ru -- vimi, cu tai -- nă tai -- nă în -- chi -- pu -- im,
  tai -- nă, tai -- nă, cu tai -- nă cu tai -- nă în -- chi -- pu -- im.
  
  Şi viu fă -- că -- toa -- rei, viu fă -- că -- toa -- rei Tre -- imi 
  trei sfân -- tă cân -- ta -- re trei sfân -- tă cân -- ta -- re a -- du -- cem.
  
  Toa -- tă gri -- ja cea lu -- meas -- că a -- cum, a -- cum, a -- cum
  să_ o le_ -- pă -- dăm, să o le_ -- pă -- dăm,  să o le -- pă -- dăm,  
  să o le_ -- pă -- dăm.
  }

bassWords = \lyricmode {
  Ca -- re pe he -- ru -- vimi, cu tai -- nă tai -- nă în -- chi -- pu -- im,
  tai -- nă, cu tai -- nă cu tai -- nă în -- chi -- pu -- im.
  
  Şi viu fă -- că -- toa -- rei, viu fă -- că -- toa -- rei Tre -- imi 
  trei sfân -- tă cân -- ta -- re trei sfân -- tă cân -- ta -- re a -- du -- cem.
  
  Toa -- tă gri -- ja cea lu -- meas -- că a -- cum
  să_ o le_ -- pă -- dăm, să o le_ -- pă -- dăm,  să o le -- pă -- dăm,  
  să o le_ -- pă -- dăm.
  }
    
sopMusic = \relative {
   %Ca -- re pe he -- ru -- vimi, cu tai -- nă în_ -- chi -- pu -- im,
   fis2^\pp^\markup{"Adagio"}( g4) fis e2 e4 e d2^\<( e4 fis)\! g2( fis4 g) 
   a2.^\> g4\!%^\markup{\bold "     Gavriil Musicescu"}  
   fis( g8 fis) e( fis) e4 d4. r8^\p
   %cu tai -- nă, cu tai -- nă, cu_ tai -- nă în -- chi -- pu -- im.
   fis8^\< ( g a b\!) c2 b4 d d^\mf\>( cis8 b) cis2 d4\<( cis\!) b\> cis8( d\!)
   cis( b cis a) b([ cis]) b([ e,]) a2.^\pp \fermata r4
   %Şi viu fă -- că -- toa -- rei, viu fă -- că -- toa -- rei tre -- imi 
   fis2^\p g4( fis) e2. e4 d2( e4) fis g2 fis4 g a2.^\> g4\! fis( g8 fis e fis e4)
   d4. r8 
   %trei sfân -- tă cân -- ta -- re trei sfân -- tă cân -- ta -- re a -- du -- cem.
   fis8^\p\<( g a b\!) c2 b4 d d^\mf\>( cis8 b) cis2 d4( cis) b^\> 
   \autoBeamOff cis8 d\! \autoBeamOn
   cis8^\p([ b cis]) a b( cis b e,) a2.( gis4) a2. \fermata r4 \bar"||" \break
   %Toa -- tă gri -- ja cea lu -- meas -- că a -- cum, a -- cum, a -- cum, a -- cum
   \key f \major 
   a2^\p^\markup{"Andante"}( g4) f bes2.^\> a4\! gis2^\> g\! g4^\>( f) e\! 
   \fermata a a2.-> bes4 
   bes2.-> bes4 a2 g4( f) d'2\>( c4 bes)\!
   %să_ o le_ -- pă -- dăm, să o le_ -- pă -- dăm,  să o le_ -- pă -- dăm,  
   %să o le_ -- pă -- dăm.
   a( bes8 a g4) a f^\<( g8 f e4\!) d g^\>( bes) a g^\> g( f2) e4 d2 d4^\p e f2 
   e d1 r1 r1 r1
   \bar "|."
}

altoMusic = \relative {
   d1( ~ d4 cis8[ b8]) cis2 d1( d) d2. e4 d2 cis4 cis d4. r8 d8([ e fis g])
   a2 g4 a gis2 a a fis e4.( cis8) d4 d cis2. r4
   d1( ~ d4 cis8[ b8]) cis2 d1( d2.) d4 d2. e4 d2( cis) d4. r8 d8([ e fis g])
   a2 g4 a gis2 a a fis4 \autoBeamOff fis8 fis \autoBeamOn e4. cis8 d2 cis2( d) 
   cis2. r4
   \bar"||" \break \key f \major 
   f2( e4)  d d2 d d cis e4( d) cis r4 r1
   r4 e4->( f g) c,2 cis4( d) f2( fis4 g) f2 e d( cis4) d d2 d4 d d2 cis d d4 d
   d2 cis d1 d2 c cis2. cis4 d2. \fermata r4
   \bar "|."   
}

tenoroneMusic = \relative {
   a2( b4) a g2 a4 g fis2( g4 a) b2( a4 b) c2 b a a4 a a2 r2 d2. d4 e2 e d4( e)
   fis \autoBeamOff e8 d \autoBeamOn a2 gis a2. r4
   a2 b4( a) g2( a4) g fis2( g4) a b2 a4 b c2 b a1 a2 r2 
   d2 d4 d e2 e d4( e) fis \autoBeamOff e8 d \autoBeamOn a2 gis4 gis a2.( bes4)
   a2. r4
   \bar"||" \break \key f \major
   a2 a  g2. a4 b2 a a a4 r r1 r1 r1 r4 d2.-> c2 bes a g4 f bes( d) c bes a2 a 
   a bes4 bes a2 a a1 bes2 a a2. a4 a2. r4   
   \bar "|." 	
}

tenortwoMusic = \relative {
   a2( b4) a g2 a4 g fis2( g4 a) b2( a4 b) c2 b a a4 a a2 r2 
   fis8([ g a]) fis b4 a b( e8 d) cis4. e8 a,2 a4 
   \autoBeamOff ais8 b \autoBeamOn e,2 e e2. r4
   a2 b4( a) g2( a4) g fis2( g4) a b2 a4 b c2 b a2( g) fis r2
   fis8([ g a fis]) b4( a) b e8([ d]) cis4. e8 a,2 a4  
   \autoBeamOff ais8 b \autoBeamOn e,2 e4 e e2( f) e2. r4
   \bar"||" \break \key f \major
   a2 a  g2. a4 b2 a a a4 r r1 r1 r4 a2.-> bes4 d2.-> c2 bes a g4 f bes( d) c 
   bes a2 g f bes4 bes a2. g4 f1 f2 f e2. e4 f2. r4
   \bar "|." 	
}

barMusic = \relative {
   d,2 d a a4 a d1 d1( ~ d8[ e]) \autoBeamOff fis8 d \autoBeamOn g8([ fis e]) g
   a2 a,4 a d2 r2 d8([ e fis]) d g4 fis e2 a8([ b a]) g fis4( e) d 
   \autoBeamOff cis8 b \autoBeamOn e2 e a,2. r4
   d2 d a a d2. d4 d2 d4 d d8([ e fis d] g[ fis]) e([ g]) a2( a,) d r
   d8([ e fis d]) g4( fis) e e a8([ b]) a([ g]) fis4( e) d 
   \autoBeamOff cis8 b \autoBeamOn e2 e4 e a,1 a2. r4
   \bar"||" \break \key f \major
   d2( e4) f g2. f4 e2 e d8([ e f g]) a4 r r f->( e d) cis2( d4) e f2( e4) d 
   bes2( a4 g) c2 cis d( a4) bes g2 g'4 g a2 a, d g,4 g a2 a d1 bes2 f a2. a4
   d2. r4
   \bar "|."
}

bassMusic = \relative {
   d,,2 d a' a4 a d,1 d1( ~ d8[ e]) \autoBeamOff fis8 d \autoBeamOn g8([ fis e]) g
   a2 a4 a <d d,>2 r2 r g,4 fis e2 a8([ b a]) g fis4( e) d 
   \autoBeamOff cis8 b \autoBeamOn e2 e a2. r4
   d,2 d a' a d,2. d4 d2 d4 d d8([ e fis d] g[ fis]) e([ g]) a1 d,2 r
   r2 g4 fis e e a8([ b]) a([ g]) fis4( e) d 
   \autoBeamOff cis8 b \autoBeamOn e2 e4 e a1 a2. r4
   \bar"||" \break \key f \major
   d,2( e4) f g2. f4 e2 a a a4 r r1 r1 r2 r4 d 
   bes2( a4 g) c2 cis d( a4) bes g2 g4 g a2 a d, g4 g a2 a d,1 bes'2 f a2. a4
   d,2. r4
   \bar "|."
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff <<
    \set Staff.instrumentName = #"S"
    \new Voice { \global \sopMusic }
    \addlyrics { \sopWords }
    >>
    
    \new Staff <<
    \set Staff.instrumentName = #"A" 
    \new Voice { \global \altoMusic }
    \addlyrics { \altoWords }
    >>
    
    \new StaffGroup <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartSquare
    \new Staff <<
      \clef "G_8"
      \set Staff.instrumentName = #"T I." 
      \new Voice { \global \tenoroneMusic }
      \addlyrics { \tenoroneWords }
    >>
    
    \new Staff <<
      \clef "G_8"
      \set Staff.instrumentName = #"T II." 
      \new Voice { \global \tenortwoMusic }
      \addlyrics { \tenortwoWords }
    >>
    >>
    
    \new Staff <<
      \clef bass
      \set Staff.instrumentName = #"Br" 
      \new Voice { \global \barMusic }
      \addlyrics { \barWords }
    >>
    
    \new Staff <<
      \clef bass
      \set Staff.instrumentName = #"B" 
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
  %\unfoldRepeats
  \myScore
  \midi { \midiOutput }
}

\score {
  \new Voice { \global \sopMusic }
  \midi { \midiOutput }
}
  
\score {
  \new Voice { \global \altoMusic }
  \midi { \midiOutput }
}

\score {
  \new Voice { \global \tenoroneMusic }
  \midi { \midiOutput }
}

\score {
  \new Voice { \global \tenortwoMusic }
  \midi { \midiOutput }
}

\score {
  \new Voice { \global \barMusic }
  \midi { \midiOutput }
}

\score {
  \new Voice { \global \bassMusic }
  \midi { \midiOutput }
}

