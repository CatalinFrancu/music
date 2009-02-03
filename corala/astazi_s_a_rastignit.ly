\version "2.10.13"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Astăzi S-a răstignit pe lemn"
  subtitle = "Denia celor douăsprezece Evanghelii"
  subsubtitle = "după Evanghelia a cincea"
  tagline = ""
}

global = {
  #(set-global-staff-size 17)
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = ""
  \set Staff.midiInstrument = "clarinet"
  \key g \minor
  \autoBeamOff
  \cadenzaOn
}

words = \lyricmode {
  As -- tăzi S-a răs -- tig -- nit pe lemn

  Cel "ce a susţinut pământul" pe a -- pe.

  Co -- roa -- "nă de spini a-ncununat Împăra" -- tul
  în -- ge -- ri -- lor.

  Cu por -- "firă min" -- ci -- noa -- să S-a-m -- bră -- cat

  Cel ce-am -- bră -- cat ce -- rul cu nori.

  Păl -- mu -- "ire a-ndurat Cel ce a slobozit în Ior" -- dan pe A -- dam.

  Cu "piroane S-a pironit Mirele" Bi -- se -- ri -- cii.

  Cu "suliţa S-a-mpuns Fi" -- ul Fe -- cioa -- rei.

  În -- "chinare Patimilor Tale," Hris -- toa -- se,
  în -- "chinare Patimilor Tale," Hris -- toa -- se,
  în -- "chinare Patimilor Tale," Hris -- toa -- se,
  A -- "rată-ne nouă slăvită În" -- vi -- e -- rea Ta!
}

sopMusic = \relative {
  \voiceOne
  % Astăzi S-a răstignit pe lemn
  g'4 g2 g4 g4 g4 fis2 fis4 g2
  \bar "||"

  % Cel ce a susţinut pământul pe ape.
  a4 a\breve^\< a4\! a2( bes2) a2.
  \bar "||"

  % Coroană de spini a-ncununat Împăratul îngerilor.
  a4^\mf bes4 bes\breve bes4 a2 a4 g4 fis2
  \bar "||"

  % Cu porfiră mincinoasă S-a-mbrăcat
  g4^\p g4 g\breve g4 fis!2 fis4 fis4 fis4 g2 \breathe
  \bar "||"

  % Cel ce a-mbrăcat cerul cu nori.
  a4^\< a4 a4\! a4 a2-> bes4 bes4 a1^\mf
  \bar "||"

  % Pălmuire a-ndurat Cel ce a slobozit în Iordan pe Adam.
  bes4 bes4 bes\breve^\> bes4\! bes4 a2( g4) fis2^\p
  \bar "||"

  % Cu piroane S-a pironit Mirele Bisericii.
  g4 g\breve g4 fis!2-> fis4 g2 \breathe
  \bar "||"

  % Cu suliţa S-a-mpuns Fiul Fecioarei.
  a4 a\breve a4^\< a4 a2( bes2) a1\!
  \bar "||"

  % Închinare Patimilor Tale, Hristoase,
  bes4^\mf bes\breve bes4^\> a2( g4) fis2\! \breathe
  \bar "||"

  % Închinare Patimilor Tale, Hristoase,
  g4 g\breve g4 fis!2 g2
  \bar "||"

  % Închinare Patimilor Tale, Hristoase,
  a4 a\breve a4 a2( g2) fis2
  \bar "||"

  % Arată-ne nouă slăvită Învierea Ta!
  g4 g\breve g4 g2 fis!2 g1^\fermata
  \bar "|."
}

altoMusic = \relative {
  \voiceTwo
  % Astăzi S-a răstignit pe lemn
  d4 d2 d4 d4 d4 d2 d4 d2

  % Cel ce a susţinut pământul pe ape.
  f!4 f\breve f4 f2( g2) fis2.

  % Coroană de spini a-ncununat Împăratul îngerilor.
  fis!4 f!4 f\breve f4 f2 f4 d4 d2

  % Cu porfiră mincinoasă S-a-mbrăcat
  d4 d4 d\breve d4 d2 d4 d4 d4 d2

  % Cel ce a-mbrăcat cerul cu nori.
  f!4 f4 f4 f4 f2 g4 g4 fis2( f2)

  % Pălmuire a-ndurat Cel ce a slobozit în Iordan pe Adam.
  f4 f4 f\breve f4 f4 f2( d4) d2

  % Cu piroane S-a pironit Mirele Bisericii.
  d4 d\breve d4 d2 d4 d2

  % Cu suliţa S-a-mpuns Fiul Fecioarei.
  f!4 f\breve f4 f4 f2( g2) fis2( f2)

  % Închinare Patimilor Tale, Hristoase,
  f4 f\breve f4 f2( d4) d2

  % Închinare Patimilor Tale, Hristoase,
  d4 d\breve d4 d2 d2

  % Închinare Patimilor Tale, Hristoase,
  f!4 f\breve f4 f2( d2) d2

  % Arată-ne nouă slăvită Învierea Ta!
  d4 d\breve d4 es2 d2 d1
}

