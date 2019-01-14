\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 8.0)
midiTempo = 
  \midi {
    \tempo 4 = 90
    }


\include "preamble.ly"

\header {
  title = "Tatăl nostru"
  subtitle = "glasul 5"
  composer = "de Anton Pann"
  meter = "Andantino"
}

ppAndFermataMarkup = \markup{
  \hspace #-5.0
  \musicglyph "p"
  \hspace #-1.0
  \musicglyph "p"
  \hspace #1.0
  \musicglyph "scripts.ufermata"
}

mixedTimeSigMarkup = \markup {
  \override #'(baseline-skip . 2) \number {
    \column { "2" "4" }
    \column { "3" "4" }
    \column { "4" "4" }
    \hspace #1.0
  }
}

global = {
  \globalPreamble
  \key e \minor
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #mixedTimeSigMarkup
}

sopWords = \lyricmode {
  Ta -- tăl no -- stru, Ca -- re -- le ești în ce -- ruri,
  sfin -- țea -- scă- -- se nu -- me -- le Tău,
  vi -- e îm -- pă -- ră -- ți -- a Ta,
  fa -- că- -- se vo -- ia Ta,
  pre -- cum în cer, în cer a -- șa și pre pă -- mânt. __

  Pâi -- nea noa -- stră cea __ spre fi -- in -- ță
  dă- -- ne- o no -- uă as -- tăzi __
  și ne iar -- tă no -- uă gre -- șa -- le -- le noa -- stre,
  pre -- cum și noi ier -- tăm __ gre -- și -- ți -- lor no -- ștri.

  Și nu ne du -- ce pre noi __ în is -- pi -- tă,
  ci ne iz -- bă -- veș -- te de cel vi -- clean. __
}

altoWords = \lyricmode {
  Ta -- tăl no -- stru, Ca -- re -- le ești în ce -- ruri,
  sfin -- țea -- scă- -- se nu -- me -- le Tău,
  vi -- e îm -- pă -- ră -- ți -- a Ta,
  fa -- că- -- se vo -- ia Ta,
  pre -- cum în cer, în cer a -- șa și pre pă -- mânt. __

  Pâi -- nea noa -- stră cea __ spre fi -- in -- ță
  dă- -- ne- o no -- uă as -- tăzi __
  și ne iar -- tă gre -- șa -- le -- le noa -- stre,
  pre -- cum și noi ier -- tăm __ gre -- și -- ți -- lor no -- ștri.

  Și nu ne du -- ce pre noi __ în is -- pi -- tă,
  ci ne iz -- bă -- veș -- te de cel vi -- clean. __
}

tenorWords = \lyricmode {
  Ta -- tăl no -- stru, Ca -- re -- le ești în ce -- ruri,
  sfin -- țea -- scă- -- se nu -- me -- le Tău,
  vi -- e îm -- pă -- ră -- ți -- a Ta,
  fa -- că- -- se vo -- ia Ta,
  pre -- cum în cer __ a -- șa și pre pă -- mânt. __

  Pâi -- nea noa -- stră cea spre fi -- in -- ță
  dă- -- ne- o no -- uă as -- tăzi
  și __ ne iar -- tă gre -- șa -- le -- le noa -- stre,
  pre -- cum și noi ier -- tăm gre -- și -- ți -- lor no -- ștri.

  Și nu ne du -- ce în is -- pi -- tă,
  ci ne iz -- bă -- veș -- te de cel vi -- clean. __
}

bassWords = \lyricmode {
  Ta -- tăl no -- stru, Ca -- re -- le ești în ce -- ruri,
  sfin -- țea -- scă- -- se nu -- me -- le Tău,
  vi -- e îm -- pă -- ră -- ți -- a Ta,
  fa -- că- -- se vo -- ia Ta,
  pre -- cum în cer, în cer a -- șa, __ a -- șa și pre pă -- mânt.

  Pâi -- nea noa -- stră cea __ spre fi -- in -- ță
  dă- -- ne- o no -- uă as -- tăzi __
  și ne iar -- tă gre -- șa -- le -- le noa -- stre,
  pre -- cum și noi ier -- tăm __ gre -- și -- ți -- lor no -- ștri. __

  Și nu ne du -- ce pre noi în is -- pi -- tă,
  ci ne iz -- bă -- veș -- te de cel vi -- clean. __
}

