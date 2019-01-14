\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 5.25)
#(define myStaffSpacing 1.5)
midiTempo =
  \midi {
    \tempo 4 = 90
    }


\include "preamble.ly"

\header {
  title = "Heruvic"
  subtitle = "glasul 5"
  composer = "După I. Popescu-Pasărea şi N. Lungu"
  arranger = "Aranj. de N. Moldoveanu"
  meter = "Adagio"
}

global = {
  \globalPreamble
  \key g \minor
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #mixedTimeSigMarkup
}

womenWords = \lyricmode {
  Noi, ca -- re,
  ca -- re pe he -- ru -- vimi,
  pe __ he -- ru -- vimi, __
  cu tai -- nă, cu tai -- nă,
  cu tai -- nă în -- chi -- pu -- im, __
  cu tai -- nă în -- chi -- pu -- im,
  în -- chi -- pu -- im __

  şi fă -- că toa -- rei __ de __ vi -- a -- ţă
  şi fă -- că -- toa -- rei de vi -- a -- ţă __ Tre -- imi,
  în -- tre -- it __ sfân -- tă cân -- ta -- re __
  cân -- ta -- re a -- du -- cem,

  toa -- tă, toa -- tă gri -- ja,
  gri -- ja lu -- meas -- că, gri -- ja lu -- meas -- că
  a -- cum gri -- ja lu -- meas -- că
  a -- cum __ să __ o __ le -- pă -- dăm,
  să o le -- pă -- dăm, să o __ le -- pă -- dăm,
  să __ o __ le -- pă -- dăm, să o le -- pă -- dăm.
}

menWords = \lyricmode {
  Noi, ca -- re,
  ca -- re pe he -- ru -- vimi,
  pe he -- ru -- vimi, __
  cu tai -- nă în -- chi -- pu -- im, __
  cu tai -- nă în -- chi -- pu -- im,
  în -- chi -- pu -- im, în -- chi -- pu -- im

  şi fă -- că toa -- rei de vi -- a -- ţă
  şi fă -- că -- toa -- rei __ de vi -- a -- ţă Tre -- imi,
  în -- tre -- i -- tă cân -- ta -- re __
  cân -- ta -- re a -- du -- cem, a -- du -- cem.

  toa -- tă, toa -- tă gri -- ja, __ toa -- tă gri -- ja,
  gri -- ja lu -- meas -- că, gri -- ja lu -- meas -- că
  a -- cum __ gri -- ja lu -- meas -- că
  a -- cum să o le -- pă -- dăm,
  să o le -- pă -- dăm, să o le -- pă -- dăm,
  să o le -- pă -- dăm, să o le -- pă -- dăm.
}

