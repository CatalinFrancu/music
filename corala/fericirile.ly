\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0.7\in
  bottom-margin = 0.7\in
}

\header {
  title = "Fericirile"
  subtitle = "glasul 8"
  composer = "de N. Lungu"
  meter = "Moderato"
  tagline = ""
}

descrescendoMarkup = \markup{
  \italic \bold \larger "descrescendo"
}

mixedTimeSigMarkup = \markup {
  \override #'(baseline-skip . 2) \number {
    \column { "4" "4" }
    \column { "2" "4" }
    \hspace #1.0
  }
}

prepareBox = {
  % The box-padding property is documented, but causes warnings
  % \once \override TextScript.box-padding = #0.4
  \once \override TextScript.font-size = #4
}

rallMarkup = \markup {
  \bold \larger "rall..."
}

ritMarkup = \markup {
  \italic \bold \larger "rit."
}

#(set-global-staff-size 17)

global = {
  \set Staff.midiInstrument = "clarinet"
  \key f \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #mixedTimeSigMarkup
  \time 2/4
  \autoBeamOff
}

sopMusic = \relative c' {
  \autoBeamOff
  \cadenzaOn

  % Întru-mpărăția Ta când vei veni, pomenește-ne pe noi, Doamne
  f8^\p f f f\bar "|"
  a^\accent g f e f g \bar "|"
  \break

  a4 \breathe a8^\< a\! \bar  "|"
  c4 bes8 bes^\> a bes\! \bar "|"
  a4( g)^\rallMarkup \bar "|"
  f2~ \bar "|"
  f4^\fermata r \bar "||"
  \pageBreak
  \autoBeamOn
  \once \override Staff.TimeSignature.text = \markup { }
  \cadenzaOff

  % 1. Fericiți cei săraci cu duhul, că acelora este împărăția cerurilor
  \prepareBox
  <<
    {
      \voiceOne
      a4^\p^\markup{\hspace #-4.0 \bold \box 1} bes^\markup { \bold Allegretto }
      c2
      c4^\< c\!
      d c^\>
      bes( a)\!
      \break

      g2 \breathe
      g4^\< a\!
      bes2^\>
      a4\! a^\<
      c2\!
      bes4 bes
      \break

      a a
      bes^\accent a
      g(^\accent a)
      f g
      a2
    }
    {
      \voiceTwo
      f4 g
      a2
      a4 a
      bes a
      g( f)
      e2
      e4 f
      g2
      f4 f
      a2
      g4 g
      f f
      g f
      e( f)
      d e
      f2
    }
  >>
  \oneVoice
  \bar "||"
  \break

  % 2. Fericiți cei ce plâng, că aceia se vor mângâia
  \prepareBox
  <<
    { s2^\markup{\bold \box 2} }
    { R2 }
  >>
  R2 * 4
  \break
  R2 * 6

  \bar "||"
  \break

  % 3. Fericiți cei blânzi, că aceia vor moșteni pământul
  \prepareBox
  f4^\p^\markup{\hspace #-4.0 \bold \box 3}^\< g
  a8(\! bes) g4^\>
  a2\! \breathe
  a4^\< bes
  c2\!
  \break

  c4^\> f,\!
  g^\< a
  c\!^\accent bes
  a(^\accent g)^\>
  f2~\!
  f4 r
  \bar "||"
  \break

  % 4. Fericiți cei flămânzi și însetați de dreptate, că aceia se vor sătura
  \prepareBox
  c'^\mf^\markup{\hspace #-5.0 \bold \box 4} d
  es( d)^\>
  c bes\!
  a4. a8
  a4^\< a\!
  \break

  c( bes)
  a bes
  c( d)
  c2 \breathe
  a4 bes
  c2
  \break

  c
  a4^\descrescendoMarkup bes
  a g
  f2~
  f4 r
  \bar "||"
  \break

  % 5. Fericiți cei milostivi, că aceia se vor milui
  \prepareBox
  e4^\pp^\markup{\hspace #-4.0 \bold \box 5}^\< f\!
  g f
  e^\> d
  c2\!
  f4^\< g\!
  \break

  a( bes)
  a2^\>
  g4 g\!
  f^\ritMarkup e
  f2~
  f4 r
  \bar "||"
  \break

  % 6. Fericiți cei curați cu inima, că aceia vor vedea pe Dumnezeu
  \prepareBox
  a4^\p^\markup{\hspace #-4.0 \bold \box 6}^\< bes
  c2
  c4 c\!
  bes a
  d^\accent c^\>
  \break

  c2\!
  g4^\< a
  bes2\!^\>
  bes\!
  a4^\< a\!
  \break

  c bes^\>
  a g
  f2~\!
  f4 r
  \bar "||"
  \break

  % 7. Fericiți făcătorii de pace, că aceia fiii lui Dumnezeu se vor chema
  \prepareBox
  c'4^\mf^\markup{\hspace #-5.0 \bold \box 7} c
  f2
  c4 d
  es(^\accent d)
  c d
  \break

  c(^\> bes)
  a2\! \breathe
  a4 bes
  c2^\<
  c\!
  d
  \break

  c4^\> c
  a a\!
  c^\accent bes
  a^\> g
  f2~\!
  f4 r
  \bar "||"
  \break

  % 8. Fericiți cei goniți pentru dreptate, că acelora este împărăția cerurilor
  \prepareBox
  <<
    {
      \voiceOne
      a4^\p^\markup{\hspace #-4.0 \bold \box 8}^\< bes
      c2\!
      c4 c
      d c
      c^\> c\!
      \break

      bes( a)
      g2 \breathe
      g4^\< a\!
      bes2^\accent
      a4^\< a
      c2\!
      bes4 bes
      \break

      a a
      bes^\accent a
      g( a)
      f g^\>
      a2~\!
      a4
    }
    {
      \voiceTwo
      f4 g
      a2
      a4 a
      bes a
      a a
      g( f)
      e2
      e4 f
      g2
      f4 f
      a2
      g4 g
      f f
      g f
      e( f)
      d e
      f2~
      f4
    }
  >>
  \oneVoice
  r
  \bar "||"
  \break

  % 9. Fericiți veți fi când vă vor ocărî pe voi și vă vor prigoni
  % și vor zice tot cuvântul rău împotriva voastră, mințind pentru mine
  \prepareBox
  a4^\mf^\markup{\hspace #-5.0 \bold \box 9} bes
  c8( d) bes4^\<
  c2\!
  d
  c4 c
  \break

  c d
  es d
  c2~^\>
  c4\! \breathe c
  a bes
  a g
  \break

  a2
  a4^\< bes
  c\! c
  d^\> c
  bes a
  g2\! \breathe
  \break

  g4 a
  g^\> f
  e( d)
  c2~\!
  c4 f^\<
  g( a\!
  bes2)
  \break

  a8( g) f4
  g(^\> a)
  f2~\!
  f4 r
  \bar "||"
  \break

  % Bucurați-vă și vă veseliți, că plata voastră multă este în ceruri
  c'4^\mf c4
  f2
  es4( d)
  c2 \breathe
  c4 c
  \break
  <<
    {
      \voiceOne
      d^\< e
      f2~\!^\f
      f4
    }
    \new Voice = "split" {
      \voiceTwo
      d c
      c2~
      c4
    }
  >>
  \oneVoice
  \breathe a
  bes c
  d8(^\accent es^\> d4)
  \break

  c2\!
  d4^\accent c
  c(^\accent bes)
  a^\> g\!
  \break

  bes(^\accent a
  g8[^\> a g f])
  f2~\!^\p
  f4^\fermata r
  \bar "|."
}

altoMusic = \relative c' {
  \autoBeamOff
  \cadenzaOn

  % Întru-mpărăția Ta când vei veni, pomenește-ne pe noi, Doamne
  c8^\p c c c\bar "|"
  c^\accent c c c c e \bar "|"
  f4 \breathe f8^\< f\! \bar "|"
  f4 f8 f^\> f f\! \bar "|"
  f4( e) \bar "|"
  c2~ \bar "|"
  c4^\fermata r \bar "|"
  \autoBeamOn
  \once \override Staff.TimeSignature.text = \markup { }
  \cadenzaOff

  % 1. Fericiți cei săraci cu duhul, că acelora este împărăția cerurilor
  f4^\p f
  f2
  f4^\< f\!
  f f^\>
  e( f)\!
  c2 \breathe
  c4^\< c\!
  c2^\>
  c4\! c^\<
  c2\!
  c4 c
  c c
  c^\accent c
  c2^\accent
  d4 c
  f2

  % 2. Fericiți cei ce plâng, că aceia se vor mângâia
  R2 * 11

  % 3. Fericiți cei blânzi, că aceia vor moșteni pământul
  f4^\p^\< f
  f\! f^\>
  f2\! \breathe
  f4^\< g
  a2\!
  a4^\> f\!
  f^\< f
  f\!^\accent f
  f(^\accent e)^\>
  c2~\!
  c4 r

  % 4. Fericiți cei flămânzi și însetați de dreptate, că aceia se vor sătura
  a'^\mf bes
  c( bes)^\>
  a bes\!
  f4. f8
  f4^\< f4\!
  f2
  f4 f
  f2
  f \breathe
  f4 g
  a2
  a
  f4^\descrescendoMarkup f
  f e
  c2~
  c4 r

  % 5. Fericiți cei milostivi, că aceia se vor milui
  e^\pp^\< f\!
  g f
  e^\> d
  c2\!
  f4^\< f\!
  f2
  f^\>
  e4 e\!
  f c
  c2~
  c4 r

  % 6. Fericiți cei curați cu inima, că aceia vor vedea pe Dumnezeu
  f^\p^\< f
  f2
  f4 f\!
  e f
  bes^\accent a^\>
  a2\!
  g4^\< f
  e2\!^\>
  e\!
  f4^\< f\!
  f e^\>
  f e
  c2~\!
  c4 r

  % 7. Fericiți făcătorii de pace, că aceia fiii lui Dumnezeu se vor chema
  c'^\mf c
  a2
  a4 bes
  c(^\accent bes)
  a bes
  f2^\>
  f\! \breathe
  f4 f
  f2^\<
  f\!
  f4( bes)
  a^\> a
  f f\!
  f^\accent f
  f^\> e
  c2~\!
  c4 r

  % 8. Fericiți cei goniți pentru dreptate, că acelora este împărăția cerurilor
  f^\p^\< f
  f2\!
  f4 f
  f f
  f^\> f\!
  e( f)
  c2 \breathe
  c4^\< c\!
  c2^\accent
  c4^\< c
  c2\!
  c4 c
  c c
  c^\accent c
  c2
  d4 c^\>
  f2~\!
  f4 r

  % 9. Fericiți veți fi când vă vor ocărî pe voi și vă vor prigoni
  % și vor zice tot cuvântul rău împotriva voastră, mințind pentru mine
  f^\mf f
  f bes^\<
  a2\!
  f4( bes)
  a a
  f f
  f f
  f2~^\>
  f4\! \breathe a
  f f
  f e
  f2
  f4^\< f
  f\! f
  f^\> f
  g f
  g2\! \breathe
  g4 a
  g^\> f
  e( d)
  c2~\!
  c4 f^\<
  e2(\!
  e)
  f4 f
  e2^\>
  c2~\!
  c4 r

  % Bucurați-vă și vă veseliți, că plata voastră multă este în ceruri
  c'^\mf c
  a2
  a4( bes)
  f2 \breathe
  c'4 c
  bes^\< bes
  a2~\!^\f
  a4 \breathe f
  g a
  bes2^\>
  a\!
  f4^\accent f
  f2^\accent
  f4^\> e\!
  e( f
  e^\> c)
  c2~\!^\p
  c4^\fermata r
}

tenorMusic = \relative c' {
  \autoBeamOff
  \cadenzaOn

  % Întru-mpărăția Ta când vei veni, pomenește-ne pe noi, Doamne
  a8^\p a a a \bar "|"
  c^\accent bes a bes a c \bar "|"
  c4 \breathe c8^\< c\! \bar "|"
  es4 d8 d^\> c d\! \bar "|"
  c4( bes) \bar "|"
  a2~ \bar "|"
  a4^\fermata r \bar "|"
  \autoBeamOn
  \once \override Staff.TimeSignature.text = \markup { }
  \cadenzaOff

  % 1. Fericiți cei săraci cu duhul, că acelora este împărăția cerurilor
  \time 2/4
  R2 * 16

  % 2. Fericiți cei ce plâng, că aceia se vor mângâia
  <<
    {
      \voiceOne
      a4^\p bes^\<
      c8(\! d c4)
      bes^\> a
      g2\! \breathe
      a4^\< bes\!
      c2
      c
      a4 bes
      a^\ritMarkup g^\>
      a2~
      a4\!
    }
    \new Voice = "split" {
      \voiceTwo
      f4 g
      a8( bes a4)
      g a
      g2
      f4 g
      a2
      a
      f4 g
      f e
      f2~
      f4
    }
  >>
  \oneVoice
  r

  % 3. Fericiți cei blânzi, că aceia vor moșteni pământul
  a4^\p^\< bes
  c8(\! d) bes4^\>
  c2\! \breathe
  c4^\< c
  c2\!
  c4^\> a\!
  bes^\< c
  es\!^\accent d
  c(^\accent bes)^\>
  a2~\!
  a4 r

  % 4. Fericiți cei flămânzi și însetați de dreptate, că aceia se vor sătura
  c4^\mf bes
  a( bes)^\>
  c d\!
  c4. c8
  c4^\< c\!
  es( d)
  c c
  c( bes)
  a2 \breathe
  c4 c
  c2
  c
  c4^\descrescendoMarkup d
  c bes
  a2~
  a4 r

  % 5. Fericiți cei milostivi, că aceia se vor milui
  e^\pp^\< f\!
  g f
  e^\> d
  c2\!
  a'4^\< bes\!
  c( d)
  c2^\>
  bes4 bes\!
  a << { \voiceOne bes } \new Voice = "split" { \voiceTwo g } >> \oneVoice
  a2~
  a4 r

  % 6. Fericiți cei curați cu inima, că aceia vor vedea pe Dumnezeu
  c4^\p^\< c
  c2
  c4 c\!
  << { \voiceOne c c } \new Voice = "split" { \voiceTwo bes a } >> \oneVoice
  d^\accent c^\>
  c2\!
  bes4^\< a
  g(\!^\> c)
  c2\!
  c4^\< c\!
  c c^\>
  c bes
  a2~\!
  a4 r

  % 7. Fericiți făcătorii de pace, că aceia fiii lui Dumnezeu se vor chema
  c4^\mf c
  c( d)
  es d
  c(^\accent f)
  f f
  es(^\> d)
  c2\! \breathe
  c4 c
  c2^\<
  c\!
  d
  c4^\> c
  c c\!
  es^\accent d
  c^\> bes
  a2~\!
  a4 r

  % 8. Fericiți cei goniți pentru dreptate, că acelora este împărăția cerurilor
  R2 * 18

  % 9. Fericiți veți fi când vă vor ocărî pe voi și vă vor prigoni
  % și vor zice tot cuvântul rău împotriva voastră, mințind pentru mine
  c4^\mf bes
  a bes8(^\< d)
  c2\!
  d4( f)
  es es
  es d
  c d
  es2~^\>
  es4\! \breathe c
  c d
  c c
  c2
  c4^\< c
  c\! c
  d^\> c
  bes a
  g2\! \breathe
  g4 a
  g^\> f
  e( d)
  c2~\!
  c4 a'\<
  c2~\!
  c
  c4 c
  bes2^\>
  a~\!
  a4 r

  % Bucurați-vă și vă veseliți, că plata voastră multă este în ceruri
  c4^\mf c4
  <<
    {
      \voiceOne
      f2
      f
      f
    }
    \new Voice = "split" {
      \voiceTwo
      c2
      c4( d)
      c2
    }
  >>
  \oneVoice
  \breathe
  c4 c
  <<
    {
      \voiceOne
      d^\< e
      f2~\!^\f
      f4
    }
    \new Voice = "split" {
      \voiceTwo
      d c
      c2~
      c4
    }
  >>
  \oneVoice
  \breathe a4
  bes c
  d8(^\accent es^\> d4)
  c2\!
  r
  es4^\accent d
  c^\accent c
  c2~
  c4(^\> bes)
  a2~\!^\p
  a4^\fermata r
}

bassMusic = \relative c' {
  \autoBeamOff
  \cadenzaOn

  % Întru-mpărăția Ta când vei veni, pomenește-ne pe noi, Doamne
  f,8^\p f f f \bar "|"
  f^\accent f f g f c \bar "|"
  f4 \breathe f8^\< f\! \bar "|"
  f4 f8 f^\> f bes,\! \bar "|"
  c2 \bar "|"
  <f f,>2~ \bar "|"
  <f f,>4^\fermata r \bar "|"
  \autoBeamOn
  \once \override Staff.TimeSignature.text = \markup { }
  \cadenzaOff

  % 1. Fericiți cei săraci cu duhul, că acelora este împărăția cerurilor
  R2 * 16

  % 2. Fericiți cei ce plâng, că aceia se vor mângâia
  f4^\p f^\<
  f2\!
  e4^\> f
  c2\! \breathe
  f4^\< f\!
  f2
  f
  f4 g
  f c^\>
  f2~
  f4\! r

  % 3. Fericiți cei blânzi, că aceia vor moșteni pământul
  f4^\p^\< f
  f\! f^\>
  f2\! \breathe
  f4^\< f
  f2\!
  f4^\> f\!
  f^\< f
  f\!^\accent bes,
  c2^\accent^\>
  f2~\!
  f4 r

  % 4. Fericiți cei flămânzi și însetați de dreptate, că aceia se vor sătura
  f4^\mf f
  f2^\>
  f4 f\!
  f4. f8
  f4^\< f\!
  f2
  f4 g
  a( bes)
  f2 \breathe
  f4 f
  f2
  f
  f4^\descrescendoMarkup bes,
  c c
  f2~
  f4 r

  % 5. Fericiți cei milostivi, că aceia se vor milui
  e^\pp^\< f\!
  g f
  e^\> d
  c2\!
  f4^\< f\!
  f2
  f^\>
  c4 c\!
  c c
  f2~
  f4 r

  % 6. Fericiți cei curați cu inima, că aceia vor vedea pe Dumnezeu
  f^\p^\< g
  a2
  a4 a\!
  g f
  bes^\accent f^\>
  f2\!
  e4^\< f
  <<
    {
      \voiceOne
      g2\!^\>
      g\!
    }
    \new Voice = "split" {
      \voiceTwo
      c,2
      c
    }
  >>
  \oneVoice
  f4^\< f\!
  a g^\>
  f c
  f2~\!
  f4 r

  % 7. Fericiți făcătorii de pace, că aceia fiii lui Dumnezeu se vor chema
  c'^\mf c
  f,2
  f4 f
  f2^\accent
  f4 bes
  a(^\> bes)
  f2\! \breathe
  f4 g
  a2^\<
  a\!
  bes
  f4^\> f
  f f\!
  f^\accent bes,
  c^\> c
  f2~\!
  f4 r

  % 8. Fericiți cei goniți pentru dreptate, că acelora este împărăția cerurilor
  R2 * 18

  % 9. Fericiți veți fi când vă vor ocărî pe voi și vă vor prigoni
  % și vor zice tot cuvântul rău împotriva voastră, mințind pentru mine
  f4^\mf f
  f f^\<
  f2\!
  bes
  f4 f
  a bes
  c bes
  a2~^\>
  a4\! \breathe f
  f f
  f c
  f2
  f4^\< g
  a\! a
  bes^\> a
  g f
  g2\! \breathe
  g4 a
  g^\> f
  e( d)
  c2~\!
  c4 f^\<
  c2~\!
  c2
  f4 f
  c2^\>
  f2~\!
  f4 r

  % Bucurați-vă și vă veseliți, că plata voastră multă este în ceruri
  c'^\mf c
  f,( c')
  c( bes)
  a2 \breathe
  c4 c
  bes^\< g
  f2~\!^\f
  f4 \breathe f
  g a
  bes2^\>
  f2\!
  bes4^\accent a
  a(^\accent bes)
  c^\> c\!
  c,2~
  c2^\>
  f2~\!^\p
  f4^\fermata r
}

sopWords = \lyricmode {
  În -- tru-m -- pă -- ră -- ți -- a Ta când vei ve -- ni,
  po -- me -- neș -- te- -- ne pe noi Doam -- ne! __

  Fe -- ri -- ciți cei să -- raci cu du -- hul,
  Că a -- ce -- lo -- ra es -- te îm -- pă -- ră -- ți -- a
  ce -- ru -- ri -- lor.

  % Fe -- ri -- ciți __ cei ce plâng, __ că a -- ce -- ia se vor
  % mân -- gâ -- ia! __

  Fe -- ri -- ciți __ cei blânzi, că a -- ce -- ia vor moș -- te -- ni
  pă -- mân -- tul. __

  Fe -- ri -- ciți __ cei flă -- mânzi și în -- se -- tați __ de
  drep -- ta -- te, că a -- ce -- ia se vor să -- tu -- ra! __

  Fe -- ri -- ciți cei mi -- los -- tivi, că a -- ce -- ia se vor
  mi -- lu -- i! __

  Fe -- ri -- ciți cei cu -- rați cu i -- ni -- ma, că a -- ce -- ia
  vor ve dea pre Dum -- ne -- zeu! __

  Fe -- ri -- ciți fă -- că -- to -- rii de pa -- ce, că a -- ce -- ia
  fi -- ii lui Dum -- ne -- zeu se vor che -- ma! __

  Fe -- ri -- ciți cei go -- niți pen -- tru drep -- ta -- te,
  că a -- ce -- lo -- ra es -- te îm -- pă -- ră -- ți -- a
  ce -- ru -- ri -- lor! __

  Fe -- ri -- ciți __ veți fi când vă vor o -- că -- rî pre voi __
  și vă vor pri -- go -- ni și vor zi -- ce tot cu -- vân -- tul rău
  îm -- po -- tri -- va voa -- stră, __ min -- țind __ pen -- tru mi -- ne! __

  Bu -- cu -- ra -- ți- -- vă și vă ve -- se -- liți, __ că pla -- ta
  voa -- stră mul -- tă es -- te în ce -- ruri! __
}

altoWords = \lyricmode {
  În -- tru-m -- pă -- ră -- ți -- a Ta când vei ve -- ni,
  po -- me -- neș -- te- -- ne pe noi Doam -- ne! __

  Fe -- ri -- ciți cei să -- raci cu du -- hul,
  Că a -- ce -- lo -- ra es -- te îm -- pă -- ră -- ți -- a
  ce -- ru -- ri -- lor.

  % Fe -- ri -- ciți __ cei ce plâng, că a -- ce -- ia se vor
  % mân -- gâ -- ia! __

  Fe -- ri -- ciți cei blânzi, că a -- ce -- ia vor moș -- te -- ni
  pă -- mân -- tul. __

  Fe -- ri -- ciți __ cei flă -- mânzi și în -- se -- tați de
  drep -- ta -- te, că a -- ce -- ia se vor să -- tu -- ra! __

  Fe -- ri -- ciți cei mi -- los -- tivi, că a -- ce -- ia se vor
  mi -- lu -- i! __

  Fe -- ri -- ciți cei cu -- rați cu i -- ni -- ma, că a -- ce -- ia
  vor ve dea pre Dum -- ne -- zeu! __

  Fe -- ri -- ciți fă -- că -- to -- rii de pa -- ce, că a -- ce -- ia
  fi -- ii lui Dum -- ne -- zeu se vor che -- ma! __

  Fe -- ri -- ciți cei go -- niți pen -- tru drep -- ta -- te,
  că a -- ce -- lo -- ra es -- te îm -- pă -- ră -- ți -- a
  ce -- ru -- ri -- lor! __

  Fe -- ri -- ciți veți fi când __ vă vor o -- că -- rî pre voi __
  și vă vor pri -- go -- ni și vor zi -- ce tot cu -- vân -- tul rău
  îm -- po -- tri -- va voa -- stră, __ min -- țind __ pen -- tru mi -- ne! __

  Bu -- cu -- ra -- ți- -- vă și vă ve -- se -- liți, __ că pla -- ta
  voa -- stră mul -- tă es -- te în ce -- ruri! __
}

tenorWords = \lyricmode {
  În -- tru-m -- pă -- ră -- ți -- a Ta când vei ve -- ni,
  po -- me -- neș -- te- -- ne pe noi Doam -- ne! __

  % Fe -- ri -- ciți cei să -- raci cu du -- hul,
  % Că a -- ce -- lo -- ra es -- te îm -- pă -- ră -- ți -- a
  % ce -- ru -- ri -- lor.

  Fe -- ri -- ciți __ cei ce plâng, că a -- ce -- ia se vor
  mân -- gâ -- ia! __

  Fe -- ri -- ciți__ cei blânzi, că a -- ce -- ia vor moș -- te -- ni
  pă -- mân -- tul. __

  Fe -- ri -- ciți __ cei flă -- mânzi și în -- se -- tați __ de
  drep -- ta -- te, că a -- ce -- ia se vor să -- tu -- ra! __

  Fe -- ri -- ciți cei mi -- los -- tivi, că a -- ce -- ia se vor
  mi -- lu -- i! __

  Fe -- ri -- ciți cei cu -- rați cu i -- ni -- ma, că a -- ce -- ia
  vor ve dea pre Dum -- ne -- zeu! __

  Fe -- ri -- ciți __ fă -- că -- to -- rii de pa -- ce, că a -- ce -- ia
  fi -- ii lui Dum -- ne -- zeu se vor che -- ma! __

  % Fe -- ri -- ciți cei go -- niți pen -- tru drep -- ta -- te,
  % că a -- ce -- lo -- ra es -- te îm -- pă -- ră -- ți -- a
  % ce -- ru -- ri -- lor! __

  Fe -- ri -- ciți veți __ fi când __ vă vor o -- că -- rî pre voi __
  și vă vor pri -- go -- ni și vor zi -- ce tot cu -- vân -- tul rău
  îm -- po -- tri -- va voa -- stră, __ min -- țind __ pen -- tru mi -- ne! __

  Bu -- cu -- ra -- ți- -- vă și vă ve -- se -- liți, __ că pla -- ta
  voa -- stră mul -- tă e în ce -- ruri! __
}

bassWords = \lyricmode {
  În -- tru-m -- pă -- ră -- ți -- a Ta când vei ve -- ni,
  po -- me -- neș -- te- -- ne pe noi Doam -- ne! __

  % Fe -- ri -- ciți cei să -- raci cu du -- hul,
  % Că a -- ce -- lo -- ra es -- te îm -- pă -- ră -- ți -- a
  % ce -- ru -- ri -- lor.

  Fe -- ri -- ciți cei ce plâng, că a -- ce -- ia se vor
  mân -- gâ -- ia! __

  Fe -- ri -- ciți cei blânzi, că a -- ce -- ia vor moș -- te -- ni
  pă -- mân -- tul. __

  Fe -- ri -- ciți cei flă -- mânzi și în -- se -- tați de
  drep -- ta -- te, că a -- ce -- ia se vor să -- tu -- ra! __

  Fe -- ri -- ciți cei mi -- los -- tivi, că a -- ce -- ia se vor
  mi -- lu -- i! __

  Fe -- ri -- ciți cei cu -- rați cu i -- ni -- ma, că a -- ce -- ia
  vor ve dea pre Dum -- ne -- zeu! __

  Fe -- ri -- ciți fă -- că -- to -- rii de pa -- ce, că a -- ce -- ia
  fi -- ii lui Dum -- ne -- zeu se vor che -- ma! __

  % Fe -- ri -- ciți cei go -- niți pen -- tru drep -- ta -- te,
  % că a -- ce -- lo -- ra es -- te îm -- pă -- ră -- ți -- a
  % ce -- ru -- ri -- lor! __

  Fe -- ri -- ciți veți fi când vă vor o -- că -- rî pre voi __
  și vă vor pri -- go -- ni și vor zi -- ce tot cu -- vân -- tul rău
  îm -- po -- tri -- va voa -- stră, __ min -- țind __ pen -- tru mi -- ne! __

  Bu -- cu -- ra -- ți- -- vă și vă ve -- se -- liți, __ că pla -- ta
  voa -- stră mul -- tă es -- te în ce -- ruri! __
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \sopMusic }
    \addlyrics { \sopWords }

    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \altoWords }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorWords }
    >>

    \new Staff <<
      \clef bass
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
  \tempo 4 = 156
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
