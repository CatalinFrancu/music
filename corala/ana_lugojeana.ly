\version "2.10.14"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Ana lugojeana"
  composer = "Ion Vidu"
  tagline = ""
  meter = \markup { Allegro \note #"4" #1 = 140 }
}

global = {
  #(set-global-staff-size 17)
  \key e \minor
  \time 2/4
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
}

sempreMarkup = \markup {
  \bold \italic "sempre "
  \musicglyph #"f"
}

womenStanzaOne = \lyricmode {
  \set stanza = "1."
  A -- şa joa -- că pe __ la __ noi, __
  Ia -- c-a -- şa doi câ -- te doi, __
  Ia -- că, ia -- c-a -- şa. __

  Vezi, a -- şa se joa -- că __ fa -- ta:
  Şi pe stân -- ga şi pe dreap -- ta,
  Ia -- că, ia -- c-a -- şa.

  Săi şi joa -- că, joa -- că fa -- ta, vezi a -- şa __
  Şi cu u -- na do -- uă, do -- uă, n-o lă -- sa; __

  N-o lă -- sa, bă -- ie -- te, că-i __ voi --
  \set ignoreMelismata = ##t
  ni -- că;
  Nici de joc şi nici de lu -- cru n-a -- re
  fri -- că.

  Că n-am ve -- nit la voi la şu -- ră, A -- no lu -- go -- jea -- no,
  Să mă uit pe sub că -- ciu -- lă, A -- no lu -- go -- jea -- no,
  Ci-am ve -- nit să joc o fa -- tă, A -- no lu -- go -- jea -- no,
  Să mă po -- me -- neas -- c-o -- da -- tă, A -- no lu -- go -- jea -- no,
  Ori de ma -- mă ori de ta -- tă, A -- no lu -- go -- jea -- no,
  Ori de dra -- cul câ -- teo -- da -- tă, A -- no lu -- go -- jea -- no
  \unset ignoreMelismata

  \set stanza = "2."
  Că

  \skip 1 \skip 1

  La, la, la, la, la, la, la, la, la,
  la, la, la, la, la, la, __
  La, la, la, la, la, la, la, la, la,
  la, la, la, __ la.

  A -- şa joa -- că pe __ la __ noi __
  Mai fru -- mos de -- cât la voi, __
  Mai fru -- mos de -- cât la voi, __
  Mai fru -- mos de -- cât la voi, __
  Ia -- ca, ia -- c-a -- şa.
}

womenStanzaTwo = \lyricmode {
  \set stanza = "2."
  Hai, mân -- dro, să te-n -- vâr -- tesc __
  În jo -- cul lu -- go -- je -- nesc, __
  Ia -- că, ia -- c-a -- şa. __

  Că, zău, mân -- dro, rău __ îmi __ pa -- re
  Să joc în -- vâr -- ti -- ta ma -- re,
  Ia -- că, ia -- c-a -- şa.

  Să ju -- căm, le -- li -- ţă, să ne dez -- mier -- dăm __
  Şi din as -- ta, dra -- gă, să nu mai cur -- măm. __
  
  Tot a -- şa -- 'na -- in -- te şi -- na -- poi __
  Cum se joa -- că, joa -- că, dra -- gă, pe la noi. __

  Că sus e ce -- rul de pă -- mânt, __ A -- no lu -- go -- jea -- no,
  Fe -- te ca la noi nu sunt, __ A -- no lu -- go -- jea -- no,
  Ba mai sunt şi-n al -- te sa -- te, A -- no lu -- go -- jea -- no,
  Dar, zău, nu prea mi -- nu -- na -- te, A -- no lu -- go -- jea -- no,
  Ba mai sunt şi pe la voi, __ A -- no lu -- go -- jea -- no,
  Dar nu prea cu bu -- ze moi, __ A -- no lu -- go-
  \skip 8 \skip 8 \skip 8
  jea -- no.
}

menStanzaOne = \lyricmode {
  \set stanza = "1."
  A -- şa joa -- că pe la noi,
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 

  Săi şi joa -- că, joa -- că fa -- t-a -- şa __
  Şi cu u -- na do -- uă, do -- uă, n-o lă -- sa, lă -- sa;

  N-o lă -- sa, bă -- ie -- te, că-i voi --
  \set ignoreMelismata = ##t
  ni -- că;
  \unset ignoreMelismata
  Nici de joc şi nici de

  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8

  La, la, la, la, la, la, la, la, la, la, la, la
  La, la, la, la, la, la, la, la, la, la, la
}

menStanzaTwo = \lyricmode {
  \set stanza = "2."
  Hai, mân -- dro, să te-n -- vâr -- tesc,
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 

  Să ju -- căm şi să ne dez -- mier -- dăm __
  Şi din as -- ta, dra -- gă, să nu mai cur -- măm, cur -- măm.

  Tot a -- şa 'na -- in -- te şi -- na -- poi __
  Cum  se joa -- că, joa -- că,
}

