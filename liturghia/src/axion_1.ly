\version "2.12.0"
\include "defines.ly"
midiTempo = 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }


\include "preamble.ly"

\header {
  title = "Axionul Născătoarei de Dumnezeu"
  subtitle = "glasul 5"
  composer = "de I. Popescu-Pasărea"
  meter = "Moderato"
}

global = {
  \globalPreamble
  \key d \minor
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = #mixedTimeSigMarkup
  \time 2/4
}

womenWords = \lyricmode {
  Cu -- vi -- ne- -- se cu __ a -- de -- vă -- rat
  să te fe -- ri -- cim __ Năs -- că -- toa -- re de Dum -- ne -- zeu,
  Cea pu -- ru -- rea __ fe -- ri -- ci -- tă
  şi prea ne -- vi -- no -- va -- tă
  şi Mai -- ca Dum -- ne -- ze -- u -- lui nos -- tru.
  Ce -- ea __ ce __ eşti mai cin -- sti -- tă __ de -- cât he -- ru -- vi mii
  şi mai mă -- ri -- tă făr' de-a -- se -- mă -- na -- re
  de -- cât __ se -- ra -- fi -- mii;
  ca -- rea __ fă -- ră stri -- că -- ciu -- ne
  pe Dum -- ne -- zeu __ Cu -- vân -- tul __ ai __ năs -- cut,
  pe ti -- ne cea __ cu a -- de -- vă -- rat
  Năs -- că -- toa -- re de Dum -- ne -- zeu
  te mă -- rim, __ te mă -- rim.
}

menWords = \lyricmode {
  Cu -- vi -- ne- -- se cu __ a -- de -- vă -- rat
  să te fe -- ri -- cim Năs -- că -- toa -- re de Dum -- ne -- zeu,
  Cea pu -- ru -- rea __ fe -- ri -- ci -- tă
  şi prea ne -- vi -- no -- va -- tă
  şi Mai -- ca Dum -- ne -- ze -- u -- lui nos -- tru.
  Ce -- ea __ ce __ eşti mai cin -- sti -- tă __ de -- cât he -- ru -- vi mii
  şi mai __ mă -- ri -- tă făr' de-a -- se -- mă -- na -- re
  de -- cât __ se -- ra -- fi -- mii;
  ca -- rea __ fă -- ră stri -- că -- ciu -- ne
  pe Dum -- ne -- zeu __ Cu -- vân -- tul __ ai __ năs -- cut,
  pe ti -- ne cea __ cu a -- de -- vă -- rat
  Năs -- că -- toa -- re de Dum -- ne -- zeu __
  te mă -- rim, te mă -- rim.
}

sopMusic = \relative {
  \cadenzaOn
  #(set-accidental-style 'forget)

  % Cuvine-se cu adevărat
  a'8^\mp \bar "|"
  d4(^\accent cis8[ d8)] a4 a4 \bar "|"
  g8([ bes8 a8 g8)] f8([ e8 d8 e8)] \bar "|"
  f2 g8([ a8] g4) \bar "|"
  a2

  % să te fericim Născătoare de Dumnezeu
  a4 a4 \bar "|"
  b4 cis4 \bar "|"
  d8([ cis8 d8 bes)] a4 a4 \bar "|"
  bes8([ a8 g8 a8)] f4 bes4 \bar "|"
  a4( g4) f8([ e8 d8 cis8)] \bar "|"
  d4.

  % cea pururea fericită
  e8 \bar "|"
  f4( g4) f8([ e8)] d8([ e8)] \bar "|"
  f4 g4 \bar "|"
  a8([ bes8 a8 g8] f8[ g8 a8 bes8)] \bar "|"
  a4.

  % şi prea nevinovată
  a8 \bar "|"
  bes4 a4 bes4 cis4 \bar "|"
  d4.( cis8
  #(set-accidental-style 'no-reset)
  b8[ cis8 d8 e8)] \bar "|"
  #(set-accidental-style 'forget)
  d4.

  % şi Maica Dumnezeului nostru.
  cis8 \bar "|"
  d8([ cis8 d8 bes8)] a2 \bar "|"
  a4 a4 \bar "|"
  bes8([ a8 g8 a8)] f4 bes4 \bar "|"
  a4( g4 f8[ e8 d8 cis8)] \bar "|"
  d2. b'4\rest \bar "|"

  % Ceea ce eşti mai cinstită decât heruvimii
  a4( g4) f8([ g8)] e8([ f8)] \bar "|"
  d2 d4 e4 \bar "|"
  f4( g4) f8([ e8)] d8 e8 \bar "|"
  f4 g4 \bar "|"
  a8([ bes8 a8 g8] f8[ g8 a8 bes8)] \bar "|"
  a4.

  % şi mai mărită făr' de-asemănare
  a8 \bar "|"
  d4 e4 \bar "|"
  f4( e8[ d8] cis4 d4) \bar "|"
  a2 \bar "|"
  bes4 a4 bes4 cis4 \bar "|"
  d4.( cis8
  #(set-accidental-style 'no-reset)
  b8[ cis8 d8 e8)] \bar "|"
  #(set-accidental-style 'forget)
  d4.

  % decât serafimii;
  d8 \bar "|"
  a4( g4) f4 bes4 \bar "|"
  a4( g4 f8[ e8 d8 cis8)] \bar "|"
  d2 \bar "|"

  % carea fără stricăciune
  d4.( e8) f4( g4) \bar "|"
  f8([ e8)] d8([ e8)] f4 g4 \bar "|"
  a8([ bes8 a8 g8] f8[ g8 a8 bes8)] \bar "|"
  a4.

  % pe Dumnezeu Cuvântul ai născut,
  a8 b4 cis4 \bar "|"
  d8([ cis8 d8 bes8)] a4( g4) \bar "|"
  bes8([ a8 g8 a8)] f4( bes4) \bar "|"
  a4( g4) f8([ e8 d8 cis8)] \bar "|"
  d4.

  % pe tine cea cu adevărat
  a'8 \bar "|"
  d4 cis4 \bar "|"
  d8([ cis8 d8 bes8)] a4 a4 \bar "|"
  b2 cis8([ d8]
  #(set-accidental-style 'no-reset)
  cis4) \bar "|"
  #(set-accidental-style 'forget)
  d2

  % Născătoare de Dumnezeu
  a4 a4 \bar "|"
  bes8([ a8 g8 a8)] f4 bes4 \bar "|"
  a4( g4) f8([ e8 d8 cis8)] \bar "|"
  d2

  % te mărim, te mărim
  f4^\rallMarkup g4 \bar "|"
  a4.( bes8 a8[ g8 f8 e8] \bar "|"
  d2) \bar "|"
  cis4( d4) e4( f4) \bar "|"
  d2.^\fermata b'4\rest \bar "|."
}

