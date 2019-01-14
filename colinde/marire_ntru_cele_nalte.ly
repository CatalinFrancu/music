\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0.7\in
  bottom-margin = 0.7\in
}

\header {
  title = "Mărire-ntru cele-nalte"
  composer = "Prelucrare de N. Lungu"
  meter = \markup { Allegretto moderato \note #"4" #1 = 116 }
  tagline = ""
}

#(set-global-staff-size 15)

global = {
  \set Staff.midiInstrument = "clarinet"
  \key a \major
  \time 2/4
  \autoBeamOff
}

sopStanzaOne = \lyricmode {
  \set stanza = "1."
  Mă -- ri -- re-n -- tru __ ce -- le -- nal -- te,
  Toa -- te ste -- le -- le __ să sal -- te,

  A -- ceas -- tă zi prea sfin -- ți -- tă
  Și săr -- bă -- toa -- re slă -- vi -- tă
  U -- răm la toți să vă fi -- e-n
  tru mulți ani cu bu -- cu -- ri -- e! __

  Mă -- ri -- re-n -- tru __ ce -- le -- nal -- te,
  Toa -- te ste -- le -- le __ să sal -- te,
  Sal -- te ce -- rul __ și __ pă -- mân -- tul
  Și să la -- u -- de __ Cu -- vân -- tul.
}

sopStanzaTwo = \lyricmode {
  \set stanza = "2."
  În -- tru cei __ de __ sus, __ mă -- ri -- re,
  Și pe pă -- mânt pă -- ciu -- i -- re

  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4

  În -- tru cei __ de __ sus, __ mă -- ri -- re,
  Și pe pă -- mânt pă -- ciu -- i -- re
  La toți oa -- me -- nii __ să fi -- e
  De a -- cum pâ -- nă-n __ ve -- ci -- e.
}

altoStanzaOne = \lyricmode {
  \set stanza = "1."
  Mă -- ri -- re-n -- tru ce -- le -- nal -- te,
  Toa -- te ste -- le -- le să sal -- te,

  A -- ceas -- tă zi prea sfin -- ți -- tă
  Și săr -- bă -- toa -- re slă -- vi -- tă
  U -- răm la toți să vă fi -- e-n
  tru mulți ani cu bu -- cu -- ri -- e! __

  Mă -- ri -- re-n -- tru ce -- le -- nal -- te,
  Toa -- te ste -- le -- le să sal -- te,
  Sal -- te ce -- rul și pă -- mân -- tul
  Și să la -- u -- de Cu -- vân -- tul.
}

altoStanzaTwo = \lyricmode {
  \set stanza = "2."
  În -- tru cei de sus, mă -- ri -- re,
  Și pe pă -- mânt pă -- ciu -- i -- re

  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4

  În -- tru cei de sus, mă -- ri -- re,
  Și pe pă -- mânt pă -- ciu -- i -- re
  La toți oa -- me -- nii să fi -- e
  De a -- cum pâ -- nă-n ve -- ci -- e.
}

tenorStanzaOne = \lyricmode {
  Bing! bing! bing! bing!
  Bing! bing! bing! bing!
  bing! bing! bing! bing!

  \set stanza = "1."
  Sal -- te ce -- rul __ și __ pă -- mân -- tul
  Și să la -- u -- de __ Cu -- vân -- tul.

  A -- ceas -- tă zi prea sfin -- ți -- tă
  Și săr -- bă -- toa -- re slă -- vi -- tă
  U -- răm la toți să vă fi -- e-n
  tru mulți ani cu bu -- cu -- ri -- e! __

  Mă -- ri -- re-n -- tru ce -- le -- nal -- te,
  Toa -- te ste -- le -- le __ să sal -- te,
  Sal -- te ce -- rul și __ pă -- mân -- tul
  Și să la -- u -- de __ Cu -- vân -- tul.

  Bing! bing! bing! bing! bing! bing!
  bing! __
}

tenorStanzaTwo = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4

  \set stanza = "2."
  La toți oa -- me -- nii __ să fi -- e
  De a -- cum pâ -- nă-n __ ve -- ci -- e.

  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4

  În -- tru cei de sus, __ mă -- ri -- re,
  Și pe pă -- mânt pă -- ciu -- i -- re
  La toți oa -- me -- nii __ să fi -- e
  De a -- cum pâ -- nă-n __ ve -- ci -- e.
}

