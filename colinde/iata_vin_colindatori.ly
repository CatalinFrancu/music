\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}

\header {
  title = "Iată vin colindători!"
  arranger = "Aranjament de Tiberiu Brediceanu"
  meter = \markup { Allegretto \note #"4" #1 = 84 }
  tagline = ""
}

#(set-global-staff-size 14)

global = {
  \override Score.VerticalAxisGroup.remove-first = ##t
  \set Staff.midiInstrument = "clarinet"
  \key f \minor
  \time 2/4
  \autoBeamOff
}

sopStanzaOne = \lyricmode {
  \set stanza = "1."
  Ia -- tă vin co -- lin -- dă -- tori
  Flo -- ri -- le-s dal -- be,
  Noap- tea pe la cân -- tă -- tori.
}

sopStanzaTwo = \lyricmode {
  \set stanza = "2."
  Și ei vin me -- reu, me -- reu,
  Flo -- ri -- le-s dal -- be,
  Și ne-a -- duc pe Dum -- ne -- zeu.
}

sopStanzaThree = \lyricmode {
  \set stanza = "3."
  Dum -- ne -- zeu a -- de -- vă -- rat,
  Flo -- ri -- le-s dal -- be,
  Soa -- re-n ra -- ze lu -- mi -- nat.
}

tenorStanzaOne = \lyricmode {
  \set stanza = "1."
  Ia -- tă vin co -- lin -- dă -- tori
  Flo -- ri -- le-s dal -- be,
  Noap- tea pe la, pe la cân -- tă -- tori.
}

tenorStanzaTwo = \lyricmode {
  \set stanza = "2."
  Și ei vin me -- reu, me -- reu,
  Flo -- ri -- le-s dal -- be,
  Și ne-a -- duc pe, duc pe Dum -- ne -- zeu.
}

tenorStanzaThree = \lyricmode {
  \set stanza = "3."
  Dum -- ne -- zeu a -- de -- vă -- rat,
  Flo -- ri -- le-s dal -- be,
  Soa -- re-n ra -- ze, ra -- ze lu -- mi -- nat.
}

bassStanzaOne = \lyricmode {
  \set stanza = "1.-3."
  Co -- lin -- dă, co -- lin -- dă, co -- lin -- dă, co -- lin -- dă,
  co -- lin -- dă, co -- lin -- dă, co -- lin -- dă,
  Flo -- ri -- le-s dal -- be,
  Noap- tea pe la cân -- tă -- tori.
  Co -- lin -- dă, co -- lin -- dă, co -- lind. __
}

bassStanzaTwo = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  Și ne-a -- duc pe Dum -- ne -- zeu.
}

bassStanzaThree = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  Soa -- re-n ra -- ze lu -- mi -- nat.
}

sopMusic = \transpose a f \relative c' {
  \set Staff.shortVocalName = "S."
  s2 s2
  \repeat volta 3 {
    s2 s2
    \break

    e'8^\p e8 d8 d8
    c4 b4
    a4. r8

    d8^\mf^\< e4 f8\!
    e8.([^\> d16 c8)] d8\!
    \break

    e8^\p e8 d8 d8
    c4 b4
    a4. r8

    R2
  }
  R2 R2
  \bar "|."
}

altoMusic = \transpose a f \relative c' {
  \set Staff.shortVocalName = "A."
  s2 s2

  \repeat volta 3 {
    s2 s2

    c'8^\p c8 b8 b8
    a4 e8([ gis8)]
    a4. r8

    g8^\mf^\< c4 d8\!
    c8.([^\> g16 e8)] g8\!

    c8^\p c8 b8 b8
    a4 e8([ gis8)]
    a4. r8

    R2
  }
  R2 R2
}

tenorMusic = \transpose a f \relative c' {
  \set Staff.shortVocalName = "T."
  s2 s2

  \repeat volta 3 {
    s2 s2

    e8^\p e8 e8 e8
    e4 d4
    c4. r8

    r8 g8^\mf^\< e'8 g,8\!
    r8 g8([^\> e'8)] g,8\!

    g'8^\p g8 f8 f8
    e8 e8 e8 e8
    e4. r8

    R2
  }
  R2 R2
}

bassMusic = \transpose a f \relative c' {
  \set Staff.vocalName = "B."
  \set Staff.shortVocalName = "B."
  a,8^\p e'4^\accent e8^\<
  a,8 e'4^\accent e8\!

  \repeat volta 3 {
    a,8 e'4^\accent e8
    a,8 e'4^\accent e8

    a,8^\p e'4^\accent e8
    a,8 e'4^\accent e8
    a,8 e'4 e8

    <<
      {
        \voiceOne
        c'8([^\mf^\< g8)] c8 g8\!
        c8([^\> g8 c8)] g8\!
        c8^\p c8 d8 d8
        e,8 e8 e4
      }
      \new Voice = "split" {
        \voiceTwo
        \autoBeamOff
        c4 c8 c8
        c4 c4
        c8 c8 d8 d8
        e8 e8 e4
      }
    >>
    \oneVoice

    a,8^\< e'4 e8\!
    a,8 e'4 e8
  }
  a,8^\> e'4.~
  e2\!^\fermata
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice = "sopranos" { \global \sopMusic }
    \addlyrics { \sopStanzaOne }
    \addlyrics { \sopStanzaTwo }
    \addlyrics { \sopStanzaThree }

    \new Staff \new Voice = "altos" { \global \altoMusic }
    \addlyrics { \sopStanzaOne }
    \addlyrics { \sopStanzaTwo }
    \addlyrics { \sopStanzaThree }

    \new Staff <<
      \clef "G_8"
      \new Voice = "tenors" { \global \tenorMusic }
      \addlyrics { \tenorStanzaOne }
      \addlyrics { \tenorStanzaTwo }
      \addlyrics { \tenorStanzaThree }
    >>

    \new Staff <<
      \clef bass
      \new Voice = "basses" { \global \bassMusic }
      \addlyrics { \bassStanzaOne }
      \addlyrics { \bassStanzaTwo }
      \addlyrics { \bassStanzaThree }
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

midiOutput =
  \midi {
    \tempo 4 = 108
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