sopMusic = \relative c' {
  \cadenzaOn
  \accidentalStyle forget

  % Noi care, care pe heruvimi, pe heruvimi
  g'4.(^\p a8) bes4( c4 \bar "|"
  bes4 a8[ bes8)] g2 \bar "|"
  a4.( bes8 a4 bes4) \bar "|"
  g4 g4 \bar "|"
  a4( bes4) c4( d8[ c8)] \bar "|"
  bes2 \breathe a4( c8[ bes8)] \bar "|"
  \acciaccatura c8 bes8( a4 bes8) g4( f4) \bar "|"
  g2~ g4 b8\rest

  % cu taină, cu taină, cu taină închipuim
  g8 \bar "|"
  d'4.( es8) d4 c4 \bar "|"
  bes4.( c8 bes4 a4) \bar "|"
  g2~ g4. g8 \bar "|"
  a4( g4 f8[ g8 f8 e8)] \bar "|"
  d4 d4 \bar "|"
  e2 f8( g8 f4) \bar "|"
  g2~ g4 b8\rest

  % cu taină închipuim, închipuim
  g8 \bar "|"
  a4( bes4) c4 d8([ es8)] \bar "|"
  d4( c4) bes4( a4) \bar "|"
  bes2 \breathe a4( c8[ bes8)] \bar "|"
  bes8( a4 bes8) g4( f4) \bar "|"
  g1~ \bar "|"
  g2. b4\rest \bar "|"

  % şi făcătoarei de viaţă
  g4.(^\mf a8)^\< bes4 c4 \bar "|"
  d4.(\! es8 d4 c4)^\> \bar "|"
  bes4.( c8\! bes4 a4) \bar "|"
  g4.( c8 bes4)^\< c4 \bar "|"
  d2 d2\! \bar "|"

  % şi făcătoarei de viaţă Treimi
  \accidentalStyle no-reset
  e4.(^\f f8) e4 f4 \bar "|"
  d2^\< d2 \bar "|"
  \accidentalStyle forget
  e4 f4\! \bar "|"
  g2.( a8[ g8] \bar "|"
  f2 e4 g8[ f8)] \bar "|"
  f8(^\> e4 f8) d4( c4) \bar "|"
  d2\! \breathe

  % întreit sfântă cântare, cântare aducem
  d4^\mf d4 \bar "|"
  g8.([ a16] g4) \bar "|"
  \acciaccatura g8 f8([ es8 d8 es)] c4 d8([ es)] \bar "|"
  d4( c4 bes8[ c8 bes8 a8]) \bar "|"
  g2~ g4. g8 \bar "|"
  d'4( c4 bes4 a4) \bar "|"
  bes2 a4( c8[ bes8)] \bar "|"
  bes8(^\> a4 bes8 g4 f4)\! \bar "|"
  g2. b4\rest \bar "|"

  % Toată, toată grija, grija lumească,
  d8.([ es16 d8 c8] bes8[ c8 d8 es)] \bar "|"
  d2 \breathe d8([ c8)] d8([ e8)] \bar "|"
  f4.( e8 g2 \bar "|"
  f4 e8[ d8]) d2 \bar "|"
  \accidentalStyle no-reset
  es4( f) es d \bar "|"
  d8( c4 d8) bes2 \bar "|"

  % grija lumească, acum grija lumească
  c4( d4) es4 d8([ es)] \bar "|"
  \tuplet 3/2 { f8[( es8 d8] } d8[ es8]) es4. f8 \bar "|"
  g4(^\< f4) es4( d4) \bar "|"
  es4 f4\! \bar "|"
  g8.([ as16 g8 f8] es8[ f8 g8 as8)] \bar "|"
  g2.

  % acum să o lepădăm, să o lepădăm, să o lepădăm,
  d4 \bar "|"
  g8([ a8] g4) f8([ es8 d8 es)]^\> \bar "|"
  c4( d8[ es8)] d4( c4)\! \bar "|"
  bes8.([ c16 bes8 a8] g8[ a8] g4) \bar "|"
  g2 \breathe g4^\mp g4 \bar "|"
  d'4( c4) bes4( a4) \bar "|"
  bes2 a4 c8([ bes8)] \bar "|"
  bes8( a4 bes8) g4( f4) \bar "|"
  g2. b4\rest \bar "|"

  % să o lepădăm, să o lepădăm.
  es8([^\p d16 es16 d8 es8]~ es8[ f8 es8 d8]) \bar "|"
  d8([ c16 d16 c8 d8]~ d8[ es8 d8 c8]) \bar "|"
  c8([ bes16 c16 bes8 c8]~ c8[ d8 c8 bes8]) \bar "|"
  bes8.([ c16 bes8 a8] g8[ a8] g4) \bar "|"
  g2 \breathe g4^\pp g4^\rallMarkup \bar "|"
  f4( g4) a8([ bes8] a4) \bar "|"
  g1^\fermata \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn

  % Noi care, care pe heruvimi, pe heruvimi
  g'4.( a8) bes4( c4
  bes4 a8[ bes8)] g2
  a4.( bes8 a4 bes4)
  g4 g4
  a4( bes4) a4( bes8[ a8)]
  g2 f4( a8[ g8)]
  g8( f4 g8) g4( f4)
  g2~ g4 b8\rest

  % cu taină, cu taină, cu taină închipuim
  g8
  bes4.( c8) bes4 a4
  g4.( a8 g4 f4)
  g2~ g4. g8
  a4( g4 f8[ g8 f8 e8)]
  d4 d4
  e2 f8( g8 f4)
  g2~ g4 b8\rest

  % cu taină închipuim, închipuim
  g8
  a4( bes4) a4 bes8([ c8)]
  bes4( a4) g4( f4)
  g2 f4( a8[ g8)]
  g8( f4 g8) g4( f4)
  \wholeNotesOverlap
  g1~
  g2. b4\rest

  % şi făcătoarei de viaţă
  g4.( a8) bes4 a4
  bes4.( c8 bes4 a4)
  g4.( a8 g4 f4)
  g2. a4
  bes2 bes2

  % şi făcătoarei de viaţă Treimi
  c2 c4 c4
  bes2 bes2
  c4 d4
  e2.( f8[ e8]
  d2 c4 e8[ d8)]
  d8( c4 d8) d4( a4)
  a2

  % întreit sfântă cântare, cântare aducem
  d4 d4
  d2
  d8([ c8 bes8 c8)] a4 bes8([ c8)]
  bes4( a4 bes8[ c8 bes8 a8])
  g2~ g4. g8
  bes4( a4 g4 a4)
  g2 f4( a8[ g8)]
  g8( f4 g8 g4 f4)
  g2. b4\rest

  % Toată, toată grija, grija lumească,
  bes8.([ c16 bes8 a8] bes8[ c8 d8 es)]
  d2 d8([ c8)] bes8([ c8)]
  d4.( c8 bes4. c8
  d4 c8[ bes8]) bes2
  c2 c4 bes4
  bes8( a4 bes8) bes2

  % grija lumească, acum grija lumească
  a4( bes4) c4 bes8([ c8)]
  \tuplet 3/2 { d8[( c8 bes8] } bes8[ c8]) c4. d8
  es4( d4) c4( bes4)
  c4 d4
  es8.([ f16 es8 d8] c8[ d8 es8 f8)]
  es2.

  % acum să o lepădăm, să o lepădăm, să o lepădăm,
  d4
  es8([ f8] es4) d8([ c8 bes8 c8)]
  a4( bes8[ c8)] bes4( a4)
  g4.( f8 g8[ a8] g4)
  g2 g4 g4
  bes4( a4) g4( a4)
  g2 f4 a8([ g8)]
  g8( f4 g8) g4( f4)
  g2. b4\rest

  % să o lepădăm, să o lepădăm.
  c8([ bes16 c16 bes8 c8]~ c8[ d8 c8 bes8])
  bes8([ a16 bes16 a8 bes8]~ bes8[ c8 bes8 a8])
  a8([ g16 a16 g8 a8]~ a8[ bes8 a8 g8])
  g4.( f8 g8[ a8] g4)
  g2 g4 g4
  f4( g4) f2
  \wholeNotesOverlap
  g1
}