womenMusic = \relative {
  R2 * 4
  \break

  % Aşa joacă pe la noi, Iac-aşa doi câte doi, Iacă, iac-aşa.
  b'8^\pp r8 r8 c8
  a8 r8 r8 b8
  g8([^\< fis8)] e8([ fis8)]\!
  g4(^\> d8)\! r8

  b'8^\mf b8 c8 b8
  \break
  a8 b8 a8([ g8)]
  fis8. e16 b8 b8
  e4~^\> e8\! r8

  % Vezi, aşa se joacă fata: Şi pe stânga şi pe dreapta, Iacă, iac-aşa.
  b'8^\p r8 r8 c8
  a8 r8 r8 b8
  \break
  g8([^\< fis8)] e8([ fis8)]\!
  g4^\> d8\! r8

  b'8^\mf b8 c8 b8
  a8 b8 a8 g8
  fis8. e16 b8 b8
  \break
  e4 r4

  % Săi şi joacă, joacă fata, vezi aşa / Şi cu una două, două, n-o lăsa.
  e4.^\f fis8
  g8 b8 a8. g16
  g8. fis16 e8 fis8
  g4(^\> d8)\! r8
  \break

  e4.^\mf fis8
  g8 b8 a8. g16
  fis8. e16 b8 b8
  e4(^\> e'16)\! r16 r8

  % N-o lăsa, băiete, că-i voinică; Nici de joc şi nici de lucru n-are frică.
  % Că...
  e,4.^\mp fis8
  \break
  g8 b8 a8. g16
  g8.([ fis16)] e8([ fis8)]
  \slurDashed
  g4(^\> d8)\! r8
  \slurSolid

  e4.^\p fis8
  g8 b8 a8. g16
  \break
  fis8. e16 b8 b8
  \slurDashed
  e4(^\> e8)\! r16 e16
  \slurDotted

  \repeat volta 2 {
    % ... n-am venit la voi la şură, Ano lugojeano,
    % Să mă uit pe sub căciulă, Ano lugojeano,
    e8^\ff e'8 e8 d8
    e8 d8 \slurDashed c8( b8) \slurSolid
    \acciaccatura b8 d4 b4
    \break
    c8 b8 a8 g8
  
    g8^\f e'8 e8 d8
    e8 d8 \slurDashed c8( b8) \slurSolid
    \acciaccatura b8 d4 b4
    c8 b8 a8 g8
    \break
  
    % Ci-am venit să joc o fată, Ano lugojeano,
    % Să mă pomeneasc-o dată, Ano lugojeano
    g8.^\mf b16 b8 g8
    a8. g16 fis8 e8
    e'4^\f\accent b4\accent
    c8 b8 a8 g8
  
    g8.^\mf b16 b8 g8
    \break
    a8. g16 fis8 e8
    fis8. e16 b8 b8
    e4 d8^\sf r8
  
    % Ori de mamă ori de tată, Ano lugojeano
    % Ori de dracul câteodată, Ano lugojeano + volta
    g8.^\p b16 b8 g8
    a8. g16 \slurDashed fis8( e8) \slurSolid
    \break
    e'4^\mf\accent b4\accent
    c8^\> b8 a8 g8\!
    
    g8.^\pp b16 b8 g8
    a8. g16 \slurDashed fis8( e8) \slurSolid
    fis8. e16 b8 b8
    \break
  } \alternative {
    { e4^\> e8\! r16 e16^\ff }
    { e4^\> e8\! r8 }
  }

  \repeat volta 2 {
    % La, la, la, la, ...
    d8^\f g8 d8 g8
    b8 g8 d'8 e16 d16
    c8 b8 a8 c8
    \break
    b4 a8([ d16)] r16

    d,8^\p g8 d8 g8
    b8 g8 d'8 e16 d16
    c8 b8 a8.([ d16)]
    g,8 r8 r4^\markup{\italic \large "D.C."}
    \break
  }

  % Aşa joacă pe la noi,
  b8^\pp r8^\markup{\italic \large "CODA"} r8 c8
  a8 r8 r8 b8
  g8([ fis8)] e8([ fis8)]
  g4( d8) r8

  % Mai frumos decât la voi * 2
  b'8^\pp b8 c8^\markup{\italic \bold "cresc."} b8
  a8^\< b8 a8([ g8)]\!
  \break
  b8^\pp^\< b8 c8 b8\!
  a8 b8 a8([ g8)]

  % Mai frumos decât la voi, Iaca, iac-aşa.
  \time 4/4
  b4^\f b4 c4 b4
  a4 b4 a4( g4)
  fis4 fis4 g4^\sempreMarkup fis4
  g1^\fermata
  \bar "|."
}

menMusic = \relative {
  % Aşă joacă pe la noi
  e,8^\p r8 r8 e8
  e8 r8 r8 e8
  e8 r8 e8 r8
  e8 r8 r4

  % Aşa joacă pe la noi, Iac-aşa doi câte doi, Iacă, iac-aşa.
  e8^\pp r8 r8 c8
  c8 r8 r8 d8
  d4^\< d4\!
  g4(^\> d8)\! r8

  g8^\mf g8 fis8 g8
  a8 gis8 a8([ e8)]
  dis8. e16 b8 b8
  e4(^\> c8)\! r8

  % Vezi, aşa se joacă fata: Şi pe stânga şi pe dreapta, Iacă, iac-aşa.
  g'8^\p r8 r8 g8
  g8 r8 r8 g8
  d4^\< d4\!
  g4^\> d8\! r8

  g8^\mf g8 fis8 g8
  a8 gis8 a8 e8
  dis8. e16 b8 b8
  e4 r4

  % Săi şi joacă, joacă fata, vezi aşa / Şi cu una două, două, n-o lăsa.
  e8^\f e8 e8 e8
  e4 cis4
  d4 d4
  g4(^\> d8)\! r8

  e8^\mf e8 e8 e8
  e4 e4
  dis8. e16 b8 b8
  e8^\> e8 e16\! r16 r8

  % N-o lăsa, băiete, că-i voinică; Nici de joc şi nici de lucru n-are frică.
  % Că...
  e8^\mp e8 e8 e8
  e4 cis4
  d4 d4
  \slurDashed g4(^\> d8)\! \slurSolid r8

  e8^\p e8 e8 e8
  e4 e4
  dis8. e16 b8 b8
  \slurDashed e4(^\> e8)\! r16 e16

  \repeat volta 2 {
    % ... n-am venit la voi la şură, Ano lugojeano,
    % Să mă uit pe sub căciulă, Ano lugojeano,
    e8^\ff c'8 c8 b8
    c8 b8 \slurDashed a8( g8) \slurSolid
    \acciaccatura g8 b4 g4
    a8 e8 fis8 g8
  
    g8^\f c8 c8 b8
    c8 b8 \slurDashed a8( g8) \slurSolid
    \acciaccatura g8 b4 g4
    a8 e8 fis8 g8
    
    % Ci-am venit să joc o fată, Ano lugojeano,
    % Să mă pomeneasc-o dată, Ano lugojeano
    g8.^\mf g16 fis8 e8
    fis8. e16 dis8 e8
    c'4^\f\accent g4\accent
    a8 e8 fis8 g8
  
    g8.^\mf g16 fis8 e8
    fis8. e16 dis8 e8
    dis8. e16 b8 b8
    e4 d!8^\sf r8
  
    % Ori de mamă ori de tată, Ano lugojeano
    % Ori de dracul câteodată, Ano lugojeano + volta
    g8.^\p g16 fis8 e8
    fis8. e16 \slurDashed dis8( e8) \slurSolid
    c'4^\mf\accent g4\accent
    a8^\> e8 fis8 g8\!
    
    g8.^\pp g16 fis8 e8
    fis8. e16 \slurDashed dis8( e8) \slurSolid
    dis8. e16 b8 b8
    } \alternative {
    { e4^\> e8\! r16 e16^\ff }
    { e4^\> e8\! r8 }
  }

  \repeat volta 2 {
    % La, la, la, la, ...
    d8^\f g8 d8 g8
    g8 r8 b8 r8
    a8 g8 fis8 a8
    g4 fis8 r8

    d8^\p g8 d8 g8
    g8 r8 b8 r8
    a8 g8 fis8. fis16
    g8 r8 r4
  }

  % Aşa joacă pe la noi,
  g8^\pp r8 r8 g8
  g8 r8 r8 g8
  d4 d4
  g4( d8) r8

  % Mai frumos decât la voi * 2
  R2
  R2
  g8^\p^\< fis8 e8 d8\!
  cis8 d8 c8([ b8)]

  % Mai frumos decât la voi, Iaca, iac-aşa.
  \time 4/4
  g'4^\f fis4 e4 d4
  cis4 d4 c4( b4)
  d4 d4 b4^\sempreMarkup d4
  g1^\fermata
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \womenMusic }
    \addlyrics { \womenStanzaOne }
    \addlyrics { \womenStanzaTwo }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \menMusic }
      \addlyrics { \menStanzaOne }
      \addlyrics { \menStanzaTwo }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \context {
    \Score tempoWholesPerMinute = #(ly:make-moment 140 4)
  }
}

\score {
  \unfoldRepeats
  \myScore
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \womenMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \menMusic }
  \midi { \midiOutput }
}
