\version "2.19.80"
\include "defines.ly"
midiTempo = 
  \midi {
    \tempo 4 = 156
    }


\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature.transparent = ##t
  \time 2/4
}

sopMusic = \relative c' {
  % Unule născut, Fiule şi Cuvântul lui Dumnezeu
  f4 e
  f g
  a( bes)
  c( bes)
  a g
  a bes
  c( d)
  c bes
  a bes
  c2

  % Cela ce eşti fără de moarte
  c
  g4 a
  bes a
  g f
  g(^\> a)
  f2\!

  % Şi ai primit pentru mântuirea noastră
  f4 e
  f^\< g\!
  a2
  f4 e
  f g
  a^\< bes\!
  c( bes)^\>
  a2\!

  % A Te întrupa din Sfânta Născătoare de Dumnezeu
  a4 g
  a bes
  c d
  es d
  c c
  c( d)
  c bes
  a bes
  c2~

  % Şi pururea Fecioara Maria
  c4 c
  d c
  bes a
  bes( a)
  g f
  g( a)
  f2

  % Carele neschimbat Te-ai întrupat
  bes^\accent
  a4 g
  a bes
  c bes
  a bes
  c2~

  % Şi răstignindu-Te Hristoase Dumnezeule
  c4 \breathe bes
  c d
  es d
  c^\> c\!
  d bes
  c d^\<
  e(\! f)
  e( d)^\>
  c2~\!

  % Cu moartea pe moarte ai călcat
  c4 \breathe c^\mf
  c2^\accent
  a4 a
  c^\accent bes
  a g
  f2

  % Unul fiind din Sfânta Treime
  bes
  a4 bes
  c bes
  a( g)
  a bes
  c( d)
  c2

  % Împreună mărit cu Tatăl şi cu Duhul Sfânt
  c4 d
  es( f)
  es d
  c d
  es d
  c bes
  a bes
  c2\fermata

  % Mântuieşte-ne pe noi, mântuieşte-ne pe noi
  c4 c
  d c
  bes^\> a
  g2\!
  g4^\p g^\rallMarkup
  f e
  d e
  f2\fermata
  \bar "|."
}

altoMusic = \relative c' {
  % Unule născut, Fiule şi Cuvântul lui Dumnezeu
  f4 e
  f g
  a( bes)
  a( g)
  f e
  f g
  a( bes)
  a g
  f g
  a2

  % Cela ce eşti fără de moarte
  a
  g4 f
  g f
  e f
  e2
  f

  % Şi ai primit pentru mântuirea noastră
  f4 e
  f g
  f2
  f4 e
  f g
  a bes
  a( g)
  f2

  % A Te întrupa din Sfânta Născătoare de Dumnezeu
  f4 e
  f g
  a bes
  c bes
  a a
  a( bes)
  a g
  f g
  a2~

  % Şi pururea Fecioara Maria
  a4 a
  bes a
  g f
  g( f)
  e f
  e2
  f

  % Carele neschimbat Te-ai întrupat
  bes
  a4 g
  f g
  a g
  f g
  a2~

  % Şi răstignindu-Te Hristoase Dumnezeule
  a4 g
  a bes
  c bes
  a a
  bes g
  c c
  c2
  c4( bes)
  a2~

  % Cu moartea pe moarte ai călcat
  a4 a
  a2
  f4 f
  a g
  f e
  f2

  % Unul fiind din Sfânta Treime
  bes
  a4 bes
  a g
  f( e)
  f g
  a( bes)
  a2

  % Împreună mărit cu Tatăl şi cu Duhul Sfânt
  a4 bes
  c2
  c4 bes
  a bes
  c bes
  a g
  f g
  a2\fermata

  % Mântuieşte-ne pe noi, mântuieşte-ne pe noi
  a4 a
  bes a
  g f
  g2
  g4 g
  f e
  d e
  f2\fermata
}