tenorMusic = \relative {
  \voiceOne
  % Astăzi S-a răstignit pe lemn
  bes4 bes2 bes4 bes4 bes4 a2 a4 bes2

  % Cel ce a susţinut pământul pe ape.
  c4 c\breve^\< c4\! c2( d2) d2.

  % Coroană de spini a-ncununat Împăratul îngerilor.
  es4^\mf d4 d\breve d4 c2 c4 bes4 a2

  % Cu porfiră mincinoasă S-a-mbrăcat
  bes4^\p bes4 bes\breve bes4 a2 a4 a4 a4 bes2 \breathe

  % Cel ce a-mbrăcat cerul cu nori.
  c4^\< c4 c4\! c4 c2-> d4 d4 d2(^\mf es2)

  % Pălmuire a-ndurat Cel ce a slobozit în Iordan pe Adam.
  d4 d4 d\breve^\> d4\! d4 c2( bes4) a2^\p

  % Cu piroane S-a pironit Mirele Bisericii.
  bes4 bes\breve bes4 a2-> a4 bes2 \breathe

  % Cu suliţa S-a-mpuns Fiul Fecioarei.
  c4 c\breve c4^\< c4 c2( d2) d2(\! es2)

  % Închinare Patimilor Tale, Hristoase,
  d4^\mf d\breve d4^\> c2( bes4) a2\! \breathe

  % Închinare Patimilor Tale, Hristoase,
  bes4 bes\breve bes4 a2 bes2

  % Închinare Patimilor Tale, Hristoase,
  c4 c\breve c4 c2( bes2) a2

  % Arată-ne nouă slăvită Învierea Ta!
  bes4 bes\breve bes4 a2 a2 bes1^\fermata
}

bassMusic = \relative {
  \voiceTwo
  % Astăzi S-a răstignit pe lemn
  <g g,>4 <g g,>2 <g g,>4 <g g,>4 <g g,>4 d2 d4 <g g,>2

  % Cel ce a susţinut pământul pe ape.
  <f f,>4 <f f,>\breve <f f,>4 <a a,>2( <g g,>2) d2.

  % Coroană de spini a-ncununat Împăratul îngerilor.
  c4 bes4 bes\breve bes4 <f' f,>2 <f f,>4 <g g,>4 d2

  % Cu porfiră mincinoasă S-a-mbrăcat
  <g g,>4 <g g,>4 <g g,>\breve <g g,>4 d2 d4 d4 d4 <g g,>2

  % Cel ce a-mbrăcat cerul cu nori.
  <f f,>4 <f f,>4 <f f,>4 <f f,>4 <a a,>2 <g g,>4 <g g,>4 d2( c2)

  % Pălmuire a-ndurat Cel ce a slobozit în Iordan pe Adam.
  bes4 bes4 bes\breve bes4 bes4 <f' f,>2( <g g,>4) d2

  % Cu piroane S-a pironit Mirele Bisericii.
  <g g,>4 <g g,>\breve <g g,>4 d2 d4 <g g,>2

  % Cu suliţa S-a-mpuns Fiul Fecioarei.
  <f f,>4 <f f,>\breve <f f,>4 <f f,>4 <f f,>2( <g g,>2) d2( c2)

  % Închinare Patimilor Tale, Hristoase,
  bes4 bes\breve bes4 <f' f,>2( <g g,>4) d2

  % Închinare Patimilor Tale, Hristoase,
  <g g,>4 <g g,>\breve <g g,>4 d2 <g g,>2

  % Închinare Patimilor Tale, Hristoase,
  <f f,>4 <f f,>\breve <f f,>4 <f f,>2( <g g,>2) d2

  % Arată-ne nouă slăvită Învierea Ta!
  <g g,>4 <g g,>\breve <g g,>4 c,2 d2 <g g,>1
}

myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #6.0
} <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \global \sopMusic }
      \addlyrics { \words }
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
    \Score tempoWholesPerMinute = #(ly:make-moment 108 4)
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
