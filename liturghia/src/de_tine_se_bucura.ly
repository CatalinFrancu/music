\version "2.10.10"
\include "defines.ly"
#(define myNoteSpacing 6.0)
midiTempo = 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }


\include "preamble.ly"

\header {
  title = "De tine se bucură"
  subtitle = "glasul 5"
  composer = "de N. Moldoveanu"
  meter = "Andante"
}

global = {
  \globalPreamble
  \key d \minor
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = #mixedTimeSigMarkup
}

womenWords = \lyricmode {
  De ti -- ne se bu -- cu -- ră,
  ce -- ea ce eşti pli -- nă de dar,
  toa -- tă făp -- tu -- ra:
  so -- bo -- rul __ în -- ge -- resc
  şi nea -- mul __ o -- me -- nesc;

  ce -- ea ce __ eşti Bi -- se -- ri -- că sfin -- ţi -- tă
  şi rai cu -- vân -- tă -- tor,
  la -- u -- da __ fe -- cio -- ri -- ei
  din ca -- re Dum -- ne -- zeu S-a __ în -- tru -- pat
  şi prunc __ s-a fă -- cut,
  Cel ce es -- te mai 'na -- in -- te de veci,
  Dum -- ne -- ze -- ul __ nos -- tru,

  că pân -- te -- ce -- le __ tău mai des -- fă -- tat de -- cât ce -- ru --
  ri -- le __ l-a __ lu -- crat.

  De ti -- ne se bu -- cu -- ră,
  ce -- ea ce eşti pli -- nă de dar,
  toa -- tă făp -- tu -- ra.

  Mă -- ri -- re __ ţi -- e,
  mă -- ri -- re ţi -- e.
}

menWords = \lyricmode {
  De ti -- ne se bu -- cu -- ră,
  ce -- ea ce eşti pli -- nă de dar,
  toa -- tă făp -- tu -- ra:
  so -- bo -- rul în -- ge -- resc
  şi nea -- mul __ o -- me -- nesc;

  ce -- ea ce eşti Bi -- se -- ri -- că sfin -- ţi -- tă
  şi rai cu -- vân -- tă -- tor,
  la -- u -- da __ fe -- cio -- ri -- ei
  din ca -- re Dum -- ne -- zeu S-a __ în -- tru -- pat
  şi prunc __ s-a fă -- cut,
  Cel ce es -- te mai 'na -- in -- te de veci,
  Dum -- ne -- ze -- ul __ nos -- tru,

  că pân -- te -- ce -- le tău mai des -- fă -- tat de -- cât ce -- ru --
  ri -- le l-a lu -- crat.

  De ti -- ne se bu -- cu -- ră,
  ce -- ea ce eşti pli -- nă de dar,
  toa -- tă făp -- tu -- ra.

  Mă -- ri -- re __ ţi -- e,
  mă -- ri -- re ţi -- e.
}

sopMusic = \relative {
  \cadenzaOn
  #(set-accidental-style 'forget)

  % De tine se bucură, ceea ce eşti plină de dar, toată făptura:
  d4^\p \bar "|"
  f4(^\accent e4) \bar "|"
  f4 g4 \bar "|"
  a8([ g8] f4) g4( a4) \bar "|"
  a2 \bar "|"
  bes4 a4 g4 a4 \bar "|"
  bes4( c4) bes4 a4 \bar "|"
  g2 \bar "|"
  a4( g4) f4 g4 \bar "|"
  f8.([ g16 f8 e8] d8[ e8] d4) \bar "|"
  d2. bes'8\rest

  % soborul îngeresc şi neamul omenesc;
  a8^\< \bar "|"
  d2\! c4( d4) \bar "|"
  c8.([ d16 c8 bes8)]^\> a8([ bes8] a4)\! \bar "|"
  a4. d,8 \bar "|"
  a'4( g4) f4( g4) \bar "|"
  f8.([ g16 f8 e8)] d8([ e8] d4) \bar "|"
  d2 \bar "|"

  % ceea ce eşti biserică sfinţită şi rai cuvântător
  g8([ a8] g4) f2 \bar "|"
  g8([ a8] g4) a4. a8 \bar "|"
  c4 bes4 a2 \bar "|"
  g4( a4) \bar "|"
  a8([ bes16 c16] bes8[ a8]) a4. a8 \bar "|"
  bes4 a4 g4 fis4 \bar "|"
  g2 \bar "|"

  % lauda fecioriei din care Dumnezeu S-a întrupat şi prunc s-a făcut
  a4( g4) f8([ e8)] d8([ e8)] \bar "|"
  f4 g4 \bar "|"
  a8.([ bes16 a8 f8] g4 a4) \bar "|"
  a4. a8 bes8([ a8)] g4 fis4 g4 \bar "|"
  g2 fis4( g4) \bar "|"
  fis8.([ g16 fis8 es8)] d8([ es8] d4) \bar "|"
  d2. d4 \bar "|"
  f!4( e!4) f2 \bar "|"
  g8([ a8] g4) a2 \bar "|"

  % Cel ce este mai 'nainte de veci, Dumnezeul nostru,
  a4 b4^\< \bar "|"
  c4 a4 b4 c4\! \bar "|"
  d8([ e8] d4) c4^\> bes4 \bar "|"
  a2 g4\! a4 \bar "|"
  bes8([ a8] g4) f4( g4) \bar "|"
  f8.([ g16 f8 e8] d8[ e8] d4) \bar "|"
  d2.

  % că pântecele tău mai desfătat decât cerurile l-a lucrat.
  d4^\p \bar "|"
  a'4 g4 \bar "|"
  f2 g8([ a8] g4) \bar "|"
  a4. a8 \bar "|"
  b4 c4 \bar "|"
  d2^\< d4 d4\! \bar "|"
  f4^\accent e4^\> \bar "|"
  d2 c4(\! d4) \bar "|"
  c8.([ d16 c8 bes8)] a8([ bes8] a4) \bar "|"
  a2. \breathe

  % De tine se bucură, ceea ce eşti plină de dar, toată făptura.
  d,4 \bar "|"
  f4( e4) \bar "|"
  f4 g4 \bar "|"
  a8([ g8] f4) g4( a4) \bar "|"
  a2 \bar "|"
  bes4 a4 g4 a4 \bar "|"
  bes4( c4) bes4 a4 \bar "|"
  g2 \bar "|"
  a4( g4) f4 g4 \bar "|"
  f8.([ g16 f8 e8] d8[ e8] d4) \bar "|"
  d2. bes'8\rest

  % Mărire ţie, mărire ţie.
  d,8 \bar "|"
  a'2 \bar "|"
  f4( g4 a4 c4) \bar "|"
  bes4( a4 g4 fis4) \bar "|"
  g4.^\fermata a8^\rallMarkup a4 a4 \bar "|"
  d1 \bar "|"
  d2.^\fermata bes4\rest \bar "|."
}