altoMusic = \relative {
  \cadenzaOn
  #(set-accidental-style 'forget)

  % Cuvine-se cu adevărat
  a'8
  a2 f4 f4
  g8([ bes8 a8 g8)] f8([ e8 d8 e8)]
  f2 e8([ f8] e4)
  f2

  % să te fericim Născătoare de Dumnezeu
  f4 f4
  g4 a4
  a4.( g8) f4 f4
  g8([ f8 e8 f8)] d4 g4
  f4( e4) d8([ e8 d8 cis8)]
  d4.

  % cea pururea fericită
  e8
  f4( g4) f8([ e8)] d8([ e8)]
  f4 e4
  f8([ g8 f8 e8] f8[ g8 a8 bes8)]
  a4.

  % şi prea nevinovată
  a8
  bes4 a4 g4 a4
  a1
  a4.

  % şi Maica Dumnezeului nostru.
  a8
  a4.( bes8) a2
  f4 f4
  g8([ f8 e8 f8)] d4 g4
  f4( e4 d8[ e8 d8 cis8)]
  d2. b'4\rest

  % Ceea ce eşti mai cinstită decât heruvimii
  a4( g4) f8([ g8)] e8([ f8)]
  d2 d4 e4
  f4( g4) f8([ e8)] d8 e8
  f4 e4
  f8([ g8 f8 e8] f8[ g8 a8 bes8)]
  a4.

  % şi mai mărită făr' de-asemănare
  a8
  d4 cis4
  d4( cis8[ d8] a2)
  a2
  bes4 a4 g4 a4
  a1
  a4.

  % decât serafimii;
  a8
  a4( g4) f4 g4
  f4( e4 d8[ e8 d8 cis8)]
  d2

  % carea fără stricăciune
  d4.( e8) f4( g4)
  f8([ e8)] d8([ e8)] f4 e4
  f8([ g8 f8 e8] d8[ e8 f8 g8)]
  f4.

  % pe Dumnezeu Cuvântul ai născut,
  f8 g4 a4
  a4.( bes8) a4( g4)
  bes8([ a8 g8 a8)] f4( g4)
  f4( e4) d8([ e8 d8 cis8)]
  d4.

  % pe tine cea cu adevărat
  a'8
  a4 a4
  a4.( bes8) f4 f4
  g2 a2
  a2

  % Născătoare de Dumnezeu
  f4 f4
  g8([ f8 e8 f8)] d4 g4
  f4( e4) d8([ e8 d8 cis8)]
  d2

  % te mărim, te mărim
  d4 e4
  f4.( g8 f8[ e8 d8 cis8]
  d2)
  cis4( d4) cis2
  d2. b'4\rest
}