tenorMusic = \relative c' {
  \accidentalStyle forget
  \cadenzaOn

  % Noi care, care pe heruvimi, pe heruvimi
  g4.(^\p a8) bes4( c4
  bes4 a8[ bes8)] g2
  f1
  g4 g4
  f2 f2
  g2 \breathe d2
  d2 d2
  g1~

  % cu taină, cu taină, cu taină închipuim
  g1~
  g1~
  g2~ g4. g8
  a4( g4 f8[ g8 f8 e8)]
  d4 d4
  c2 d2
  g2~ g4 d8\rest

  % cu taină închipuim, închipuim
  g8
  g2 f4 f4
  g2 g2
  g2 \breathe d2
  d2 d2
  d4 \breathe d4 es4 es4
  d2. d4\rest

  % şi făcătoarei de viaţă
  d1\rest
  g2 g4 g4
  g2 g2
  g2. f4
  bes2 bes2

  % şi făcătoarei de viaţă Treimi
  c2^\f c4 c4
  g2 g2~
  g2
  c4 c4 c2(
  g1)
  g2 d8([ e8] f4)
  d2

  % întreit sfântă cântare, cântare aducem
  d'4 c
  bes2
  g2 a4 g4
  f2( g2)
  g1~
  g4. g8 g4( f4)
  es4. g8 d2
  d4 d4 d2
  d2. d4\rest

  % Toată, toată grija, toată grija, grija lumească,
  bes'4.( f8 g8[ a8 bes8 c8)]
  bes2 bes4 bes4
  bes4( g4) g4.( a8)
  bes4 g4 g4 g4
  f2 f4 f4
  f2 bes2

  % grija lumească, acum grija lumească
  f2 f4 f4
  f2 f4. bes8
  bes2 a4( bes4)
  f4 bes4
  bes2~ bes2
  bes2.

  % acum să o lepădăm, să o lepădăm, să o lepădăm,
  bes4
  c2 g2
  f2 f2
  g4.( f8 g8[ a8] g4)
  g2 \breathe g4^\mp g4
  g2 g2
  g2 d4 d4
  d2 d2
  d2. d4\rest

  % să o lepădăm, să o lepădăm.
  g1^\p
  g1
  d1
  g4.( f8 g8[ a8] g4)
  g2 \breathe g4^\pp g4
  f4( es4) d2
  g1^\fermata
}