tenorMusic = \relative c' {
  % Unule născut, Fiule şi Cuvântul lui Dumnezeu
  f,4 e
  d c
  f2
  f4( g)
  f c
  f f
  f2
  f4 c
  f f
  f2

  % Cela ce eşti fără de moarte
  f
  e4 f
  c c
  c c
  c2^\>
  f\!

  % Şi ai primit pentru mântuirea noastră
  f4 e
  d^\< c\!
  f2
  f4 e
  d c
  f^\< g\!
  a( g)^\>
  f2\!

  % A Te întrupa din Sfânta Născătoare de Dumnezeu
  \oneVoice
  R2 * 9
  \voiceOne

  % Şi pururea Fecioara Maria
  d4\rest f
  bes a
  g f
  c2
  c4 c
  c2
  f

  % Carele neschimbat Te-ai întrupat
  bes^\accent
  a4 g
  f f
  f c
  f f
  f2~

  % Şi răstignindu-Te Hristoase Dumnezeule
  f4 d4\rest
  \oneVoice
  R2 * 8
  \voiceOne

  % Cu moartea pe moarte ai călcat
  d4\rest f^\mf
  f2^\accent
  f4 f
  a^\accent g
  f c
  f2

  % Unul fiind din Sfânta Treime
  bes
  a4 bes
  a g
  f( c)
  f f
  f2
  f2

  % Împreună mărit cu Tatăl şi cu Duhul Sfânt
  c'4 c
  c2
  a4 bes
  f f
  f f
  f c
  f f
  f2\fermata

  % Mântuieşte-ne pe noi, mântuieşte-ne pe noi
  f4 f
  bes a
  g^\> f
  g2\!
  g4^\p g
  f e
  d c
  f2\fermata
}

bassMusic = \relative c' {
  % Unule născut, Fiule şi Cuvântul lui Dumnezeu
  f,4 e
  d c
  f2
  f4( g)
  f c
  f f
  f2
  f4 c
  f f
  f2

  % Cela ce eşti fără de moarte
  f
  e4 f
  c c
  c c
  c2
  f

  % Şi ai primit pentru mântuirea noastră
  f4 e
  d c
  f2
  f4 e
  d c
  f g
  a( g)
  f2

  % A Te întrupa din Sfânta Născătoare de Dumnezeu
  s2 * 9

  % Şi pururea Fecioara Maria
  d4\rest f
  bes a
  g f
  c2
  c4 c
  c2
  f

  % Carele neschimbat Te-ai întrupat
  bes
  a4 g
  f f
  f c
  f f
  f2~

  % Şi răstignindu-Te Hristoase Dumnezeule
  f4 d4\rest
  s2 * 8

  % Cu moartea pe moarte ai călcat
  d4\rest f
  f2
  f4 f
  a g
  f c
  f2

  % Unul fiind din Sfânta Treime
  bes
  a4 bes
  a g
  f( c)
  f f
  f2
  f2

  % Împreună mărit cu Tatăl şi cu Duhul Sfânt
  c'4 c
  c2
  a4 bes
  f f
  f f
  f c
  f f
  f2\fermata

  % Mântuieşte-ne pe noi, mântuieşte-ne pe noi
  f4 f
  bes a
  g f
  g2
  g4 g
  f e
  d c
  <f f,>2\fermata
}

womenWords = \lyricmode {
  U -- nu -- le năs -- cut,
  Fi -- u -- le şi Cu -- vân -- tul lui Dum -- ne -- zeu,
  Ce -- la ce eşti fă -- ră de moar -- te

  şi ai pri -- i -- mit pen -- tru mân -- tu -- i -- rea noas -- tră
  a Te în -- tru -- pa
  din Sfân -- ta Năs -- că -- toa -- re de Dum -- ne -- zeu __
  şi pu -- ru -- rea Fe -- cioa -- ra Ma -- ri -- a;

  Ca -- re -- le ne -- schim -- bat Te-ai în -- tru -- pat __
  şi răs -- tig -- nin -- du- -- Te, Hris -- toa -- se
  Dum -- ne -- ze -- u -- le,
  cu moar -- tea pe moar -- te ai căl -- cat.

  U -- nul fi -- ind din Sfân -- ta Tre -- i -- me,
  îm -- pre -- u -- nă mă -- rit cu Ta -- tăl şi cu Du -- hul Sfânt,
  mân -- tu -- ieş -- te- -- ne pe noi,
  mân -- tu -- ieş -- te- -- ne pe noi.
}

menWords = \lyricmode {
  U -- nu -- le năs -- cut,
  Fi -- u -- le şi Cu -- vân -- tul lui Dum -- ne -- zeu,
  Ce -- la ce eşti fă -- ră de moar -- te

  şi ai pri -- i -- mit pen -- tru mân -- tu -- i -- rea noas -- tră
  % tenors and bases take five
  şi pu -- ru -- rea Fe -- cioa -- ra Ma -- ri -- a;

  Ca -- re -- le ne -- schim -- bat Te-ai în -- tru -- pat __
  % second coffee break
  cu moar -- tea pe moar -- te ai căl -- cat.

  U -- nul fi -- ind din Sfân -- ta Tre -- i -- me,
  îm -- pre -- u -- nă mă -- rit cu Ta -- tăl şi cu Du -- hul Sfânt,
  mân -- tu -- ieş -- te- -- ne pe noi,
  mân -- tu -- ieş -- te- -- ne pe noi.
}

\include "two-staves.ly"