sopMusic = \relative c' {
  \cadenzaOn
  \accidentalStyle no-reset

  % Tatăl nostru, Carele ești în ceruri,
  g'2^\p^\accent fis4 \bar "|"
  g4^\accent e2 \bar "|"
  a2^\accent g4 fis4 \bar "|"
  g4 a4 \bar "|"
  b4.( cis8 d4^\> e4\!) \bar "|"
  b2. \breathe

  % Sfințească-se numele Tău, vie împărăția Ta,
  e4 \bar "|"
  d4( c4) b4^\> a4 \bar "|"
  g4( fis4) e4\! dis4 \bar "|"
  e2. r4 \bar "|"
  \accidentalStyle forget
  g2^\accent d4 d4 \bar "|"
  e4 fis4 g8([ a8)] fis4 \bar "|"
  g2 \bar "|"

  % facă-se voia Ta, precum în cer așa și pre pământ.
  a2^\accent g4^\< fis4 \bar "|"
  g4 a4\! b4. \breathe b8 \bar "|"
  e4 dis4 e4 b4 \bar "|"
  c4.^\fermata \breathe a8^\p \bar "|"
  g4 fis4 e4 dis4 \bar "|"
  e1~ \bar "|"
  e2. r4 \bar "|"

  % Pâinea noastră cea spre ființă dă-ne-o nouă astăzi
  g4 d4 \bar "|"
  e8([ fis8 g8 a8)] g2 \bar "|"
  a4( g8[ fis8)] g4 a8([ b8)] \bar "|"
  a4(^\< b4) b2\! \bar "|"
  c8.([^\accent d16] c4) b4^\> a4 \bar "|"
  g8([\! fis8)] e4 fis4( g4) \bar "|"
  e2~ e8 r8 r4 \bar "|"

  % și ne iartă nouă greșalele noastre,
  e4 e4 c'4^\< b4 \bar "|"
  c2\! a4 a4 \bar "|"
  d8([ e8] d4) c4^\> b4\! \bar "|"
  a4(^\< b8[ c8)] b4.\! \breathe

  % precum și noi iertăm greșiților noștri.
  b8^\accent \bar "|"
  e4 b4 c4 a4 \bar "|"
  b4( a4) g4 \bar "|"
  c4^\accent b4 a4^\> \bar "|"
  g4( fis8[\! g8)] e2 \bar "|"

  % Și nu ne duce pre noi în ispită,
  r4 r8 b8 e4^\accent fis4 \bar "|"
  g4( fis4) e4 dis4 \bar "|"
  e4( fis8[ g8)] fis4 e4^\> \bar "|"
  dis4(\!^\ritMarkup c8.[^\> b16)]\! b2^\ppAndFermataMarkup \bar "|"

  % ci ne izbăvește de cel viclean.
  \accidentalStyle no-reset
  a'4^\mf a4^\atempoMarkup b4^\< cis4 \bar "|"
  d4(\! c4 b4 a4) \bar "|"
  g4 fis4 \bar "|"
  e2 dis'4.( cis16[ dis16)] \bar "|"
  e2~^\> e4\!^\fermata r4 \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn
  \accidentalStyle forget

  % Tatăl nostru, Carele ești în ceruri,
  e2^\pp^\accent e4
  e4^\accent e2
  fis2^\accent g4 fis4
  e4 fis4
  g4.( a8 b4^\> c!4\!)
  b2. \breathe

  % Sfințească-se numele Tău, vie împărăția Ta,
  fis4
  fis2 g4^\> a4
  g4( fis4) e4\! dis4
  b2. r4
  g'2^\accent d4 d4
  e4 d4 b4 d4
  d2

  % facă-se voia Ta, precum în cer așa și pre pământ.
  dis2^\accent e4^\< fis4
  e4 e4\! fis4. \breathe b8
  g4 a4 g4 b4
  a4.^\fermata \breathe e8^\p
  e4 fis4 e4 dis4
  e1~
  e2. r4

  % Pâinea noastră cea spre ființă dă-ne-o nouă astăzi
  g4 d4
  e2 d2
  dis4( e8[ fis8)] e4 e4
  dis4(^\<
  \accidentalStyle no-reset
  fis8[ e8)] dis2\!
  \accidentalStyle forget
  dis2^\accent e4^\> e4
  dis4\!
  \accidentalStyle no-reset
  e4 fis4( e8[ dis8)]
  \accidentalStyle forget
  e2~ e8 r8 r4

  % și ne iartă nouă greșalele noastre,
  r2
  e4^\< e4
  a2\! a4 a4
  g2 fis4^\> g4\!
  a4(^\< g8[ fis8)] g4.\! \breathe

  % precum și noi iertăm greșiților noștri.
  e8
  e4^\accent g4 fis4 d!4
  d4( dis4) e4
  e4^\accent e4 e4^\>
  e4( dis4)\! b2

  % Și nu ne duce pre noi în ispită,
  r2 r4 r8 b8
  e4^\accent fis4 g4 fis8 fis8
  e4( dis8[ e8)] fis4 e4^\>
  dis4(\! c8.[^\> b16)]\! b2^\ppAndFermataMarkup

  % ci ne izbăvește de cel viclean.
  r2 g'8^\mf g8 a8 a8
  fis2( g4 fis4)
  d!4 fis4
  e2 b'4( a4)
  g2~^\> g4\!^\fermata r4
}

