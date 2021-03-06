\version "2.19.80"
\include "defines.ly"
midiTempo =
  \midi {
    \tempo 4 = 156
    }


\include "preamble.ly"

\header {
  title = "Antifonul al II-lea"
  subtitle = "Mărire... și acum... Unule Născut"
  subsubtitle = "glasul 8"
  meter = "Allegretto"
}

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #mixedTimeSigMarkup
  \time 2/4
}

womenWords = \lyricmode {
  Mă -- ri -- re Ta -- tă -- lui și Fi -- u -- lui și Sfân -- tu -- lui Duh.
}

menWords = \lyricmode {
  Și a -- cum și pu -- ru -- rea și în ve -- cii ve -- ci -- lor, A -- min.
}

sopMusicOne = \relative c' {
  \voiceOne
  \partial 4 f^\mf
  c'^\< d\!
  \override Staff.TimeSignature.text = \markup { }
  \time 4/4
  es^\accent d c d
  c^\accent c a a
  c(^\accent bes) a^\> g
  \break
  f2~\! f4

  \oneVoice
  r4
  \time 2/4
  R2
  \time 4/4
  R1
  R1
  R1
  R1
  \bar "||"
}

sopMusicTwo = \relative c' {
  \voiceTwo
  \partial 4 f4
  a bes
  \time 4/4
  c bes a bes
  a a f f
  a( g) f e
  f2~ f4

  s4
  \time 2/4
  s2
  \time 4/4
  s1
  s1
  s1
  s1
}

altoMusic = \relative c' {
  \partial 4 f4^\mf
  f^\< f\!
  \override Staff.TimeSignature.text = \markup { }
  \time 4/4
  f^\accent f f f
  f^\accent f f f
  c2^\accent c4^\> c
  f2~\! f4 r
  \time 2/4
  R2
  \time 4/4
  R1
  R1
  R1
  R1
}

tenorMusicOne = \relative c' {
  \partial 4 r4
  R2
  \override Staff.TimeSignature.text = \markup { }
  \time 4/4
  R1
  R1
  R1
  r2

  \voiceOne
  c4^\mf c
  \time 2/4
  c^\< d\!
  \time 4/4
  es d^\> c2\!
  c4 c a a
  c^\accent bes a \breathe g^\>
  f2.\!

  \oneVoice
  r4
}

tenorMusicTwo = \relative c' {
  \partial 4 s4
  s2
  \override Staff.TimeSignature.text = \markup { }
  \time 4/4
  s1
  s1
  s1
  s2

  \voiceTwo
  a4 a
  \time 2/4
  a bes
  \time 4/4
  c bes a2
  a4 a f f
  a g f e
  f2.

  \oneVoice
  s4
}

bassMusic = \relative c' {
  \partial 4 r4
  R2
  \override Staff.TimeSignature.text = \markup { }
  \time 4/4
  R1
  R1
  R1
  r2
  f,4^\mf f
  \time 2/4
  f^\< f\!
  \time 4/4
  f f^\> f2\!
  f4 f f f
  c^\accent c c \breathe c^\>
  f2.\! r4
}

myScore = \new Score \with {
  \override SpacingSpanner.shortest-duration-space = #myNoteSpacing
} <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \global \sopMusicOne }
      \addlyrics { \womenWords }
      \new Voice { \global \sopMusicTwo }
    >>

    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \womenWords }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusicOne }
      \addlyrics { \menWords }
      \new Voice { \global \tenorMusicTwo }
    >>

    \new Staff <<
      \clef bass
      \new Voice { \global \bassMusic }
      \addlyrics { \menWords }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

\score {
  \unfoldRepeats
  \myScore
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \sopMusicOne }
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \sopMusicTwo }
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \altoMusic }
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \tenorMusicOne }
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \tenorMusicTwo }
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \bassMusic }
  \midi { \midiDirectives }
}

% Now switch to a two-staff score, see part 2.
