\version "2.19.80"
\include "defines.ly"
midiTempo = 
  \midi {
    \tempo 4 = 96
    }


\include "preamble.ly"

\header {
  title = "Îngerul a strigat"
  subtitle = "glasul 3"
  composer = "de Protosinghelul Varlaam"
  arranger = "Armonizat de N. Moldoveanu"
  meter = "Moderato"
}

mixedTimeSigMarkup = \markup {
  \override #'(baseline-skip . 2) \number {
    \column { "4" "4" }
    \column { "3" "4" }
    \column { "2" "4" }
    \hspace #1.0
  }
}

global = {
  \globalPreamble
  \key g \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #mixedTimeSigMarkup
}

womenWords = \lyricmode {
  În -- ge -- rul a stri -- gat că -- tre cea pli -- nă de da -- ruri,
  Cu -- ra -- tă Fe -- cioa -- ră: __ Bu -- cu -- ră- -- te!
  Și ia -- ră zic, bu -- cu -- ră- -- te, că Fi -- ul tău
  a în -- vi -- at __ a tre -- ia __ zi __ din __ mor -- mânt
  și pe morți i-a ri -- di -- cat. __
  Ve -- se -- li -- ți -- vă __ po -- poa -- re -- lor, __
  po -- poa -- re -- lor.
  Lu -- mi -- nea -- ză- -- te, lu -- mi -- nea -- ză- -- te
  no -- u -- le I -- e -- ru -- sa -- li -- me
  că __ sla -- va Dom -- nu -- lui __  pes -- te ti -- ne __
  a __ ră -- să -- rit.
  Sal -- tă __ a -- cum __ și te bu -- cu -- ră Si -- oa -- ne
  iar __ tu __ cu -- ra -- tă __ Năs -- că -- toa -- re __ de __
  Dum -- ne -- zeu
  ve -- se -- leș -- te- -- te în -- tru în -- vi -- e -- rea
  ce -- lui __ năs -- cut, __ năs -- cut __ al tău. __
}

menWords = \lyricmode {
  În -- ge -- rul a stri -- gat __
  Cu -- ra -- tă Fe -- cioa -- ră: __ Bu -- cu -- ră- -- te!
  Și ia -- ră zic, bu -- cu -- ră- -- te, că Fi -- ul tău
  a în -- vi -- at __ a tre -- ia __ zi __ din mor -- mânt
  și pe morți i-a ri -- di -- cat. __
  Ve -- se -- li -- ți -- vă po -- poa -- re -- lor, __
  po -- poa -- re -- lor.
  Lu -- mi -- nea -- ză- -- te, lu -- mi -- nea -- ză- -- te
  no -- u -- le I -- e -- ru -- sa -- li -- me
  că sla -- va Dom -- nu -- lui pes -- te ti -- ne __
  a __ ră -- să -- rit.
  Sal -- tă a -- cum și te bu -- cu -- ră Si -- oa -- ne
  iar __ tu cu -- ra -- tă Năs -- că -- toa -- re __ de __
  Dum -- ne -- zeu
  ve -- se -- leș -- te- -- te în -- tru în -- vi -- e -- rea
  ce -- lui năs -- cut, __ năs -- cut al tău, __ al tău.
}