bassOneWords = \lyricmode {
  Bing, bang, bing, bang, bing, bang, bing, bang,
  Bing, bang, bing, bang, bing, bang, bing, bang,
  bing, bang, bing, bang, bing, bang, bing, bang,
  bing, bang, bing, bang, bing, bang, bing, bang,
  bing, bang, bing, bang, bing, bang, bing, bang,

  Bing, bang, bing, bang, bing, bang, bing, bang,
  bing, bang, bing, bang, bing, bang, bing, bang,
  bing, bang, bing, bang, bing, bang, bing, bang,
  bing, bang, bing, bang, bing, bang, bing, bang,

  bing, bang, bing, bang, bing, bang, bing, bang,
  bing, bang, bing, bang,
  bing, bang, bang! bang!
}

bassTwoWords = \lyricmode {
  Bang! bang! bang! bang!
  bang! bang! bang! bang!
  bang! bang! bang! bang!
  bang! bang! bang! bang!
  bang! bang! bang! bang!

  A -- ceas -- tă zi prea sfin -- ți -- tă
  Și săr -- bă -- toa -- re slă -- vi -- tă
  U -- răm la toți să vă fi -- e-n
  tru mulți ani cu bu -- cu -- ri -- e! __

  Bang! bang! bang! bang!
  bang! bang! bang! bang!
  bang! bang! bang! bang!
  bang! bang! bang! bang!

  bang! bang! bang! bang! bang! bang!
  bang! __ bang! __ bang! bang! __
}

sopMusic = \relative c' {
  \set Staff.vocalName = "S."
  % Bing-bang
  R2 R2 R2 R2
  \break

  \repeat volta 2 {
    % Mărire-ntru cele-nalte, Toate stelele să salte
    <<
      {
        \voiceOne
        e'4.^\mf fis8
        e8([ d8)] cis8([ a8)]
      }
      \new Voice = "split" {
        \voiceTwo
        cis4. d8
        cis8([ b8)] a4
      }
    >>
    \oneVoice
    cis4( e8) d8
    cis4 b4
    \break

    a4. b8
    a4 e4
    a4( cis8) b8
    a4 a4
    \break

    % Salte cerul și pământul Și să laude Cuvântul.
    R2 R2 R2 R2
    \break
    R2 R2 R2 R2
    \break

    \key a \minor

    % Această zi prea sfințită Și sărbătoare slăvită
    e8^\mf a8^\markup{ \large \bold "più mosso" } a8 c8
    b8 a8 b8 a8
    e8 a8 a8^\< c8
    \break
    b8 a8\! b8 a8

    % Urăm la toți să vă fie-ntru mulți ani cu bucurie!
    e8 a8 a8 c8^\<
    b8\! a8 b8 a8
    \break
    c4^\f e4
    d4 c4
    b8([ a8)] e'4
    a,8 a8~ a4
    \break
  }

  \key a \major
  \repeat volta 2 {
    % Mărire-ntru cele-nalte, Toate stelele să salte
    <<
      {
        \voiceOne
        e'4.^\mf fis8
        e8([ d8)] cis8([^\> a8)]
      }
      \new Voice = "split" {
        \voiceTwo
        cis4. d8
        cis8([ b8)] a4
      }
    >>
    \oneVoice
    cis4(\! e8) d8
    cis4 b4
    \break

    a4. b8
    a4 e4^\<
    a4(\! cis8) b8^\>
    a4\! a4 \breathe
    \break

    % Salte cerul și pământul Și să laude Cuvântul.
    <<
      {
        \voiceOne
        e'4.^\accent fis8
        e8([ d8)] cis8([ a8)]^\>
      }
      \new Voice = "split" {
        \voiceTwo
        cis4. d8
        cis8([ b8)] a4
      }
    >>
    \oneVoice
    cis4(\! e8) d8
    cis4 b4
    \break

    a4. b8
    a4 e4
    a4(^\> cis8) b8\!
    a4 a4
    \break
  }

  % Bing-bang
  R2 R2 R2 R2 R2 R2 \break
  R2
  R2^\markup{
    \large \bold "Poco a poco rall."
    \hspace #3.0
    \italic "perdendosi" }
  R2 R2 R2 R2 R2
  \bar "|."
}