tenorMusic = \relative c' {
  \cadenzaOn
  \accidentalStyle forget

  % Tatăl nostru, Carele ești în ceruri,
  b2^\p^\accent a4
  b4^\accent g2
  c2^\accent c4 c4
  b4 d4
  d4.( cis8 d4^\> e4)\!
  b2. \breathe

  % Sfințească-se numele Tău, vie împărăția Ta,
  d4
  d2 d4^\> c4
  b2 b4\! a4
  g2. r4
  g2^\accent d4 d4
  c'4 a4 g4 a4
  b2

  % facă-se voia Ta, precum în cer așa și pre pământ.
  b2^\accent b4^\< b4
  b4 e4\! dis4. \breathe
  \accidentalStyle no-reset
  dis8
  \accidentalStyle forget
  e4 fis4 e2~
  e4.^\fermata \breathe c8^\p
  b4 b4 b4 a4
  g1~
  g2. r4

  % Pâinea noastră cea spre ființă dă-ne-o nouă astăzi
  g4 d4
  c'2 b2
  b2 b4 a4
  a4.(^\< g8) fis2\!
  fis2^\accent g4^\> a4
  b4\! b4 a2
  g2 \breathe

  % și ne iartă nouă greșalele noastre,
  e'2~
  e2. e4^\<
  <<
    {
      \voiceOne
      e2\! e4 e4
    }
    \new Voice = "split" {
      \voiceTwo
      e4.( d!8) c4 c4
    }
  >>
  \oneVoice
  d2 d4^\> d4\!
  d2^\< d4.\! \breathe

  % precum și noi iertăm greșiților noștri.
  b8
  b4^\accent d4 d4 c4
  b2 b4
  a4^\accent b4 c4^\>
  b4( a4)\! g4. \breathe

  % Și nu ne duce pre noi în ispită,
  b8
  b2.^\accent b4
  b2. b4
  b2. b4^\>
  b4(\! c8.[^\> b16)]\! b2^\ppAndFermataMarkup

  % ci ne izbăvește de cel viclean.
  \cadenzaOff
  R1
  \cadenzaOn
  \autoBeamOff
  d8^\mf d8 d8 d8 d4( c4)
  \autoBeamOn
  b4 c4
  b2 fis'2
  e2~^\> e4\!^\fermata r4
}

bassMusic = \relative c' {
  \cadenzaOn
  \accidentalStyle forget

  % Tatăl nostru, Carele ești în ceruri,
  e,2^\pp^\accent e4
  e4^\accent e2
  d!2^\accent d4 d4
  e4 d4
  g4.( a8 b4^\> c!4)\!
  b2. \breathe

  % Sfințească-se numele Tău, vie împărăția Ta,
  c4
  b4( a4) g4^\> fis4
  <<
    {
      \voiceOne
      b4(\! a4) g4 fis4
    }
    \new Voice = "split" {
      \voiceTwo
      b,2 b4 b4
    }
  >>
  \oneVoice
  e2. r4
  g2^\accent d4 d4
  c4 d4 e4 d4
  g2

  % facă-se voia Ta, precum în cer așa și pre pământ.
  fis2^\accent e4^\< dis4
  e4 c4\! b4. \breathe b'8
  b4 b4 c4 g4
  a4.^\fermata \breathe
  <<
    \new Voice = "split" {
      \voiceOne
      a8^\p
      b4 a4 g4 fis4
      e1~
      e2.
    }
    {
      \voiceTwo
      a,8
      b2( b4) r8 b8
      c4 c4 c4 b4
      <e e,>2.
    }
  >>
  \oneVoice
  r4

  % Pâinea noastră cea spre ființă dă-ne-o nouă astăzi
  g4 d4
  c2 g'2
  fis4( e8[ dis8)] e4 c4
  b2^\< b2\!
  a2^\accent g4^\> c4
  b4\! b4 b2
  e1~
  e2. r4

  % și ne iartă nouă greșalele noastre,
  e4^\< e4 a4\! a8 a8
  b2 a4^\> g4\!
  <<
    {
      \voiceOne
      fis4(^\< g8[ a8)] g4.\! \breathe g8
    }
    \new Voice = "split" {
      \voiceTwo
      d2 g4. g8
    }
  >>
  \oneVoice

  % precum și noi iertăm greșiților noștri.
  g4^\accent g4 a4 fis4
  g4( fis4) e4
  a4^\accent g4 a4^\>
  b4( b,4)\! e2~
  e1~
  e4 r8

  % Și nu ne duce pre noi în ispită,
  b8 e4^\accent fis4
  \autoBeamOff
  g4 fis8 e8 dis4 e8^\> e8
  \autoBeamOn
  dis4(\! c8.[^\> b16)]\! b2^\ppAndFermataMarkup

  % ci ne izbăvește de cel viclean.
  \cadenzaOff
  R1
  \cadenzaOn
  r2 d8^\mf d8 d8 d8
  g4 d8 dis8
  <<
    {
      \voiceOne
      g2 b2
      b2~^\> b4\!^\fermata
    }
    \new Voice = "split" {
      \voiceTwo
      e,2 b2
      e2~ e4
    }
  >>
  \oneVoice
  r4
}

\include "four-staves.ly"