sopMusic = \relative c' {
  \cadenzaOn
  \autoBeamOff
  \accidentalStyle forget

  % Îngerul a strigat către cea plină de daruri Curată Fecioră: Bucură-te!
  b'4(^\p a8[ b8)] g4 g4 \bar "|"
  b4 c4 \bar "|"
  d2^\< d4 d4 \bar "|"
  e4 d8([ c8)] b4 c4 \bar "|"
  \break
  d2 d4 d4\! \bar "|"
  e8([ d8 c8 d8)] b4 b4 \bar "|"
  b8([ d8] c2) \bar "|"
  a8([ c8] b2) \bar "|"
  g8([ b8 a8 g8)] fis4( a8) a8 \bar "|"
  \break
  g4.

  % Și iară zic, bucură-te, că Fiul tău a înviat a treia zi din mormânt
  g8 \bar "|"
  b4( a8[ b8)] g4 g4 \bar "|"
  c4( d4 e4) d8 c8 \bar "|"
  b4 c4 d8([ e8)] c4 \bar "|"
  d4.^\< d8 d4 d4\! \bar "|"
  \break
  e8([ d8 c8 d8)]^\> b2 \bar "|"
  b8([\! d8] c2) \bar "|"
  a8([ c8] b2) \bar "|"
  g8([ b8 a8 g8)] fis4( a8) a8 \bar "|"
  g2

  % Și pe morți i-a ridicat. Veseliți-vă popoarelor, popoarelor.
  g4 g4 \bar "|"
  \break
  b4 g4 c4 d4 \bar "|"
  e4(^\< d8[ cis8] d2) \bar "|"
  d4 d8([ g8)]\! \bar "|"
  g4.(^\> f8 e4) c4 \bar "|"
  d8([ f8] e2)\! \bar "|"
  \break
  c8([ e8] d2) \bar "|"
  b8([ d8] c2) \bar "|"
  a8([ c8] b2) \bar "|"
  g8([ b8 a8)] g8 \bar "|"
  fis4( a8) a8 g2 \bar "|"

  % Luminează-te, luminează-te noule Ierusalime
  g4 g4 \bar "|"
  \break
  b8([ c8] b4) g4 g4 \bar "|"
  c4^\< d4\! \bar "|"
  e8([ d8 c8 d8)]^\> b4 c4\! \bar "|"
  d8([ e8)] c4 d2 \bar "|"
  d8 d8 d8 d8 \bar "|"
  \break
  d2 a2 \bar "|"

  % că slava Domnului peste tine a răsărit.
  b4( g4) \bar "|"
  d'4.( c8 b4) g4 \bar "|"
  c4(^\< d4 e4) d8([ c8)]\! \bar "|"
  b4(^\> c4 d2)\! \bar "|"
  b4 b4 \bar "|"
  \break
  b8([ d8] c2) \bar "|"
  a8([ c8] b2) \bar "|"
  g8([ b8 a8 g8)] \bar "|"
  fis4( a8) a8 g2 \bar "|"

  % Saltă acum și te bucură Sioane iar tu Curată Născătoare de Dumnezeu
  \override Staff.TimeSignature.text = ""
  d'8([^\f c8 b8 e8] d8[ c8 b8 c8)] \bar "|"
  \break
  a8([ b8)] g4 \bar "|"
  c4(^\< d4 e4 d8[ c8)]\! \bar "|"
  b4 c4 \bar "|"
  d4^\> a8([ d8)] d4 cis4\! \bar "|"
  d2 a2 \bar "|"
  \break
  b4( g4) \bar "|"
  d'4.( c!8 b4) g4 \bar "|"
  c4(^\< d4 e4 d8[ c8)]\! \bar "|"
  b4(^\> c4 d2)\! \bar "|"
  b4 b4 \bar "|"
  b8([ d8] c2) \bar "|"
  \break
  a8([ c8] b2) \bar "|"
  g8([ b8 a8 g8)] \bar "|"
  fis4( a8) a8 g2 \bar "|"

  % veselește-te întru învierea celui născut al tău.
  b4^\< c4\! \bar "|"
  d8([ c8 b8 e8)] d8([ c8 b8 c8)] \bar "|"
  \break
  a2^\> b4 g4\! \bar "|"
  d'4^\< d8([ g8)]\! \bar "|"
  g4.( f8 e4)^\> c4 \bar "|"
  d8([\! f8] e2) \bar "|"
  c8([ e8] d2) \bar "|"
  b8([ d8] c2) \bar "|"
  \break
  a8([ c8] b2) \bar "|"
  g8([ b8 a8 g8)] fis4( a8) a8 \bar "|"
  g8([^\< a8 b8 c8] d8[ g,8]\! \bar "|"
  a4.^\> b8 g2)\!^\fermata \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn
  \autoBeamOff
  \accidentalStyle forget

  % Îngerul a strigat către cea plină de daruri Curată Fecioră: Bucură-te!
  b'4( a8[ b8)] g4 g4
  g4 a4
  b2 b4 b4
  c4 b8([ a8)] g4 a4
  b2 b4 b4
  c8([ b8 a8 b8)] g4 g4
  g8([ b8] a2)
  fis8([ a8] g2)
  g8([ b8 a8 g8)] fis4~ fis8 fis8
  g4.

  % Și iară zic, bucură-te, că Fiul tău a înviat a treia zi din mormânt
  g8
  b4( a8[ b8)] g4 g4
  c4( b4 c4) b8 a8
  g4 a4 b8([ c8)] a4
  b4. b8 b4 b4
  c8([ b8 a8 b8)] g2
  g8([ b8] a2)
  fis8([ a8] g2)
  g8([ b8 a8 g8)] fis4~ fis8 fis8
  g2

  % Și pe morți i-a ridicat. Veseliți-vă popoarelor, popoarelor.
  g4 g4
  b4 g4 c4 b4
  c4( b8[ a8] b2)
  b4 b8([ d8)]
  d2( c!4) c4
  b8([ d8] c2)
  a8([ c8] b2)
  g8([ b8] a2)
  fis8([ a8] g2)
  g8([ b8 a8)] g8
  fis4~ fis8 fis8 g2

  % Luminează-te, luminează-te noule Ierusalime
  g4 g4
  b8([ c8] b4) g4 g4
  c4 b4
  c8([ b8 a8 b8)] g4 a4
  b8([ c8)] a4 b2
  b8 b8 b8 b8
  b2 a2

  % că slava Domnului peste tine a răsărit.
  b4( g4)
  b4.( a8 g4) g4
  c4( b4 c4) b8([ a8)]
  g4( a4 b2)
  g4 g4
  g8([ b8] a2)
  fis8([ a8] g2)
  g8([ b8 a8 g8)]
  fis4~ fis8 fis8 g2

  % Saltă acum și te bucură Sioane iar tu Curată Născătoare de Dumnezeu
  b8([ a8 g8 c8] b8[ a8 g8 a8)]
  fis8([ g8)] g4
  c4( b4 c4 b8[ a8)]
  g4 a4
  b4 a8([ b8)] b4 a4
  b2 a2
  b4( g4)
  b4.( a8 g4) g4
  c4( b4 c4 b8[ a8)]
  g4( a4 b2)
  g4 g4
  g8([ b8] a2)
  fis8([ a8] g2)
  g8([ b8 a8 g8)]
  fis4~ fis8 fis8 g2

  % veselește-te întru învierea celui născut al tău.
  g4 a4
  b8([ a8 g8 c8)] b8([ a8 g8 a8)]
  fis2 g4 g4
  b4 b8([ d8)]
  d2( c4) c4
  b8([ d8] c2)
  a8([ c8] b2)
  g8([ b8] a2)
  fis8([ a8] g2)
  g8([ b8 a8 g8)] fis4~ fis8 fis8
  g8([ fis8 g8 a8] b8[ g8]
  fis4. g8 g2)
}