tenorMusic = \relative {
  \cadenzaOn
  #(set-accidental-style 'forget)

  % Cuvine-se cu adevărat
  a8^\mp
  f4( e8[ f8)] d4 d4
  e8([ g8 f8 e8)] f8([ e8 d8 e8)]
  f2 c2
  f2
  
  % să te fericim Născătoare de Dumnezeu
  f4 f4
  e4 e4
  d2 d4 d4
  g8([ f8 e8 f8)] d4 g4
  f4( e4) a,2
  d4.

  % cea pururea fericită
  e8
  f4( g4) f8([ e8)] d8([ e8)]
  f4 c4
  f8([ g8 f8 c8] d8[ e8 f8 g8)]
  f4.

  % şi prea nevinovată
  f8
  g4 f4 e4 e4
  f4.( e8 d8[ e8 f8 g8)]
  f4.

  % şi Maica Dumnezeului nostru.
  a8
  f8([ e8 d8 g8)] f2
  d4 d4
  g8([ f8 e8 f8)] d4 g4
  f4( e4 a,2)
  d2. d4\rest
  
  % Ceea ce eşti mai cinstită decât heruvimii
  a'4( g4) f8([ g8)] e8([ f8)]
  d2 d4 e4
  f4( g4) f8([ e8)] d8 e8
  f4 c4
  f8([ g8 f8 c8] d8[ e8 f8 g8)]
  f4.

  % şi mai mărită făr' de-asemănare
  d8\rest
  d4\rest d8\rest a'8
  a4 a4 a4.( g8)
  f2
  g4 f4 e4 e4
  f4.( e8 d8[ e8 f8 g8)]
  f4.

  % decât serafimii;
  f8
  f4( e4) f4 g4
  f4( e4 d4 a4)
  d2

  % carea fără stricăciune
  d4.( e8) f4( g4)
  f8([ e8)] d8([ e8)] f4 c4
  f8([ g8 f8 c8] d8[ e8 f8 g8)]
  f4.

  % pe Dumnezeu Cuvântul ai născut,
  f8 e4 e4
  d8([ e8 f8 g8)] f4( e4)
  g8([ f8 e8 f8)] d4( g4)
  f4( e4) a,2
  d4.

  % pe tine cea cu adevărat
  a'8
  f4 e4
  d8([ e8 f8 g8)] f4 f4
  e2 e2
  f2

  % Născătoare de Dumnezeu
  d4 d4
  g8([ f8 e8 f8)] d4 g4
  f4( e4) a,2
  d1~
  d2
  
  % te mărim, te mărim
  a4 a4
  d2
  a2 a2
  d2. d4\rest
}

bassMusic = \relative {
  \cadenzaOn
  #(set-accidental-style 'forget)

  % Cuvine-se cu adevărat
  a8
  d,2 d4 d4
  e8([ g8 f8 e8)] f8([ e8 d8 e8)]
  f2 c2
  f2
  
  % să te fericim Născătoare de Dumnezeu
  f4 f4
  e4 e4
  d2 d4 d4
  g8([ f8 e8 f8)] d4 g4
  f4( e4) a,2
  d4.

  % cea pururea fericită
  e8
  f4( g4) f8([ e8)] d8([ e8)]
  f4 c4
  f8([ g8 f8 c8] d8[ e8 f8 g8)]
  f4.

  % şi prea nevinovată
  f8
  g4 f4 e4 a,4
  d4.( e8 f8[ e8 d8 cis8)]
  d4.

  % şi Maica Dumnezeului nostru.
  a'8
  f8([ e8 d8 g8)] f2
  d4 d4
  g8([ f8 e8 f8)] d4 g4
  f4( e4 a,2)
  d2. d4\rest
  
  % Ceea ce eşti mai cinstită decât heruvimii
  a'4( g4) f8([ g8)] e8([ f8)]
  d2 d4 e4
  f4( g4) f8([ e8)] d8 e8
  f4 c4
  f8([ g8 f8 c8] d8[ e8 f8 g8)]
  f4.

  % şi mai mărită făr' de-asemănare
  d8\rest
  d4\rest d8\rest a'8
  d,8([ f8)] a4 a,2
  d2
  g4 f4 e4 e4
  d1
  d4.

  % decât serafimii;
  d8
  d4( e4) f4 g4
  f4( e4 d4 a4)
  d2

  % carea fără stricăciune
  d4.( e8) f4( g4)
  f8([ e8)] d8([ e8)] f4 c4
  f8([ g8 f8 c8] d8[ e8 f8 g8)]
  f4.

  % pe Dumnezeu Cuvântul ai născut,
  f8 e4 e4
  d8([ e8 f8 g8)] f4( e4)
  g8([ f8 e8 f8)] d4( g4)
  f4( e4) a,2
  d4.

  % pe tine cea cu adevărat
  a'8
  f4 e4
  d8([ e8 f8 g8)] f4 f4
  e2 a,2
  d2

  % Născătoare de Dumnezeu
  d4 d4
  g8([ f8 e8 f8)] d4 g4
  f4( e4) a,2
  \wholeNotesOverlap
  d1~
  d2
  
  % te mărim, te mărim
  a4 a4
  d2
  a2 a2
  d2.^\fermata d4\rest
}

\include "two-staves.ly"
