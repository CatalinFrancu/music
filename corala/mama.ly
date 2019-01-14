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
  title = "Mama"
  poet = "Versuri de G. Roiban"
  meter = \markup { Andantino semplice \note #"4" #1 = 72 }
  tagline = ""
}

bigMarkup = \markup {
  \column {
    { \large \bold "Meno mosso" }
    \line {
      \musicglyph "m"
      \hspace #-1.0
      \musicglyph "p"
      \italic "dolce"
    }
  }
}

fermataAndPp = \markup {
  \musicglyph "scripts.ufermata"
  \hspace #0.5
  \musicglyph "p"
  \hspace #-1.0
  \musicglyph "p"
}

fermataAndPpp = \markup {
  \musicglyph "scripts.ufermata"
  \hspace #0.5
  \musicglyph "p"
  \hspace #-1.0
  \musicglyph "p"
  \hspace #-1.0
  \musicglyph "p"
}

#(set-global-staff-size 16)

global = {
  \override Score.VerticalAxisGroup.remove-first = ##t
  \key g \major
  \time 2/4
  \autoBeamOff
}

soloStanzaOne = \lyricmode {
  \set stanza = "2."
  Par -- c-o __ văd a -- cas' pe ma -- ma
  Chip de sfân -- tă-n -- tr-un per -- vaz, __
  Sla -- bă, __ sla -- bă, să -- ră -- cu -- ța
  Și cu la -- crimi pe o -- braz! __
}

soloStanzaTwo = \lyricmode {
  \set stanza = "3."
  Stă la __ geam și toar -- ce tris -- tă
  Alb fu -- ior din ve -- che
  \set ignoreMelismata = ##t
  fur -- că,
  \unset ignoreMelismata
  Stă la __ geam, dar gân -- dul dân -- sei
  Tre -- ce văi și dea -- luri
  \set ignoreMelismata = ##t
  ur -- că.
  \unset ignoreMelismata
}

womenWords = \lyricmode {
  \set stanza = "1."
  E a -- șa se -- ni -- nă sla -- va
  Și-i a -- tâ -- ta pa -- ce-n a -- er
  Stau cul -- cat și țes în -- tru -- na
  Din -- tr-al gân -- du -- ri -- lor ca -- ier:

  M, m, M __
  M, m, M __

  \set stanza = "4."
  Și gân -- dind a -- șa la mi -- ne,
  Ui -- tă fur -- că și fu -- ior
  Și cu-n colț de la ma -- ra -- mă-și
  șter -- ge o -- chii... bi -- ni -- șor.
}

tenorWords = \lyricmode {
  \set stanza = "1."
  E a -- șa se -- ni -- nă sla -- va
  Și-i a -- tâ -- ta pa -- ce-n a -- er
  Stau cul -- cat și țes în -- tru -- na
  Din -- tr-al gân -- du -- ri -- lor ca -- ier:

  M, m, M __
  M, m, M __

  \set stanza = "4."
  Și gân -- dind a -- șa la mi -- ne,
  Ui -- tă fur -- că și fu -- ior
  Și cu-n colț de la ma -- ra -- mă-și
  șter -- ge o -- chii... bi -- ni -- șor.
}

bassWords = \lyricmode {
  \set stanza = "1."
  E a -- șa se -- nin
  Și-i a -- tâ -- ta pa -- ce
  Stau cul -- cat și țes în -- tru -- na
  Din -- tr-al gân -- du -- ri -- lor ca -- ier:

  M __
  M __

  \set stanza = "4."
  Și gân -- dind a -- șa
  Ui -- tă și fu -- ior
  Și cu-n colț de la ma -- ra -- mă-și
  șter -- ge o -- chii... bi -- ni -- șor.
}

soloMusic = \relative c' {
  \set Staff.midiInstrument = "alto sax"
  R2 * 8

  \time 3/4
  \repeat volta 2 {
    g4.^\bigMarkup fis16([ e16)] d8 d8
    e8 d8 g4 g4
    fis8 g8 a4 b4
    c8 b8
    \tieDashed
    <<
      {
        \voiceTwo
        a8~^\> a4.
      }
      \new Voice = "split" {
        \voiceOne
        a2
      }
    >>
    \oneVoice
    \tieSolid

    g4.\!^\mp fis16([ e16)] d8 d8
    e8 d8 g4 g4
    fis8 g8 a4 b4
    g8^\> fis8\!
    \tieDashed
    <<
      {
        \voiceTwo
        e8~ e4._\fermata
      }
      \new Voice = "split" {
        \voiceOne
        e2^\fermata
      }
    >>
    \oneVoice
    \tieSolid
  }

  \time 2/4
  R2 * 8


  \time 3/4
  R2.

  \time 4/4
  R1
}