tenorMusic = \relative c' {
  \cadenzaOn
  \autoBeamOff
  \accidentalStyle forget

  % Îngerul a strigat către cea plină de daruri Curată Fecioră: Bucură-te!
  b4(^\p a8[ b8)] g4 g4
  g4 g4
  g1~^\<
  g1~
  g2. g4\!
  c8([ b8 a8 b8)] g4 g4
  g4( a2)
  d,4( g2)
  g8([ b8 a8 g8)] d4. d8
  g4.

  % Și iară zic, bucură-te, că Fiul tău a înviat a treia zi din mormânt
  g8
  b4( a8[ b8)] g4 g4
  c4( b4 a4) d,8 d8
  g4 g4 g4 d4
  g4.^\< g8 g4 g4\!
  c8([ b8 a8 b8)]^\> g2
  g4(\! a2)
  d,4( g2)
  g8([ b8 a8 g8)] d4. d8
  g2

  % Și pe morți i-a ridicat. Veseliți-vă popoarelor, popoarelor.
  g4 g4
  b4 g4 a4 b4
  c4(^\< b8[ a8] g2)
  g4 g4\!
  b2(^\> c4) a4
  g2.\!
  g2.
  g4( a2)
  d,4( g2)
  g8([ b8 a8)] g8
  d4. d8 g2

  % Luminează-te, luminează-te noule Ierusalime
  g4 g4
  b8([ c8] b4) g4 g4
  c4 b8([ a8)]
  g2 g4 g4
  g4 g4 g2
  g8 g8 g8 g8
  g2 a2

  % că slava Domnului peste tine a răsărit.
  g2
  g2. g4
  c4(^\< b4 a4) d,4\!
  g1^\>
  g4\! g4
  g4( a2)
  d,4( g2)
  g8([ b8 a8 g8)]
  d4. d8 g2

  % Saltă acum și te bucură Sioane iar tu Curată Născătoare de Dumnezeu
  \cadenzaOff
  \override Staff.TimeSignature.text = ""
  \time 4/4
  R1
  \time 2/4
  R2
  \cadenzaOn
  c4(^\< b4) a4 d,4\!
  g4 g8 g8
  g4^\> g4 g4 g4\!
  g2 a2
  b4( g4)
  g2. g4
  c4( b4 a4 fis4)
  g1
  g4 g4
  g4( a2)
  d,4( g2)
  g8([ b8 a8 g8)]
  d4. d8 g2

  % veselește-te întru învierea celui născut al tău.
  \cadenzaOff
  R2
  \cadenzaOn
  g4 g4 g4 g4
  d2^\> g4 g4\!
  g4^\< g4\!
  b2( c4)^\> a4
  g2.\!
  g2.
  g4( a2)
  d,4( g2)
  g8([ b8 a8 g8)] d4. d8
  g8([^\< fis8 e8 d8] g4)\!
  d2^\> g2\!^\fermata
}