altoMusic = \relative c' {
  \set Staff.vocalName = "A."
  % Bing-bang
  R2 R2 R2 R2

  \repeat volta 2 {
    % Mărire-ntru cele-nalte, Toate stelele să salte
    a'4.^\mf a8
    a4 a4
    a4 a4
    a4 gis4

    a4. gis8
    a4 e4
    e4. gis8
    a4 a4

    % Salte cerul și pământul Și să laude Cuvântul.
    R2 R2 R2 R2
    R2 R2 R2 R2

    \key a \minor
    % Această zi prea sfințită Și sărbătoare slăvită
    e8^\mf a8 a8 c8
    b8 a8 b8 a8
    e8 a8 a8^\< c8
    b8 a8\! b8 a8

    % Urăm la toți să vă fie-ntru mulți ani cu bucurie!
    e8 a8 a8 c8^\<
    b8\! a8 b8 a8
    c4^\f e4
    d4 c4
    b8([ a8)] e'4
    a,8 a8~ a4
  }

  \key a \major
  \repeat volta 2 {
    % Mărire-ntru cele-nalte, Toate stelele să salte
    a4.^\mf a8
    a4 a4^\>
    a4\! a4
    a4 gis4

    a4.^\accent gis8
    a4 e4^\<
    e4.\! gis8^\>
    a4\! a4 \breathe

    % Salte cerul și pământul Și să laude Cuvântul.
    a4. a8
    a4 a4
    a4 a4
    a4 gis4

    a4. gis8
    a4 e4
    e4. gis8
    a4 a4
  }

  % Bing-bang
  R2 R2 R2 R2 R2 R2
  R2 R2 R2 R2 R2 R2 R2
}

tenorMusic = \relative c' {
  \set Staff.vocalName = "T."
  % Bing-bang
  cis2^\mf cis2 cis2 cis2

  \repeat volta 2 {
    % Mărire-ntru cele-nalte, Toate stelele să salte
    cis2 cis2 cis2 cis2
    cis2 cis2 cis2 cis2

    % Salte cerul și pământul Și să laude Cuvântul.
    <<
      {
        \voiceOne
        e4. fis8
        e8([ d8)] cis8([ a8)]
      }
      \new Voice = "split" {
        \voiceTwo
        cis4. d8
        cis8([ b8)] a4
      }
    >>
    \oneVoice
    <cis a>4( <e cis>8) <d b>8
    <cis a>4 <b gis>4

    a4. <b gis>8
    a4 e4
    <<
      {
        \voiceOne
        a4(
      }
      \new Voice = "split" {
        \voiceTwo
        a4
      }
    >>
    \oneVoice
    <cis a>8) <b gis>8
    a4 a4

    \key a \minor
    % Această zi prea sfințită Și sărbătoare slăvită
    e8^\mf a8 a8 c8
    b8 a8 b8 a8
    e8 a8 a8^\< c8
    b8 a8\! b8 a8

    % Urăm la toți să vă fie-ntru mulți ani cu bucurie!
    e8 a8 a8 c8^\<
    b8\! a8 b8 a8
    c4^\f e4
    d4 c4
    b8([ a8)] e'4
    a,8 a8~ a4
  }

  \key a \major
  \repeat volta 2 {
    % Mărire-ntru cele-nalte, Toate stelele să salte
    e'4.^\mf fis8
    e4 e4^\>
    e4(\! g8) fis8
    e4 d4

    <e cis>4.^\accent <e d>8
    <e cis>4 <cis a>4^\<
    cis4(\! e8) d8^\>
    cis4\! cis4 \breathe

    % Salte cerul și pământul Și să laude Cuvântul.
    <a' e>4. <a fis>8
    e4 e4
    e4( g8) fis8
    e4 <e d>4

    <e cis>4. <e d>8
    <e cis>4 <cis a>4
    cis4( e8) d8
    cis4 cis4
  }

  % Bing-bang
  cis2^\mp cis2 cis2^\> cis2 cis2\!^\p cis2
  cis2~^\> cis2~\!^\pp cis2~^\> cis2~\! cis2~ cis2~^\ppp cis4^\fermata r4
}

