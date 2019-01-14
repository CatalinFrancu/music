\version "2.19.80"
\include "defines.ly"
#(define myStaffSpacing 1.5)
\include "preamble.ly"

\header {
  title = "Heruvic"
  composer = "D. Bortniansky"
  arranger = "Tradus de R. Balaban"
  meter = "Largo"
}

ppAndFermataMarkup = \markup{
  \hspace #-5.0
  \musicglyph "p"
  \hspace #-1.0
  \musicglyph "p"
  \hspace #1.0
  \musicglyph "scripts.ufermata"
}

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature.break-visibility = #begin-of-line-invisible
  \time 3/4
}

womenWords = \lyricmode {
  A -- min.
  Ca -- ri cu tai -- nă, cu tai -- nă,
  pe he -- ru -- vimi în -- chi -- pu -- im,
  pe he -- ru -- vimi __ în -- chi -- pu -- im.

  Și fă -- că -- toa -- rei de via -- ță Tre -- imi
  sfân -- tă cân -- ta -- re a -- du -- cem,
  sfân -- tă cân -- ta -- re-a -- du -- cem în -- tre -- it.

  Toa -- tă gri -- ja lu -- meas -- că
  s-o le -- pă -- dăm, s-o le -- pă -- dăm,
  gri -- ja lu -- meas -- că s-o le -- pă -- dăm.
}

menWords = \womenWords

sopMusic = \relative c' {
  % Amin
  \cadenzaOn
  a'2 a2 \bar "|."
  \cadenzaOff
  \time 3/4

  % Cari cu taină, cu taină
  a2.^\pp
  g2^\< g4
  f4 g4\! a4^\>
  bes2( a4)\!
  g2.^\fermata

  % Pe heruvimi închipuim,
  bes4^\< bes4 bes4\!
  a2 a4^\>
  bes2 bes4\!
  a2.^\fermata

  % Pe heruvimi închipuim.
  g4^\< g4 g4\!
  f4(^\ritMarkup g4)^\> a4
  g4( f4) e4\!
  f2.^\ppAndFermataMarkup \bar "|."

  % Și făcătoarei  de viață Treimi
  a4^\< a4 a4
  g4 g4 g4\!
  f4(^\> g4 a4)
  bes2 a4\!
  g2.

  % Sfântă cântare aducem,
  bes4 bes4 bes4
  a4 a4^\> a4
  bes2.
  a2.\!

  % Sfântă cântare+aducem întreit.
  g4^\< g4 g4
  f4\! g4 a4
  g4^\ritMarkup f4^\> e4
  f2.\!^\pp \bar "|."

  % Toată grija lumească
  a2.
  g2.
  f4 g4 a4
  bes2 (a4)
  g2.

  % S-o lepădăm, s-o lepădăm,
  bes4^\< bes4 bes
  a2\! a4
  bes2^\> bes4
  a2.\!

  % Grija lumească s-o lepădăm.
  g4^\< g4 g4\!
  f4^\ritMarkup g4 a4^\>
  g4( f4) e4\!
  f2.^\ppAndFermataMarkup \bar "|."
}

altoMusic = \relative c' {
  % Amin
  \cadenzaOn
  f2 f2
  \cadenzaOff
  \time 3/4

  % Cari cu taină, cu taină
  f2.
  e2 e4
  f4 e4 f4
  g2( f4)
  e2.

  % Pe heruvimi închipuim,
  g4 g4 g4
  f2 f4
  e2 e4
  f2.

  % Pe heruvimi închipuim.
  e4 e4 e4
  f4( e4) f4
  d4( c4) c4
  c2.

  % Și făcătoarei  de viață Treimi
  f4 f4 f4
  e4 e4 e4
  f4( e4 f4)
  g2 f4
  e2.

  % Sfântă cântare aducem,
  g4 g4 g4
  f4 f4 f4
  e2.
  f2.

  % Sfântă cântare+aducem întreit.
  e4 e4 e4
  f4 e4 f4
  d4 c4 c4
  c2.

  % Toată grija lumească
  f2.
  e2.
  f4 e4 f4
  g2( f4)
  e2.

  % S-o lepădăm, s-o lepădăm,
  g4 g4 g4
  f2 f4
  e2 e4
  f2.

  % Grija lumească s-o lepădăm.
  e4 e4 e4
  f4 e4 f4
  d4( c4) c4
  c2.
}

tenorMusic = \relative c' {
  % Amin
  \cadenzaOn
  c2 c2
  \cadenzaOff
  \time 3/4

  % Cari cu taină, cu taină
  c2.^\pp
  c2 c4
  c4 c4 c4
  c2.
  c2.^\fermata

  % Pe heruvimi închipuim,
  c4 c4 c4
  c2 c4
  c2 c4
  c2.^\fermata

  % Pe heruvimi închipuim.
  c4 c4 c4
  c2 c4
  bes4( a4) g4
  a2.^\ppAndFermataMarkup

  % Și făcătoarei  de viață Treimi
  c4 c4 c4
  c4 c4 c4
  c2.
  c2 c4
  c2.

  % Sfântă cântare aducem,
  c4 c4 c4
  c4 c4 c4
  c2.
  c2.

  % Sfântă cântare+aducem întreit.
  c4 c4 c4
  c4 c4 c4
  bes4 a4 g4
  a2.^\pp

  % Toată grija lumească
  c2.
  c2.
  c4 c4 c4
  c2.
  c2.

  % S-o lepădăm, s-o lepădăm,
  c4 c4 c4
  c2 c4
  c2 c4
  c2.

  % Grija lumească s-o lepădăm.
  c4 c4 c4
  c4 c4 c4
  bes4( a4) g4
  a2.^\ppAndFermataMarkup
}

bassMusic = \relative c' {
  % Amin
  \cadenzaOn
  f,2 f2
  \cadenzaOff
  \time 3/4

  % Cari cu taină, cu taină
  f2.
  c2 c4
  a'4 g4 f4
  e2( f4)
  c2.

  % Pe heruvimi închipuim,
  e4 e4 e4
  f2 f4
  g2 g4
  f2.

  % Pe heruvimi închipuim.
  <c' c,>4 <c c,>4 <bes bes,>4
  <a a,>4( <g g,>4) <f f,>4
  bes,4( c4) c4
  <f f,>2.

  % Și făcătoarei  de viață Treimi
  f4 f4 f4
  c4 c4 c4
  a'4( g4 f4)
  e2 f4
  c2.

  % Sfântă cântare aducem,
  e4 e4 e4
  f4 f4 f4
  g2.
  f2.

  % Sfântă cântare+aducem întreit.
  <c' c,>4 <c c,>4 <bes bes,>4
  <a a,>4 <g g,>4 <f f,>4
  bes,4 c4 c4
  <f f,>2.

  % Toată grija lumească
  f2.
  c2.
  a'4 g4 f4
  e2( f4)
  c2.

  % S-o lepădăm, s-o lepădăm,
  e4 e4 e4
  f2 f4
  g2 g4
  f2.

  % Grija lumească s-o lepădăm.
  <c' c,>4 <c c,>4 <bes bes,>4
  <a a,>4 <g g,>4 <f f,>4
  bes,4( c4) c4
  <f f,>2.
}

\include "two-staves.ly"