bassMusic = \relative c' {
  \cadenzaOn
  \autoBeamOff
  \accidentalStyle forget

  % Îngerul a strigat către cea plină de daruri Curată Fecioră: Bucură-te!
  b4( a8[ b8)] g4 g4
  g4 g4
  \wholeNotesOverlap
  g1~
  \wholeNotesOverlap
  g1~
  g2. g4
  c8([ b8 a8 b8)] g4 g4
  g4( a2)
  d,4( g2)
  g8([ b8 a8 g8)] d4. d8
  g4.

  % Și iară zic, bucură-te, că Fiul tău a înviat a treia zi din mormânt
  g8
  b4( a8[ b8)] g4 g4
  c4( b4 a4) d,8 d8
  g4 g4 g4 d4
  g4. g8 g4 g4
  c8([ b8 a8 b8)] g2
  g4( a2)
  d,4( g2)
  g8([ b8 a8 g8)] d4. d8
  g2

  % Și pe morți i-a ridicat. Veseliți-vă popoarelor, popoarelor.
  g4 g4
  b4 g4 a4 b4
  c4( b8[ a8] g2)
  g4 g4
  g2( c4) a4
  g2.
  g2.
  g4( a2)
  d,4( g2)
  g8([ b8 a8)] g8
  d4. d8 g2

  % Luminează-te, luminează-te noule Ierusalime
  g4 g4
  b8([ c8] b4) g4 g4
  c4 b8([ a8)]
  g2 g4 g4
  g4 g4 g2
  g8 g8 g8 g8
  g2 a2

  % că slava Domnului peste tine a răsărit.
  g2
  g2. g4
  c4( b4 a4) d,4
  \wholeNotesOverlap
  g1
  g4 g4
  g4( a2)
  d,4( g2)
  g8([ b8 a8 g8)]
  d4. d8 g2

  % Saltă acum și te bucură Sioane iar tu Curată Născătoare de Dumnezeu
  s1
  s2
  c4( b4) a4 d,4
  g4 g8 g8
  g4 g4 g4 g4
  g2 a2
  b4( g4)
  g2. g4
  c4( b4 a4 d,4)
  \wholeNotesOverlap
  g1
  g4 g4
  g4( a2)
  d,4( g2)
  g8([ b8 a8 g8)]
  d4. d8 g2

  % veselește-te întru învierea celui născut al tău.
  s2
  g4 g4 g4 g4
  d2 g4 g4
  g4 g4
  g2( c4) a4
  g2.
  g2.
  g4( a2)
  d,4( g2)
  g8([ b8 a8 g8)] d4. d8
  g8([ fis8 e8 d8] g4)
  d2 <g g,>2
}

\include "two-staves.ly"