altoMusic = \relative {
  \cadenzaOn
  #(set-accidental-style 'forget)

  % De tine se bucură, ceea ce eşti plină de dar, toată făptura:
  d4
  f4( e4)
  d4 e4
  f8([ e8] d4) e4( f4)
  f2
  g4 f4 e4 f4
  g4( a4) g4 f4
  e2
  f4( e4) d4 e4
  f8.([ g16 f8 e8] d8[ e8] d4)
  d2. bes'8\rest

  % soborul îngeresc şi neamul omenesc;
  f8
  bes2 a2
  a4.( g8) f8([ g8] f4)
  f4. d8
  f4( e4) d4( e4)
  f8.([ g16 f8 e8)] d8([ e8] d4)
  d2

  % ceea ce eşti biserică sfinţită şi rai cuvântător
  g8([ a8] g4) f2
  e8([ f8] e4) f4. f8
  a4 g4 f2
  e4( f4)
  a8([ bes16 c16] bes8[ a8]) f4. f8
  g4 fis4 g4 fis4
  g2

  % lauda fecioriei din care Dumnezeu S-a întrupat şi prunc s-a făcut
  a4( g4) f8([ e8)] d8([ e8)]
  f4 e4
  f2( e4 f4)
  f4. f8 bes8([ a8)] g4 fis4 g4
  g2 fis4( g4)
  fis8.([ g16 fis8 es8)] d8([ es8] d4)
  d2. d4
  f4( e4) f2
  e8([ f8] e4) f2

  % Cel ce este mai 'nainte de veci, Dumnezeul nostru,
  f4 g4
  a4 f4 g4 a4
  bes2 a4 g4
  f2 e4 f4
  g8([ f8] e4) d4( e4)
  f8.([ g16 f8 e8] d8[ e8] d4)
  d2.

  % că pântecele tău mai desfătat decât cerurile l-a lucrat.
  d4
  f4 e4
  d2 e8([ f8] e4)
  f4. f8
  g4 a4
  a2 a4 a4
  d4 c8([ bes8)]
  a2 a2
  a4.( g8) f8([ g8] f4)
  f2.

  % De tine se bucură, ceea ce eşti plină de dar, toată făptura.
  d4
  f4( e4)
  d4 e4
  f8([ g8] f4) e4( f4)
  f2
  g4 f4 e4 f4
  g4( a4) g4 f4
  e2
  f4( e4) d4 e4
  f8.([ g16 f8 e8] d8[ e8] d4)
  d2. bes'8\rest

  % Mărire ţie, mărire ţie.
  d,8
  f2
  d4( e4 f4 a4)
  g4( fis4 g4 fis4)
  g4. a8 f4 e4
  f4( g4 a2)
  a2. bes4\rest
}

