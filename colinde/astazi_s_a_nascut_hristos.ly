\version "2.8.6"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0\in
}

\header {
  title = "Astăzi s-a născut Hristos"
  composer = "Tim. Popovici"
  meter = "Moderato"
  tagline = ""
}

global = {
  #(set-global-staff-size 16)
  \set Staff.midiInstrument = "clarinet"
  \override Score.VerticalAxisGroup #'remove-first = ##t
  \key g \major
  \time 2/4
  \autoBeamOff
}

sopStanzaOne = \lyricmode {
  \set stanza = "1."
  As -- tăzi s-a năs -- cut Hris -- tos, Me -- sia -- a, chip lu -- mi -- nos,
  Lă -- u -- daţi şi cân -- taţi şi vă bu -- cu -- raţi!
}

sopStanzaTwo = \lyricmode {
  \set stanza = "2."
  Mi -- ti -- tel, în -- fă -- şe -- ţel, În scu -- tec de bum -- bă -- cel,
}

sopStanzaThree = \lyricmode {
  \set stanza = "3."
  Vân -- tul ba -- te, nu-l răz -- ba-te,
  Nea -- ua nin -- ge, nu-l a -- tin-ge,
}

sopStanzaFour = \lyricmode {
  \set stanza = "4."
  Şi de-a -- cum pâ -- nă-n ve -- ci-e Mi -- la Dom -- nu -- lui să fi-e,
}

altoWords = \lyricmode {
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  Lă -- u -- daţi şi cân -- taţi şi vă bu -- cu -- raţi!
}

tenorWords = \lyricmode {
  Lă -- u -- daţi şi cân -- taţi şi vă bu -- cu -- raţi!
}

bassWords = \tenorWords

sopMusicOne = \transpose bes g \relative {
  \set Staff.vocalName = "S."
  \set Staff.vocNam = "S."

  \repeat volta 4 {
    f8^\p bes8^\< bes8 bes8\!
    d8^\> d8 c4\!
    f,8 bes8^\< bes8 bes8\!
    d8^\> d8 c4\!
    \break
    es8^\f es8 d4
    g8 g8 f4
    es8 d8 c8^\> c8\!
  } \alternative {
    { bes4. bes8\rest }
  }
  \bar ":|"
}

sopMusicTwo = \transpose bes g \relative {
  \repeat volta 4 {
    f8 f8 f8 f8
    bes8 bes8 a4
    f8 f8 f8 f8
    bes8 bes8 a4
    c8 c8 bes4
    es8 es8 d4
    es8 d8 c8 c8
  } \alternative {
    { bes4. bes8\rest }
  }
}

altoMusic = \transpose bes g \relative {
  \set Staff.vocalName = "A."
  \set Staff.vocNam = "A."

  \repeat volta 4 {
    f8^\p d8 d8 d8 
    f8 f8 f4
    f8 d8 d8 d8 
    f8 f8 f4
    f8^\f f8 f4
    bes8 bes8 bes4
    a8 bes8 a8^\> a8
  } \alternative {
    { f4.\! bes8\rest }
  }
}

tenorMusicOne = \transpose bes g \relative {
  \set Staff.vocNam = "T."

  \repeat volta 4 {
    R2 R2 R2 R2
    es8^\f es8 d4
    g8 g8 f4
    f8 f8 es8^\> es8
  } \alternative {
    { d4.\! bes8\rest }
  }
}

tenorMusicTwo = \transpose bes g \relative {
  \repeat volta 4 {
    R2 R2 R2 R2
    a8 a8 bes4
    es8 es8 d4
    c8 bes8 c8 c8
  } \alternative {
    { d4. bes8\rest }
  }
}

bassMusic = \transpose bes g \relative {
  \set Staff.vocNam = "B."

  \repeat volta 4 {
    R2 R2 R2 R2
    f,8^\f f8 bes4
    es,8 g8 bes4
    f8 f8 f8^\> f8
  } \alternative {
    { bes4.\! d,8\rest }
  }
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \global \voiceOne \sopMusicOne }
      \new Voice { \global \voiceTwo \sopMusicTwo }
      \addlyrics { \sopStanzaOne }
      \addlyrics { \sopStanzaTwo }
      \addlyrics { \sopStanzaThree }
      \addlyrics { \sopStanzaFour }
    >>

    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \altoWords }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \voiceOne \tenorMusicOne }
      \new Voice { \global \voiceTwo \tenorMusicTwo }
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
      \RemoveEmptyStaffContext
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
  \new Voice { \global \sopMusicOne }
  \midi { \midiOutput }
}
\score {
  \unfoldRepeats
  \new Voice { \global \sopMusicTwo }
  \midi { \midiOutput }
}
\score {
  \unfoldRepeats
  \new Voice { \global \altoMusic }
  \midi { \midiOutput }
}
\score {
  \unfoldRepeats
  \new Voice { \global \tenorMusicOne }
  \midi { \midiOutput }
}
\score {
  \unfoldRepeats
  \new Voice { \global \tenorMusicTwo }
  \midi { \midiOutput }
}
\score {
  \unfoldRepeats
  \new Voice { \global \bassMusic }
  \midi { \midiOutput }
}