bassMusic = \relative c' {
  \accidentalStyle forget
  \cadenzaOn

  % Noi care, care pe heruvimi, pe heruvimi
  g4.( a8) bes4( c4
  bes4 a8[ bes8)] g2
  \wholeNotesOverlap
  f1
  g4 g4
  f2 f2
  g2 d2
  d2 g,8([ a8] bes4)
  g1~

  % cu taină, cu taină, cu taină închipuim
  g1~
  g1~
  g2~ g4. g'8
  a4( g4 f8[ g8 f8 e8)]
  d4 d4
  c2 d2
  g2~ g4 d8\rest

  % cu taină închipuim, închipuim
  g8
  g2 f4 f4
  g2 g2
  g2 d2
  d2 g,8([ a8] bes4)
  g4 g4 c4 c4
  g2. d'4\rest

  % şi făcătoarei de viaţă
  d1\rest
  g2 g4 g4
  g2 g2
  g2. f4
  bes2 bes2

  % şi făcătoarei de viaţă Treimi
  c2 c4 c4
  g2 g2~
  g2
  c4 c4 c2(
  \wholeNotesOverlap
  g1)
  g2 d8([ e8] f4)
  d2

  % întreit sfântă cântare, cântare aducem
  d2\rest
  g4 g4
  g2 a4 g4
  f2( g2)
  \wholeNotesOverlap
  g1~
  g4. g8 g4( f4)
  es4. g8 d2
  d4 d4 g,8([ a8] bes4)
  g2. d'4\rest

  % Toată, toată grija, toată grija, grija lumească,
  bes'4.( f8 g8[ a8 bes8 c8)]
  bes2 bes4 bes4
  bes4( g4) g4.( a8)
  bes4 g4 g4 g4
  f2 f4 f4
  f2 bes2

  % grija lumească, acum grija lumească
  f2 f4 f4
  f2 f4. bes8
  es,4( f4) f2
  f4 bes4
  es,2( f4)( d4)
  es2.

  % acum să o lepădăm, să o lepădăm, să o lepădăm,
  bes'4
  c2 g2
  f2 f2
  g4.( f8 g8[ a8] g4)
  g2 g4 g4
  g2 g2
  g2 d4 d4
  d2 g,8([ a8] bes4)
  g2. d'4\rest

  % să o lepădăm, să o lepădăm.
  g,1
  g1
  \wholeNotesOverlap
  d'1
  g4.( f8 g8[ a8] g4)
  g2 g4 g4
  f4( es4) d2
  g,1
}

\include "two-staves.ly"
