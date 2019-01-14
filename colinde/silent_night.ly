\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  system-system-spacing.basic-distance = #20
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0.7\in
}

\header {
  title = "Silent Night"
  composer = "Franz Gruber"
  tagline = ""
}

#(set-global-staff-size 16)

global = {
  \set Staff.midiInstrument = "clarinet"
  \key bes \major
  \time 6/8
  \autoBeamOff
}

stanzaOne = \lyricmode {
  \set stanza = "1."
  Si -- lent night! Ho -- ly night!
  All is calm, all is bright.
  Round yon Vir -- gin
  \set ignoreMelismata = ##t
  Moth -- er and Child!
  Ho -- ly In -- fant so ten -- der and mild,
  \unset ignoreMelismata
  Sleep in heav -- en -- ly peace! __
  Sleep __ in heav -- en -- ly peace! __
}

stanzaTwo = \lyricmode {
  \set stanza = "2."
  Si -- lent night! Ho -- ly night!
  Shep -- herds quake at the sight!
  Glo -- ries stream __ from
  \set ignoreMelismata = ##t
  heav -- en a -- far,
  \unset ignoreMelismata
  Heav'n -- ly hosts __ sing,
  \set ignoreMelismata = ##t
  "\"Al" -- le -- lu -- "ia!\""
  \unset ignoreMelismata
  Christ, the Sav -- ior, is born! __
  Christ, __ the Sav -- ior, is born! __
}

stanzaThree = \lyricmode {
  \set stanza = "3."
  Si -- lent night! Ho -- ly night!
  Son of God, love's pure light!
  \set ignoreMelismata = ##t
  Ra -- diant beams
  \unset ignoreMelismata
  from Thy ho -- ly face
  \set ignoreMelismata = ##t
  With the dawn of re --
  \unset ignoreMelismata
  deem -- ing grace,
  Je -- sus, Lord, at Thy birth! __
  Je -- sus, Lord, at Thy birth! __
}

sopMusic = \relative c' {
  \repeat volta 3 {
    f8.([^\p g16)] f8 d4.
    f8.([^\pp g16)] f8 d4.
    c'4^\mf c8 a4. \break
    bes4^\p bes8 f4.

    \slurDashed
    g4 g8 bes8.([ a16)] g8
    f8.([ g16)] f8 d4. \break
    g4 g8 bes8.([ a16)] g8
    f8.([ g16)] f8 d4.
    \slurSolid

    c'4^\pp c8 es8. c16 a8 \break
    bes4.( d4) bes8\rest
    bes8.([^\p f16)] d8 f8. es16 c8
    bes4.~ bes4 bes'8\rest
  }
}

altoMusic = \relative c' {
  \repeat volta 3 {
    d8.([ es16)] d8 bes4.
    d8.([ es16)] d8 bes4.
    es4 es8 c4.
    d4 d8 d4.

    \slurDashed
    es4 es8 g8.([ f16)] es8
    d8.([ es16)] d8 bes4.
    es4 es8 g8.([ f16)] es8
    d8.([ es16)] d8 bes4.
    \slurSolid

    es4 es8 c8. es16 c8
    d4.( f4) bes8\rest
    d,4 bes8 d8. c16 a8
    bes4.~ bes4 bes'8\rest
  }
}

tenorMusic = \relative c' {
  \repeat volta 3 {
    bes4 bes8 f4.
    bes4 bes8 f4.
    a4 a8 f4.
    f4 f8 bes4.

    \slurDashed
    bes4 bes8 bes8.([ bes16)] bes8
    bes8.([ bes16)] bes8 f4.
    bes4 bes8 bes8.([ bes16)] bes8
    bes8.([ bes16)] bes8 f4.
    \slurSolid

    a4 a8 a8. a16 f8
    f4.( bes4) d,8\rest
    f4 f8 f8. f16 es8
    d4.~ d4 d8\rest
  }
}

bassMusic = \relative c' {
  \repeat volta 3 {
    bes,4_\p bes8 bes4.
    bes4_\pp bes8 bes4.
    f'4_\mf f8 f4.
    bes,4_\p bes8 bes4.

    \slurDashed
    es4 es8 es8.([ es16)] es8
    bes8.([ bes16)] bes8 bes4.
    es4 es8 es8.([ es16)] es8
    bes8.([ bes16)] bes8 bes4.
    \slurSolid

    f'4_\pp f8 f8. f16 f8
    bes,4.( bes4) d8\rest
    f,4_\p f8 f8. f16 f8
    bes4.~ bes4 d8\rest
  }
}

myScore = \new Score <<
  \new ChoirStaff
  <<
    \new Staff = "women" <<
      \new Voice = "sopranos" { \voiceOne \global \sopMusic }
      \addlyrics { \stanzaOne }
      \addlyrics { \stanzaTwo }
      \addlyrics { \stanzaThree }
      \new Voice = "altos" { \voiceTwo \global \altoMusic }
    >>

    \new Staff = "men" <<
      \clef bass
      \new Voice = "tenors" { \voiceOne \global \tenorMusic }
      \new Voice = "basses" { \voiceTwo \global \bassMusic }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput =
  \midi {
    \tempo 4 = 50
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
