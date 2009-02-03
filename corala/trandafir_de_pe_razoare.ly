\version "2.10.14"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Trandafir de pe răzoare"
  composer = "muzica: Sabin Drăgoi"
  poet = "versuri populare"
  tagline = ""
  meter = "Poco rubato"
}

global = {
  #(set-global-staff-size 17)
  \key g \major
  \time 4/8
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
}

explanation = \markup {
  \pad-markup #3.0 {
    "N.B. Acelaşi refren se cântă la ambele texte repetat."
    "Refrenul \"Ano, Leno\" se cântă mai rar."
  }
}

rubatoMarkup = \markup{
  \column {{\large "Poco rubato"} {\musicglyph #"f"}}
}

fAndFermata = \markup {
  \hspace #-3.5
  \musicglyph #"f"
  \hspace #1.0
  \musicglyph #"scripts.ufermata"
}

instrMarkup = \markup {
  \hspace #-11.0
  \tiny "."
  \raise #6.0 {
    \override #'(baseline-skip . 2)
    \column {
      { \tiny "Se cântă cu textul al" }
      { \line { \tiny "doilea până aici, apoi" \tiny \italic "CODA" }}
    }
  }
}

fermataAndCoda = \markup {
  \hspace #0.5
  \override #'(baseline-skip . 5)
  \column {
    {\large \italic "CODA"}
    {\musicglyph #"scripts.ufermata"}
  }
}

sopStanzaOne = \lyricmode {
  \set stanza = "1."
  Fu -- sei, mai -- că, la por -- ti -- ţă, A -- no, Le -- no,
  De dă -- dui ba -- dii gu -- ri -- ţă, A -- no, Le -- no,

  Tran -- da -- fir de pe ră -- zoa -- re,
  Ba -- de, i -- ni -- ma mă __ doa -- re, __
  A -- no, Le -- no!

  M __

  La la __ la la __ la la
  la la __ la la la __ la
  la la __ la la __ la la
  la la __ la la la __ la
  la la __ la la __ la la __ la
  la la __ la la __ la la la
  la la __ la la __ la la __ la
  la la __ la la __ la la la
  la __ la __ " __ la"
  la la __ la la __
}

sopStanzaTwo = \lyricmode {
  \set stanza = "2."
  Gu -- ră dul -- ce, ce i-am da -- tu, A -- no, Le -- no,
  Poa -- te tră -- i ne-n -- su -- ra -- tu, A -- no, Le -- no,
  Nu mă doa -- re tot -- dea -- u -- na,
  Nu -- mai când ră -- sa -- re __ lu -- na, __
  A -- no, Le -- no!
}

altoStanzaOne = \lyricmode {
  \set stanza = "1."
  Fu -- sei, mai -- că, la por -- ti -- ţă, A -- no, Le -- no,
  De dă -- dui ba -- dii gu -- ri -- ţă, A -- no, Le -- no,

  Tran -- da -- fir de pe ră -- zoa -- re,
  Ba -- de, i -- ni -- ma mă doa -- re,
  A -- no, Le -- no!

  M __

  La la __ la __ la la
  la la __ la la la __ la
  la la __ la __ la la
  la la __ la la la __ la
  la la __ la la __ la la __ la
  la la __ la la __ la la
  la la __ la la __ la la __ la
  la la __ la la __ la la
  la __
  la __
  "__ la"
  la la __ la la __
}

altoStanzaTwo = \lyricmode {
  \set stanza = "2."
  Gu -- ră dul -- ce, ce i-am da -- tu, A -- no, Le -- no,
  Poa -- te tră -- i ne-n -- su -- ra -- tu, A -- no, Le -- no,
  Nu mă doa -- re tot -- dea -- u -- na,
  Nu -- mai când ră -- sa -- re lu -- na,
  A -- no, Le -- no!
}

tenorStanzaOne = \lyricmode {
  \set stanza = "1."
  Fu -- sei, mai -- că, la por -- ti -- ţă, A -- no, Le -- no,
  De dă -- dui ba -- dii gu -- ri -- ţă, A -- no, Le -- no,

  Tran -- da -- fir de pe ră -- zoa -- re,
  Ba -- de, i -- ni -- ma mă __ doa -- re,
  A -- no, Le -- no!

  La la la __ la la
  la la la __ la la
  la la la __ la la
  la la la __ la la
  la la la __ la la
  la la la __ la la
  la la la __ la la
  la la la __ la la
  la la la __ la la
  la la la __ la la
  la la la la la la la la
  la la __ la la la la
}

tenorStanzaTwo = \lyricmode {
  \set stanza = "2."
  Gu -- ră dul -- ce, ce i-am da -- tu, A -- no, Le -- no,
  Poa -- te tră -- i ne-n -- su -- ra -- tu, A -- no, Le -- no,
  Nu mă doa -- re tot -- dea -- u -- na,
  Nu -- mai când ră -- sa -- re __ lu -- na,
  A -- no, Le -- no!
}

sopMusic = \relative {
  % Fusei, maică, la portiţă, Ano, Leno,
  g'8^\rubatoMarkup g8^\markup{\italic "rustico"} a8 a8
  d8 d8 c16([ b16)] g8
  c8([^\p \times 2/3 { c16 d16 e16)] } d4
  c8.([ bes16)] a4
  \break

  % De dădui badii guriţă, Ano, Leno,
  g8^\f g8 a8 a8
  d8 d8 c16([ b16)] g8
  c8([^\p \times 2/3 { c16 d16 e16)] } d4
  c8.([ bes16)] a4

  \repeat volta 2 {
    % Trandafir de pe răzoare, Bade, inima mă doare, Ano, Leno!
    d8^\fAndFermata c8 d8 c8
    \break
    bes8^\> a8 g8 f8\!
    f8^\< f8 g8 g8\!
    c8 bes16([ a16)] g16([ a16)] f16([ g16)]
    a4^\p g4
    f8.([ e16)] d4
    \break
  }

  \key d \major
  \time 2/4

  \repeat volta 2 {
    R2^\markup{\large "Allegretto giocoso"}
    R2
    fis2~
    fis2
  
    a8^\markup{\italic "grazioso"} b8([~ b16 a16)] b8
    e16([ b16)] e8 b4
    \break
    a8 b8.([ a16)] b8
    a8 a16([ g16)] fis4
  
    a8 b8.([ a16)] b8
    e16([ b16)] e8 b4
    a8 b8.([ a16)] b8
    a8 a16([ g16)] fis4
    \break
  
    a8 a16([ g16)] fis8 fis16([ g16)]
    a8 a16([ g16)] fis4
    a8 a16([ g16)] fis8^\< fis16([ d16)]
    e8 e8 e4\!
  
    a8^\pp a16([ g16)] fis8 fis16([ g16)]
    a8 a16([ g16)] fis4
    \break
    a8 a16([ g16)] fis8 fis16([ d16)]
    e8^\< e8 e4\!
  
    e2~^\>
    e2\!
    fis2~^\>
    \break
  } \alternative {
   { fis2\!^\instrMarkup }
   { fis2^\fermataAndCoda }
  }

  a4^\pp b4(^\markup{\hspace #-8.0 \large "Largo"}
  e4) b4
  d2~
  d2^\fermata
  \bar "|."
}

altoMusic = \relative {
  % Fusei, maică, la portiţă, Ano, Leno,
  g'8^\f g8 a8 a8
  d8 d8 c16([ b16)] g8
  e8([^\p \times 2/3 { e16 f16 g16)] } f4
  e8.([ d16)] d4

  % De dădui badii guriţă, Ano, Leno,
  g8^\f g8 fis8 fis8
  f8 f8 e8 d8
  e8([^\p \times 2/3 { e16 f16 g16)] } f4
  e8.([ g16)] fis4

  \repeat volta 2 {
    % Trandafir de pe răzoare, Bade, inima mă doare, Ano, Leno!
    f8^\fAndFermata f8 f8 f8
    f8^\> f8 e8 f8\!
    f8^\< f8 f8 f8\!
    f8 f8 e8 d!8
    c8.([^\p d16)] e4
    d8.([ cis16)] d4
  }

  \key d \major
  \time 2/4

  \repeat volta 2 {
    d2~^\pp
    d2~
    d2~
    d2
  
    fis8 g8([~ g16 fis16)] g8~
    g8 g8 g4
    fis8 g8.([ fis16)] g8
    fis8 fis16([ e16)] d4
  
    fis8 g8.([ fis16)] g8~
    g8 g8 g4
    fis8 g8.([ fis16)] g8
    fis8 fis16([ e16)] d4

    fis8 fis16([ e16)] d8 d16([ e16)]
    fis8 fis16([ e16)] d4
    fis8 fis16([ e16)] d8^\< d8~
    d8 cis8 cis4\!
  
    fis8^\pp fis16([ e16)] d8 d16([ e16)]
    fis8 fis16([ e16)] d4
    fis8 fis16([ e16)] d8 d8~
    d8^\< cis8 cis4\!
  
    cis2~^\>
    cis2\!
    d2~^\>
  } \alternative {
   { d2\! }
   { d2^\fermata }
  }

  fis4^\pp g4~
  g4 g4
  fis2~
  fis2^\fermata
}

tenorMusic = \relative {
  % Fusei, maică, la portiţă, Ano, Leno,
  g8^\f g8 a8 a8
  d8 d8 c16([ b16)] g8
  g8.([^\p c16)] b4
  c8.([ g16)] fis4

  % De dădui badii guriţă, Ano, Leno,
  g8^\f g8 g8 g8
  g8 g8 g8 g8
  g8.([^\p c16)] b4
  c4 c4

  \repeat volta 2 {
    % Trandafir de pe răzoare, Bade, inima mă doare, Ano, Leno!
    bes8^\fAndFermata a8 bes8 c8
    d8^\> c8 bes8 a8\!
    a8^\< a8 d8 d8\!
    c8 d16([ c16)] bes8 a8
    a4^\p bes4
    a8.([ g16)] f4
  }

  \key d \major
  \time 2/4

  \repeat volta 2 {
    a8^\pp a4 a8~
    a8 a8 a4
    a8 a4 a8~
    a8 a8 a4

    a8 a4 a8~
    a8 a8 a4
    a8 a4 a8~
    a8 a8 a4
  
    a8 a4 a8~
    a8 a8 a4
    a8 a4 a8~
    a8 a8 a4
  
    a8 a4 a8~
    a8 a8 a4
    a8 a4 a8~^\<
    a8 a8 a4\!
  
    a8^\pp a4 a8~
    a8 a8 a4
    a8 a4 a8~
    a8^\< a8 a4\!
  
    r8 a8^\> a4\!
    r8 a8^\> a4\!
    r8 a8^\> r8 a8
  } \alternative {
   { r8 a8 a4^\fermata\! }
   { r8 a8 a4~ }
  }

  a2~^\pp
  a2~
  a8 a8 r8 a8
  r8 a8^\> a4^\fermata\!
}

bassMusic = \relative {
  % Fusei, maică, la portiţă, Ano, Leno,
  g8^\f g8 a8 a8
  d8 d8 c16([ b16)] g8
  c,4^\p g'4
  c8.([ c,16)] d4

  % De dădui badii guriţă, Ano, Leno,
  g8^\f_\explanation g8 g8 g8
  g8 g8 g8 g8
  c,4^\p g'4
  c8.([ c,16)] f4

  \repeat volta 2 {
    % Trandafir de pe răzoare, Bade, inima mă doare, Ano, Leno!
    bes8^\fAndFermata f8 bes8 a8
    g8^\> c8 c,8 f8\!
    d8^\< d8 bes'8 bes8\!
    a8 d16([ c16)] c,8 d16([ e16)]
    f4^\p g4
    a8.([ a,16)] d4
  }

  \key d \major
  \time 2/4

  \repeat volta 2 {
    d8^\pp d4 d8~
    d8 d8 d4
    d8 d4 d8~
    d8 d8 d4

    d8 d4 d8~
    d8 d8 d4
    d8 d4 d8~
    d8 d8 d4
  
    d8 d4 d8~
    d8 d8 d4
    d8 d4 d8~
    d8 d8 d4
  
    d8 d4 d8~
    d8 d8 d4
    d8 d4 d8~^\<
    <<
      { \voiceOne d8 e8 e4\! }
      \new Voice = "split" { \autoBeamOff \voiceTwo d8 a8 a4 }
    >>
    \oneVoice
  
    d8^\pp d4 d8~
    d8 d8 d4
    d8 d4 d8~
    <<
      { \voiceOne d8^\< e8 e4\! }
      \new Voice = "split" { \autoBeamOff \voiceTwo d8 a8 a4 }
    >>
    \oneVoice

    r8
    <<
      { \voiceOne e'8^\> e4\! }
      \new Voice = "split" { \autoBeamOff \voiceTwo a,8 a4 }
    >>
    \oneVoice
    r8
    <<
      { \voiceOne e'8^\> e4\! }
      \new Voice = "split" { \autoBeamOff \voiceTwo a,8 a4 }
    >>
    \oneVoice
  
    r8 d8^\> r8 d8
  } \alternative {
   { r8 d8 d4^\fermata\! }
   { r8 d8 d4~ }
  }

  d2~^\pp
  d2~
  d8 d8 r8 d8
  r8 d8^\> d4^\fermata\!
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \sopMusic }
    \addlyrics { \sopStanzaOne }
    \addlyrics { \sopStanzaTwo }

    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \altoStanzaOne }
    \addlyrics { \altoStanzaTwo }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorStanzaOne }
      \addlyrics { \tenorStanzaTwo }
    >>

    \new Staff <<
      \clef "bass"
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
    \Score tempoWholesPerMinute = #(ly:make-moment 72 4)
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