womenMusic = \relative c' {
  \set Staff.midiInstrument = "recorder"
  \set Staff.vocalName = "I"

  b'8^\p b8 c8 c8
  b8^\> b8 a8 a8\!
  b8 b8 c8 c8
  b8^\> b8 a8 a8\!
  \break

  g8^\pp g8 g8 g8
  a8 a8 a8 a8^\markup{ \large \bold "poco" }
  b8 b8^\<^\markup{ "." \raise #2.3 {\large \bold "rit. e dim."} } c8 c8\!
  b8 b8^\> a8 a8\!^\fermata
  \break

  \time 3/4
  \repeat volta 2 {
    r4 b4^\p\tenuto b4 \tenuto
    b8([^\( \melisma c8)] b8([ c8)] d4~_\accent
    d2.~
    d2.\)^\> \melismaEnd
    \break

    r4\! b4^\p\tenuto b4 \tenuto
    b8([^\( \melisma c8) b8( c8)] d4~_\accent
    d2.~
    d4^\> e2^\!\)^\fermataAndPp \melismaEnd
    \break
  }

  \time 2/4
  b8^\p b8 c8 c8
  b8 b8^\> a8 a8\!
  b8 b8 c8 c8
  b8^\> b8 a4\!

  g8^\pp g8 g8 g8
  \break
  a8 a8 a8 a8
  b8^\markup{ \large \bold "poco" } b8^\< c8 c8\!
  R2

  \time 3/4
  a8^\p_\accent a8~^\markup{ \large \bold "dim. molto" } a2

  \time 4/4
  b1^\fermataAndPpp
  \bar "|."
}

tenorMusic = \relative c' {
  \set Staff.midiInstrument = "recorder"
  \set Staff.vocalName = "II"

  g8^\p g8 g8 g8
  g8^\> g8 fis8 fis8\!
  g8 g8 g8 g8
  g8^\> g8 fis8 fis8\!

  g8^\pp g8 g8 g8
  fis8 fis8 fis8 fis8
  g8 g8^\< g8 g8\!
  g8 g8^\> fis8 fis8\!^\fermata

  \time 3/4
  \repeat volta 2 {
    r4 g4^\p\tenuto g4 \tenuto
    g8([_\( \melisma a8)] g8([ a8)] b4
    a8([ b8)] c4 b4
    a8[ g8^\> fis8 g8 e8 fis8]\!\) \melismaEnd

    r4 g4^\p\tenuto g4 \tenuto
    g8([_\( \melisma a8) g8( a8)] b4
    a8([ b8)] c4 b4~
    b4^\> e,2\!^\fermataAndPp\) \melismaEnd
  }

  \time 2/4
  g8^\p g8 g8 g8
  g8 g8^\> fis8 fis8\!
  g8 g8 g8 g8
  g8^\> g8 fis4\!

  g8^\pp g8 g8 g8
  fis8 fis8 fis8 fis8
  g8 g8^\< g8 g8\!
  R2

  \time 3/4
  fis8^\p_\accent fis8~ fis2^\>

  \time 4/4
  g1\!^\fermataAndPpp
}

bassMusic = \relative c' {
  \set Staff.midiInstrument = "recorder"
  \set Staff.vocalName = "III"

  g8^\p g8 e8 e8
  d2^\>
  g8\! g8 e8 e8
  d4^\> d4\!

  e8^\pp e8 e8 e8
  d8 d8 d8 d8
  g8 g8^\< e8 e8\!
  d8 d8^\> d8 d8\!^\fermata

  \time 3/4
  \repeat volta 2 {
    R2.
    d2. \(^\p \melisma
    c8[ b8] a4 g4
    d'2.\)^\> \melismaEnd

    R2.\!
    d2.\(^\p \melisma
    c8[ b8] a4 g4
    b4^\> e2\)\!^\fermataAndPp \melismaEnd
  }

  \time 2/4
  g8^\p g8 e8 e8
  d2^\>
  g8\! g8 e8 e8
  d2^\>

  e8\!^\pp e8 e8 e8
  d8 d8 d8 d8
  g8 fis8^\< e8 es8\!
  R2

  \time 3/4
  d8^\p_\accent d8~ d2^\>

  \time 4/4
  <d g,>1\!^\fermataAndPpp
}

myScore = \new Score <<
  \new Staff <<
    \clef "G_8"
    \new Voice { \global \soloMusic }
    \addlyrics { \soloStanzaOne }
    \addlyrics { \soloStanzaTwo }
  >>

  \new StaffGroup <<
    \new Staff \new Voice { \global \womenMusic }
    \addlyrics { \womenWords }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorWords }
    >>

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \bassMusic }
      \addlyrics { \bassWords }
    >>
  >>
>>

\score {
  \myScore
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
}

midiOutput = \midi {
  \tempo 4 = 72
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
  \new Voice { \global \soloMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \womenMusic }
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
