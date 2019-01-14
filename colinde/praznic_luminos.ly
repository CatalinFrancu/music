\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0.7\in
  bottom-margin = 0.7\in
}

\header {
  title = "Praznic luminos"
  composer = "Timotei Popovici"
  meter = "Încetinel"
  tagline = ""
}

#(set-global-staff-size 16)

global = {
  \set Staff.midiInstrument = "clarinet"
  \key f \major
  \time 2/4
  \autoBeamOff
}

sopWords = \lyricmode {
  \set stanza = "1."
  Praz -- nic lu -- mi -- nos,
  Stră -- lu -- cind fru -- mos,
  As -- tăzi ne-a so -- sit
  Și ne-a-n -- ve -- se -- lit
  Că Mân -- tu -- i -- to -- rul
  Și iz -- bă -- vi -- to -- rul
  Cu trup s-a năs -- cut,
  Cu trup s-a năs -- cut.
}

tenorWords = \sopWords

bassWords = \lyricmode {
  \set stanza = "1."
  Praz -- nic
  Praz -- nic lu -- mi -- nos,
  Stră -- lu -- cind fru -- mos,
  As -- tăzi ne-a so -- sit
  Și ne-a-n -- ve -- se -- lit __
  Că Mân -- tu -- i -- to -- rul
  Și iz -- bă -- vi -- to -- rul
  Cu trup s-a năs -- cut,
  Cu trup s-a năs -- cut.
}

sopMusic = \relative c' {
  \set Staff.vocalName = \markup { \column { "S." "A." }}
  \repeat volta 4 {
    f8 f8 e8 f8
    g2
    a8 c8 bes8 a8
    g4. bes8\rest

    f8 f8 e8 f8
    \break
    g2
    a8 c8 bes8 a8
    g4. bes8\rest

    a8 f8 g8 a8
    bes4. c8
    \break
    d8 c8 bes8 a8
    g8.([ a16] bes8) c8

    bes4 a4
    g8 g8 c4
    bes4^\p a4
    g8 g8 f4
  }
}

altoMusic = \relative c' {
  \repeat volta 4 {
    c8 c8 c8 c8
    e2
    f8 a8 g8 f8
    e4. bes'8\rest

    c,8 c8 c8 c8
    e2
    f8 a8 g8 f8
    e4. bes'8\rest

    f8 f8 f8 f8
    f4. f8
    f8 fis8 g8 f8
    e8.([ f16] g8) a8

    g4 f4
    e8 e8 e4
    e4 f4
    d8 e8 c4
  }
}

tenorMusic = \relative c' {
  \set Staff.vocalName = "T."
  \repeat volta 4 {
    a8 a8 g8 a8
    c2
    c8 c8 c8 c8
    c4. r8

    a8 a8 g8 a8
    c2
    c8 c8 c8 c8
    c4. r8

    c8 a8 bes8 c8
    bes8([ d8 bes8)] a8
    bes8 d8 d8 c8
    c4. c8

    d4 c4
    c8 c8 c4
    c4^\p c4
    bes8 bes8 a4
  }
}

bassMusic = \relative c' {
  \set Staff.vocalName = "B."
  \repeat volta 4 {
    f,8 f8 r4
    c8 e8 g8 c,8
    f4 r4
    c8 c'8 bes8 g8

    f4 r4
    c8 e8 g8 c,8
    f4 r4
    c8 c'8 bes8 g8

    f4.( es8)
    d8 bes8 d8 c8
    bes8 a8 g8 c8
    bes'8 a8 g8 f8

    bes4 c4
    c,8 bes'8 a4
    g4^\p f4
    bes,8 c8 f4
  }
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \global \voiceOne \sopMusic }
      \addlyrics { \sopWords }
      \new Voice { \global \voiceTwo \altoMusic }
    >>

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

midiOutput = \midi {
  \tempo 4 = 72
  \context {
    \Voice
    \remove "Dynamic_performer"
    \remove "Span_dynamic_performer"
  }
}

\book {
  \score {
    \myScore
    \layout { }
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
  \markup { " " }
  \markup {
    \large {
      \hspace #15.0
      "2."
      \column {
        "Raiul cel închis, azi iar s-a deschis"
        "Șarpelui cumplit capul s-a zdrobit"
        "Și strămoșii iară prin Sfânta Fecioară"
        "Iar s-au înnoit, iar s-au înnoit."
      }
      \hspace #5.0
      "3."
      \column {
        "Îngerii cântau, păstori fluierau,"
        "Magii se-nchinau, toți se bucurau,"
        "Dar Irod era că se tulbura"
        "De nașterea Sa, de nașterea Sa"
      }
    }
  }
  \markup {
    \large {
      \hspace #40.0
      "4."
      \column {
        "El Îl căuta, voind morții-a-L da"
        "Dar pruncul Iisus din țară s-a dus"
        "Fie lăudat, binecuvântat"
        "De-a pururi, amin, de-a pururi, amin."
      }
    }
  }
}