tenorMusic = \relative {
  \cadenzaOn
  #(set-accidental-style 'forget)

  % De tine se bucură, ceea ce eşti plină de dar, toată făptura:
  d,4^\p
  f4(^\accent e4)
  d4 e4
  f8([ e8] d4) c4( f4)
  f2
  e4 f4 c4 c4
  c2 c4 c4
  c2
  f4( e4) d4 c4
  f8.([ g16 f8 e8] d8[ e8] d4)
  d2. d8\rest

  % soborul îngeresc şi neamul omenesc;
  d8^\<
  bes'2\! a2
  a4.( g8)^\> f8([ g8] f4)\!
  f4. d8
  d4( e4) d4( c4)
  f8.([ g16 f8 e8)] d8([ e8] d4)
  d2

  % ceea ce eşti biserică sfinţită şi rai cuvântător
  g8([ a8] g4) f2
  c2 f4. f8
  f4 c4 d2
  e4( f4)
  f2 f4. f8
  g4 d4 g4 fis4
  g2

  % lauda fecioriei din care Dumnezeu S-a întrupat şi prunc s-a făcut
  a4( g4) f8([ e8)] d8([ e8)]
  f4 c4
  f2( c4 f4)
  f4. f8 bes8([ a8)] g4 fis4 g4
  g2 fis4( g4)
  fis8.([ g16
  #(set-accidental-style 'no-reset)
  fis8
  #(set-accidental-style 'forget)
  es8)] d8([ es8] d4)
  d2. d4
  f!4( e!4) d2
  c2 f2

  % Cel ce este mai 'nainte de veci, Dumnezeul nostru,
  f4 f4^\<
  f4 f4 f4 f4\!
  bes2 f4^\> g4
  f2 c4\! c4
  c2 d4( e4)
  f8.([ g16 f8 e8] d8[ e8] d4)
  d2.

  % că pântecele tău mai desfătat decât cerurile l-a lucrat.
  d4^\p
  f4 e4
  d2 c2
  f4. f8
  e4 e4
  f2^\< f4 f4\!
  a4^\accent a8([^\> g8)]
  f2 d2\!
  d2 d2
  d2. \breathe

  % De tine se bucură, ceea ce eşti plină de dar, toată făptura.
  d4
  f4( e4)
  d4 c4
  f8([ e8] d4) c4( f4)
  f2
  e4 f4 c4 c4
  c2 c4 c4
  c2
  f4( e4) d4 c4
  f8.([ g16 f8 e8] d8[ e8] d4)
  d2. d8\rest

  % Mărire ţie, mărire ţie.
  d8
  d2
  d4( e4 f2)
  g4( d4 g4 fis4)
  g4.^\fermata a8 f4 e4
  d1
  d2.^\fermata d4\rest
}

bassMusic = \relative {
  \cadenzaOn
  #(set-accidental-style 'forget)

  % De tine se bucură, ceea ce eşti plină de dar, toată făptura:
  d,4
  f4( e4)
  d4 c4
  f8([ e8] d4) c4( f4)
  f2
  e4 f4 c4 c4
  c2 c4 c4
  c2
  f4( e4) d4 c4
  f8.([ g16 f8 e8] d8[ e8] d4)
  d2. d8\rest

  % soborul îngeresc şi neamul omenesc;
  d8
  bes'2 a2
  a4.( g8) f8([ g8] f4)
  f4. d8
  d4( e4) d4( c4)
  f8.([ g16 f8 e8)] d8([ e8] d4)
  d2

  % ceea ce eşti biserică sfinţită şi rai cuvântător
  g8([ a8] g4) f2
  c2 f4. f8
  f4 c4 d2
  e4( f4)
  f2 f4. f8
  g4 d4 g4 fis4
  g2

  % lauda fecioriei din care Dumnezeu S-a întrupat şi prunc s-a făcut
  a4( g4) f8([ e8)] d8([ e8)]
  f4 c4
  f2( c4 f4)
  f4. f8 bes8([ a8)] g4 fis4 g4
  g2 fis4( g4)
  fis8.([ g16
  #(set-accidental-style 'no-reset)
  fis8
  #(set-accidental-style 'forget)
  es8)] d8([ es8] d4)
  d2. d4
  f!4( e!4) d2
  c2 f2

  % Cel ce este mai 'nainte de veci, Dumnezeul nostru,
  f4 f4
  f4 f4 f4 f4
  bes2 f4 g4
  f2 c4 c4
  c2 d4( e4)
  f8.([ g16 f8 e8] d8[ e8] d4)
  d2.

  % că pântecele tău mai desfătat decât cerurile l-a lucrat.
  d4
  f4 e4
  d2 c2
  f4. f8
  e4 e4
  d2 d4 d4
  d4 a4
  d2 d2
  d2 d2
  d2.

  % De tine se bucură, ceea ce eşti plină de dar, toată făptura.
  d4
  f4( e4)
  d4 c4
  f8([ e8] d4) c4( f4)
  f2
  e4 f4 c4 c4
  c2 c4 c4
  c2
  f4( e4) d4 c4
  f8.([ g16 f8 e8] d8[ e8] d4)
  d2. d8\rest

  % Mărire ţie, mărire ţie.
  d8
  d2
  d4( e4 f2)
  g4( d4 g4 fis4)
  g4. a8 f4 e4
  \wholeNotesOverlap
  d1
  d2. d4\rest
}

\include "two-staves.ly"
