\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0.5\in
}

\header {
  title = "Am plecat să colindăm"
  meter = \markup { Allegretto M.M. \note #"4" #1 = 132 }
  tagline = ""
}

global = {
  #(set-global-staff-size 18)
  \set Staff.midiInstrument = "clarinet"
  \key g \major
  \time 2/4
  \autoBeamOff
}

womenWordsOne = \lyricmode {
  \set stanza = "1."
  Am ple -- cat să co -- lin -- dăm, __
  Domn, domn __ să -- năl -- țăm
  \set ignoreMelismata = ##t
  Când bo -- ie -- rii nu-s a -- ca -- să Domn, domn să -- năl -- țăm,
  Când bo -- ie -- rii nu-s a -- ca -- să Domn, domn să -- năl -- țăm.
}

womenWordsTwo = \lyricmode {
  \set stanza = "2."
  \set ignoreMelismata = ##t
  C-au ple -- cat la vâ -- nă -- toa -- re,
  \set ignoreMelismata = ##f
  Domn, domn __ să -- năl -- țăm
  \set ignoreMelismata = ##t
  Să vâ -- ne -- ze că -- pri -- oa -- re Domn, domn să -- năl -- țăm,
  Să vâ -- ne -- ze că -- pri -- oa -- re Domn, domn să -- năl -- țăm.
}

womenWordsThree = \lyricmode {
  \set stanza = "3."
  Că -- pri -- oa -- re n-au vâ -- nat, __
  Domn, domn __ să -- năl -- țăm
  Și-au vâ -- nat un ie -- pu -- raș __ Domn, domn să -- năl -- țăm,
  Și-au vâ -- nat un ie -- pu -- raș __ Domn, domn să -- năl -- țăm.
}

womenWordsFour = \lyricmode {
  \set stanza = "4."
  Să fa -- că din pie -- lea lui, __
  Domn, domn __ să -- năl -- țăm
  Veș -- mânt fru -- mos Dom -- nu -- lui __ Domn, domn să -- năl -- țăm,
  Veș -- mânt fru -- mos Dom -- nu -- lui __ Domn, domn să -- năl -- țăm.
}

menWords = \lyricmode {
  Domn, domn să -- năl -- țăm
  Domn, domn să -- năl -- țăm
  Domn, domn să -- năl -- țăm
  Domn, domn să -- năl -- țăm
}

sopMusic = \relative c' {
  \set Staff.vocalName = \markup { \column { "S." "A." }}
  \repeat volta 4 {
    \oneVoice
    R2 R2 R2 R2
    \break

    \voiceOne
    d'8 d8 d8 e8
    \slurDashed
    d8 c8 b8([ c8)]
    \slurSolid
    d4 d8([ e8)]
    d8 c8 b4
    \break
    
    a8 a8 a8 a8
    \slurDashed
    g8 b8 d8([ c8)]
    \slurSolid
    b4 a4
    g8 b8 d8 b8\rest
    
    a8 a8 a8 a8
    \slurDashed
    g8 b8 d8([ c8)]
    \slurSolid
    b4 a4
    g8 g8 g8 b8\rest
  }
}

altoMusic = \relative c' {
  \repeat volta 4 {
    \oneVoice
    R2 R2 R2 R2
    \voiceTwo
    b'8 b8 b8 c8
    \slurDashed
    b8 a8 g8([ a8)]
    \slurSolid
    b4 b8([ c8)]
    b8 a8 g4
    
    d8 d8 d8 d8
    \slurDashed
    e8 e8 fis8([ fis8)]
    \slurSolid
    g4 fis4
    g8 g8 b8 b8\rest
    
    d,8 d8 d8 d8
    \slurDashed
    e8 e8 fis8([ fis8)]
    \slurSolid
    g4 fis4
    g8 g8 g8 b8\rest
  }
}

menMusic = \relative c' {
  \set Staff.vocalName = "T. + B."
  \repeat volta 4 {
    d,4 g4
    d8 d8 g4
    d4 g4
    d8 d8 g4
    d4 g4
    d8 d8 g4
    d4 g4
    d8 d8 g4
    
    fis8 fis8 fis8 fis8
    \slurDashed
    g8 g8 a8([ a8)]
    \slurSolid
    g4 d4
    g8 g8 g8 b8\rest
    
    fis8 fis8 fis8 fis8
    \slurDashed
    g8 g8 a8([ a8)]
    \slurSolid
    g4 d4
    g8 g8 g8 b8\rest
  }
}

myScore = \new Score \with {
  \override SpacingSpanner.shortest-duration-space = #7.0
} <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \global \voiceOne \sopMusic }
      \addlyrics { \womenWordsOne }
      \addlyrics { \womenWordsTwo }
      \addlyrics { \womenWordsThree }
      \addlyrics { \womenWordsFour }
      \new Voice { \global \voiceTwo \altoMusic }
    >>
    
    \new Staff <<
      \clef "G_8"
      \new Voice = "menVoice" { \global \menMusic }
    >>
    \new Lyrics = "menLyrics"
    \context Lyrics = menLyrics \lyricsto menVoice \menWords
  >>
>>

\book {
  \score {
    \myScore
    \layout { }
  }
  \score {
    \unfoldRepeats
    \myScore
    \midi {
      \tempo 4 = 132
    }
  }
  \score {
    \unfoldRepeats
    \new Voice { \global \sopMusic }
    \midi {
      \tempo 4 = 132
    }
  }
  \score {
    \unfoldRepeats
    \new Voice { \global \altoMusic }
    \midi {
      \tempo 4 = 132
    }
  }
  \score {
    \unfoldRepeats
    \new Voice { \global \menMusic }
    \midi {
      \tempo 4 = 132
    }
  }
}
