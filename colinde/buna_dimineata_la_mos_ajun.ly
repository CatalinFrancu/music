\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0.7\in
}

\header {
  title = "Bună dimineața la Moș Ajun"
  subtitle = "(Melodie de A. Podoleanu)"
  composer = "Ioan D. Chirescu"
  meter = "Moderato"
  tagline = ""
}

global = {
  #(set-global-staff-size 15)
  \set Staff.midiInstrument = "clarinet"
  \key bes \major
  \time 2/4
  \autoBeamOff
}

sopWords = \lyricmode {
  Bu -- nă di -- mi -- nea -- ța la Moș A -- jun!
  Ne dați ori nu ne dați?
  Ne dați ori nu ne dați?
  Ne dați, ne dați? __

  Am ve -- nit și noi o -- da -- tă,
  La un an cu să -- nă -- ta -- te,
  Dom -- nul sfânt să ne a -- ju -- te
  La co -- vrigi și la nuci mul -- te.
}

altoWords = \sopWords

tenorWords = \lyricmode {
  Bu -- nă __ di -- mi -- nea -- ța la Moș A -- jun!
  Ne dați ori nu ne __ dați?
  Ne dați ori nu ne __ dați?
  Ne dați, ne dați? __
}

bassWords = \lyricmode {
  la Moș A -- jun, la Moș A -- jun!
  Ne dați ori nu ne __ dați?
  Ne dați, ne dați, ne dați? __
}

sopMusic = \relative c' {
  \set Staff.vocalName = "S."
  \set Staff.shortVocalName = "S."

  \repeat volta 2 {
    f8^\markup{
      \hspace #-5.0
      \musicglyph "scripts.segno"
      \hspace #2.0
      \musicglyph "m"
      \hspace #-1.0
      \musicglyph "f"
    }^\<
    f8 f8 f8\!
    d'4.^\accent c16 bes16
    a4 g4^\>
    f4\! r8 bes8^\p
    a8 c8 g8 a8
    \break
    bes4 r8 bes8^\mf
    a8 c8 g8 a8
    bes8 r16 bes16^\< c8 r16 c16\!
    d2~^\ff
    d4 r4^\markup { Fine }
  }
  \break

  c8^\mf c8^\markup { \bold "Più vivo" } c8 d8
  c8 bes8 a8 bes8
  c8 c8 c8 d8
  c8 bes8 a8 bes8
  \break
  c8 c8 c8 d8
  c8 bes8 a8 bes8
  c8 c8 c8 d8
  c8^\markup { \bold "poco rit."} bes8
  a8^\markup {
    \raise #2.0 D'al
    \hspace #0.5
    \raise #3.0 \musicglyph "scripts.segno"
    \raise #2.0 { al Fine }
  }^\> g8\!
  \bar "|."
}

altoMusic = \relative c' {
  \set Staff.vocalName = "A."
  \set Staff.shortVocalName = "A."

  \repeat volta 2 {
    f8^\mf^\< f8 f8 f8\!
    bes4.^\accent a16 g16
    f4 es4^\<
    d4\! r8 d8^\p
    f8 f8 es8 es8
    d4 r8 d8^\mf
    f8 f8 es8 es8
    d8 r16 bes'16^\< a8 r16 a16\!
    bes2~^\ff
    bes4 r4
  }

  a8^\mf a8 a8 bes8
  a8 g8 f8 g8
  a8 a8 a8 bes8
  a8 g8 f8 g8
  a8 a8 a8 bes8
  a8 g8 f8 g8
  a8 a8 a8 bes8
  a8 g8 f8^\> e8\!
}

tenorMusic = \relative c' {
  \set Staff.vocalName = "T."
  \set Staff.shortVocalName = "T."

  \repeat volta 2 {
    f8^\mf^\< f16([ es16)] d8 c8\!
    bes8([^\accent c8)] d8 es8
    f4 f,4^\>
    bes4\! r8 bes8^\p
    c8 c8 c8 d16([ c16)]
    bes4 r8 bes8^\mf
    c8 c8 c8 d16([ c16)]
    bes8 r16 d16^\<
    <<
      {
        \voiceOne
        f8 bes,16\rest f'16\!
        f2~^\ff
        f4
      }
      \new Voice = "split" {
        \voiceTwo
        es8 bes16\rest es16
        d2~
        d4
      }
    >>
    \oneVoice
    r4
  }

  R2 R2 R2 R2 R2 R2 R2 R2
}

bassMusic = \relative c' {
  \set Staff.vocalName = "B."
  \set Staff.shortVocalName = "B."

  \repeat volta 2 {
    R2 R2
    r8 f,8^\accent^\mf g8^\accent a8^\accent
    bes8^\accent f8^\accent d8^\accent bes8^\accent
    f'4^\accent r8 f8^\accent^\p
    bes8^\accent f8^\accent d8^\accent bes8^\accent
    f'4^\accent r8 f8^\mf
    bes8 r16 bes16^\< f8 r16 f16\!
    bes2~^\ff
    bes4 r4
  }

  R2 R2 R2 R2 R2 R2 R2 R2
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
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
}

midiOutput = \midi {
  \tempo 4 = 108
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
  \new Voice { \global \bassMusic }
  \midi { \midiOutput }
}