bassMusicOne = \relative c' {
  \set Staff.vocalName = "B."
  % Bing-bang
  a4^\mf e4
  a4 e4
  a4 e4
  a4 e4

  \repeat volta 2 {
    % Mărire-ntru cele-nalte, Toate stelele să salte
    a4 e4
    a4 e4
    a4 e4
    a4 e4

    a4 e4
    a4 e4
    a4 e4
    a4 e4

    % Salte cerul și pământul Și să laude Cuvântul.
    a4 e4
    a4 e4
    a4 e4
    a4 e4

    a4 e4
    a4 e4
    a4 e4
    a4 e4

    \key a \minor
    % Această zi prea sfințită Și sărbătoare slăvită
    % Urăm la toți să vă fie-ntru mulți ani cu bucurie!
    s2 s2 s2 s2 s2 s2 s2 s2 s2 s2
  }

  \key a \major
  \repeat volta 2 {
    % Mărire-ntru cele-nalte, Toate stelele să salte
    a4^\mf e4
    a4 e4
    a4 e4
    a4 e4

    a4 e4
    a4 e4
    a4 e4
    a4 e4 \breathe

    % Salte cerul și pământul Și să laude Cuvântul.
    a4 e4
    a4 e4
    a4 e4
    a4 e4

    a4 e4
    a4 e4
    a4 e4
    a4 e4
  }

  % Bing-bang
  a4^\mp e4
  a4 e4
  a4 e4
  a4 e4
  a4 e4
  a4 e4

  a4 e4
  e2~
  e2
  e2~
  e2~
  e2~^\ppp
  e4^\fermata d4\rest
}

bassMusicTwo = \relative c' {
  % Bing-bang
  a,2 a2 a2 a2

  \repeat volta 2 {
    % Mărire-ntru cele-nalte, Toate stelele să salte
    a2 a2 a2 a2
    a2 a2 a2 a2

    % Salte cerul și pământul Și să laude Cuvântul.
    a2 a2 a2 a2
    a2 a2 a2 a2

    \key a \minor
    \oneVoice
    % Această zi prea sfințită Și sărbătoare slăvită
    e'8^\mf a8 a8 c8
    b8 a8 b8 a8
    e8 a8 a8^\< c8
    b8 a8\! b8 a8

    % Urăm la toți să vă fie-ntru mulți ani cu bucurie!
    e8 a8 a8 c8^\<
    b8\! a8 b8 a8
    c4^\f e4
    d4 c4
    b8([ a8)] e'4
    a,8 a8~ a4
  }

  \key a \major
  \repeat volta 2 {
    \voiceTwo
    % Mărire-ntru cele-nalte, Toate stelele să salte
    a,2 a2 a2 a2
    a2 a2 a2 a2

    % Salte cerul și pământul Și să laude Cuvântul.
    a2 a2 a2 a2
    a2 a2 a2 a2
  }

  % Bing-bang
  a2 a2 a2 a2 a2 a2
  a2~ a2 a2~ a2~ a4 a4 a2~ a4 d4\rest
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice = "sopranos" { \global \sopMusic }
    \addlyrics { \sopStanzaOne }
    \addlyrics { \sopStanzaTwo }

    \new Staff \new Voice = "altos" { \global \altoMusic }
    \addlyrics { \altoStanzaOne }
    \addlyrics { \altoStanzaTwo }

    \new Staff <<
      \clef "G_8"
      \new Voice = "tenors" { \global \tenorMusic }
      \addlyrics { \tenorStanzaOne }
      \addlyrics { \tenorStanzaTwo }
    >>

    \new Lyrics = "bassesOneLyrics"
    \new Staff <<
      \clef bass
      \new Voice = "bassesOneVoice" { \global \voiceOne \bassMusicOne }
      \new Voice = "bassesTwoVoice" { \global \voiceTwo \bassMusicTwo }
      \addlyrics { \bassTwoWords }
    >>
    \context Lyrics = bassesOneLyrics \lyricsto bassesOneVoice \bassOneWords
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \tempo 4 = 116
  \context {
    \Voice
    \remove "Dynamic_performer"
    \remove "Span_dynamic_performer"
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
  \new Voice { \global \bassMusicOne }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \bassMusicTwo }
  \midi { \midiOutput }
}
