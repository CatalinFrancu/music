\version "2.10.13"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Sârba-n căruţă"
  poet = "versuri: populare"
  composer = "muzica: Gheorghe Danga"
  tagline = ""
  meter = "Repede (Tempo de joc)"
}

global = {
  #(set-global-staff-size 17)
  \key f \major
  \time 2/4
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
}

sopWords = \lyricmode {
  Hai, __ sâr -- ba, hai, __
  sâr -- ba s-o ju -- căm cu to -- ţii, măi flă -- căi, __ cu to -- ţii,
  Hai, __ sâr -- ba, hai, __
  sâr -- ba s-o ju -- căm cu to -- ţii, măi flă -- căi, __

  Hai, __ sâr -- ba, hai, __
  sâr -- ba s-o ju -- căm cu to -- ţii, măi flă -- căi, __ cu to -- ţii,
  Hai, __ sâr -- ba, hai, __
  sâr -- ba s-o ju -- căm cu to -- ţii, măi flă -- căi. __

  A -- şa şi iar a -- şa,
  Sal -- t-o şi n-o lă -- sa,
  O -- pin -- ca ba -- te de pă -- mânt __
  Să şti -- e ci -- ne-o vrea,
  Că-i joc în ţa -- ra mea
  Tra la la la la la la la

  la

  Hai, __ sâr -- ba, hai, __
  sâr -- ba în că -- ru -- ţă s-o ju -- căm flă -- căi, __ cu to -- ţii,

  s-o ju -- căm flă -- căi

  Hai, __ sâr -- ba, hai, __
  sâr -- ba s-o ju -- căm cu to -- ţii, măi flă -- căi, __ cu to -- ţii,
  Hai, __ sâr -- ba, hai, __
  sâr -- ba s-o ju -- căm cu to -- ţii, măi flă -- căi! __

  A -- şa şi iar a -- şa,
  Sal -- t-o şi n-o lă -- sa,
  O -- pin -- ca ba -- te de pă -- mânt __
  Să şti -- e ci -- ne-o vrea,
  Că-i joc în ţa -- ra mea
  Tra la la la la la la la
  
  Tra la la la la la __
  s-o ju -- căm flă -- căi!
}

altoWords = \lyricmode {
  Hai __ 

  Hai, __ hai, __
  s-o ju -- căm, s-o ju -- căm,
  Hai, __ hai __ hai __

  A -- şa şi iar a -- şa, iar a -- şa,
  O -- pin -- ca ba -- te de pă -- 
  O -- pin -- ca ba -- te de pă -- mânt,
  Şti -- e ci -- ne-o vrea, ci -- ne-o vrea
  Tra la la la la la la

  la

  zum zum zum zum zum zum zum zum zum zum zum zum zum zum zum zum
  zum zum

  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zum.

  A -- şa şi iar a -- şa, iar a -- şa,
  O -- pin -- ca ba -- te de pă -- 
  O -- pin -- ca ba -- te de pă -- mânt,
  Şti -- e ci -- ne-o vrea, ci -- ne-o vrea
  Tra la la la la la la

  Tra la la la la la __
  s-o ju -- căm flă -- căi!
}

tenorWords = \lyricmode {
  Hai, măi flă -- căi, hai hai hai hai hai __
  s-o ju -- căm, s-o ju -- căm, Hai, hai, __ hai __ hai __

  A -- şa, Sal -- t-o şi n-o lă -- sa,
  Ba -- te, O -- pin -- ca ba -- te de pă -- mânt,
  ci -- ne, Că-i joc în ţa -- ra mea,
  Tra la la la la la

  la

  zum zum zum zum zum zum zum zum zum zum zum zum zum zum zum zum
  zum zum

  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zin -- ghi zan -- ghi
  zum.

  A -- şa, Sal -- t-o şi n-o lă -- sa,
  Ba -- te, O -- pin -- ca ba -- te de pă -- mânt,
  ci -- ne, Că-i joc în ţa -- ra mea,
  Tra la la la la la

  Tra la la la la la __
  s-o ju -- căm flă -- căi!
}

bassWords = \lyricmode {
  Hai, măi flă -- căi, hai hai hai hai __
  s-o ju -- căm __ hai __ hai __

  A -- şa şi iar a -- şa, iar a -- şa,
  O -- pin -- ca ba -- te, ba -- te,
  O -- pin -- ca ba -- te de pă -- mânt,
  ci -- ne, ci -- ne-o vrea,
  Tra la la la la la la la la la la la

  Măi, măi flă -- căi hai, hai, hai,

  zum zum zum zum zum zum zum zum zum zum zum zum zum zum zum zum zum

  Zum zum zum zum zum zum zum
  zum zum
  zum zum
  zum zum
  zum zum
  zum zum
  zum zum
  zum
  zum
  zum zum
  zum zum
  zum zum
  zum zum
  zum zum
  zum zum
  zum zum
  zum zum zum zum

  A -- şa şi iar a -- şa, iar a -- şa,
  O -- pin -- ca ba -- te, ba -- te,
  O -- pin -- ca ba -- te de pă -- mânt,
  ci -- ne, ci -- ne-o vrea,
  Tra la la la la la la la la la la la

  Tra la la la la
  Hai __ sâr -- ba hai, __ sâr -- ba
  s-o ju -- căm flă -- căi!
}

sopMusic = \relative {
  f2~^\pp
  f4 g8 f8
  a2~
  a4 g8 f8
  \break

  g8 a8 bes8 c8
  bes8 a8 g8 f8
  c'2~
  c8 a8 bes8 g8
  \break

  f2~^\p
  f4 g8 f8
  a2~
  a4 g8 f8
  \break

  g8 a8 bes8 c8
  bes8 a8 g8 a8
  f2~
  f8 r8 r4
  f2~
  \break

  f4 g8 f8
  a2~
  a4 g8 f8
  g8 a8 bes8 c8
  bes8 a8 g8 f8
  \break

  c'2~
  c8 a8 bes8 g8
  f2~
  f4 g8 f8
  a2~
  \break

  a4 g8 f8
  g8 a8 bes8 c8
  bes8 a8 g8 a8
  f2~
  f8 r8 r4

  \repeat volta 2 {
    d'8 es4 es8
    \break

    d8 c8 c4
    b8 c4 c8
    bes!8 a8 a4
    d8 es4 es8
    d8 c8 b8 c8
    \break

    f2~
    f2
    d8 es4 es8
    d8 c8 c4
    b8 c4 c8
    \break

    bes8 a8 a4
    d8 c4 c8
    bes8 a8 g8 a8
  } \alternative {
    { f8 r8 r4
      R2
      \break
    }
    { f8 r8 r4
      R2
    }
  }

  \repeat volta 2 {
    f2~
    f4 g8 f8
    a2~
    \break

    a4 g8 f8
    g8 a8 bes8 c8
  } \alternative {
    { bes8 a8 g8 f8
      c'2~
      c8 a8 bes8 g8
      \break
    }
    { bes8 a8 g8 a8
      f8 r8 r4
      R2
    }
  }

  f2~
  f4 g8 f8
  \break

  a2~
  a4 g8 f8
  g8 a8 bes8 c8
  bes8 a8 g8 f8
  c'2~
  \break

  c8 a8 bes8 g8
  f2~
  f4 g8 f8
  a2~
  a4 g8 f8
  \break

  g8 a8 bes8 c8
  bes8 a8 g8 a8
  f2~
  f8 r8 r4

  \repeat volta 2 {
    d'8 es4 es8
    \break

    d8 c8 c4
    b8 c4 c8
    bes!8 a8 a4
    d8 es4 es8
    d8 c8 b8 c8
    \break

    f2~
    f2
    d8 es4 es8
    d8 c8 c4
    b8 c4 c8
    \break

    bes8 a8 a4
    d8 c4 c8
    bes8 a8 g8 a8
  } \alternative {
    { f8 r8 r4
      R2
      \break
    }
    { f8^\markup{ \large \italic "CODA" } a4 c8
      d4 e4
    }
  }

  f2~
  f2~
  \break

  f2~
  f2
  c4 c4
  d4 e4
  f2
  \bar "|."
}

altoMusic = \relative {
  f2~^\pp
  f2~
  f2~
  f2~

  f2~
  f2~
  f2~
  f2~

  f2~
  f2~
  f2~
  f2~

  f2~
  f2~
  f2~
  f8 r8 r4
  f2~

  f2~
  f2~
  f2
  e2~
  e2

  a8 g8 f4
  g8 f8 e4
  f2~
  f2~
  f2~

  f2
  e2~
  e2
  f2~
  f8 r8 r4

  \repeat volta 2 {
    c'8 c4 c8

    bes8 a8 a4
    f4 f4
    f2
    bes8 c4 c8
    bes8 a8 gis8 a8

    b8 c4 c8
    bes!8 a8 gis8 a8
    b8 c4 c8
    bes8 a8 a4
    f4 f4

    f2
    f8 e8 bes'8 a8
    g8 r8 e8 r8
  } \alternative {
    { f8 r8 r4
      R2
    }
    { f8 r8 r4
      R2
    }
  }

  \repeat volta 2 {
    f4 f4
    f4 f4
    f4 f4

    f4 f4
    e4 e4
  } \alternative {
    { e4 e4
      f4 f4
      e4 e4
    }
    { e2
      f8 r8 r4
      R2
    }
  }

  f8 f8 f8 f8
  f8 f8 f8 f8

  f8 f8 f8 f8
  f8 f8 f8 f8
  g8 g8 g8 g8
  g8 g8 g8 g8
  a8 g8 f8 f8

  g8 f8 e8 e8
  f8 f8 f8 f8
  f8 f8 f8 f8
  f8 f8 f8 f8
  f8 f8 f8 f8

  g8 g8 g8 g8
  g8 g8 g8 g8
  f8 f8 f8 f8
  f8 r8 r4

  \repeat volta 2 {
    bes8 c4 c8

    bes8 a8 a4
    f4 f4
    f2
    bes8 c4 c8
    bes8 a8 gis8 a8

    b8 c4 c8
    bes!8 a8 gis8 a8
    bes8 c4 c8
    bes8 a8 a4
    f4 f4

    f2
    f8 e8 bes'8 a8
    g8 r8 e8 r8
  } \alternative {
    { f8 r8 r4
      R2
    }
    { f8 a4 c8
      bes4 bes4
    }
  }

  a2~
  a2~

  a2~
  a2
  c4 c4
  c4 bes4
  a2
}

tenorMusic = \relative {
  R2 * 4

  R2 * 4

  R2 * 4

  R2
  R2
  f,4 g8 a8
  f8 c8 d8 e8
  f2

  c'2~
  c2~
  c2~
  c2~
  c2

  c8 bes8 a4
  bes8 a8 g4
  f2
  c'2~
  c2~

  c2
  c2~
  c2
  f,2~
  f8 r8 r4

  \repeat volta 2 {
    f'2

    f2
    d8 es4 es8
    d8 c8 c4
    f2
    f2

    d8 es4 es8
    d8 c8 b8 c8
    f2
    f4 f4
    d8 es4 es8

    d8 c8 c4
    f8 g4 f8
    e8 r8 c8 r8
  } \alternative {
    { f8 r8 r4
      R2
    }
    { f8 r8 r4
      R2
    }
  }

  \repeat volta 2 {
    a,4 a4
    a4 a4
    a4 a4

    a4 a4
    bes4 bes4
  } \alternative {
    { bes4 bes4
      a4 a4
      g4 g4
    }
    { bes2
      a8 r8 r4
      R2
    }
  }

  a8 a8 a8 a8
  a8 a8 a8 a8

  a8 a8 a8 a8
  a8 a8 a8 a8
  bes8 bes8 bes8 bes8
  bes8 bes8 bes8 bes8
  c8 bes8 a8 a8

  bes8 a8 g8 g8
  a8 a8 a8 a8
  a8 a8 a8 a8
  a8 a8 a8 a8
  a8 a8 a8 a8
  
  bes8 bes8 bes8 bes8
  bes8 bes8 bes8 bes8
  a8 a8 a8 a8
  a8 r8 r4

  \repeat volta 2 {
    f'2

    f2
    d8 es4 es8
    d8 c8 c4
    f2
    f2

    d8 es4 es8
    d8 c8 b8 c8
    f2
    f4 f4
    d8 es4 es8

    d8 c8 c4
    f8 g4 f8
    e8 r8 c8 r8

  } \alternative {
    { f8 r8 r4
      R2
    }
    { f,8 a4 c8
      d4 c4
    }
  }

  c2~
  c2~

  c2~
  c2
  c4 c4
  c4 c4
  c2
}

bassMusic = \relative {
  R2 * 4

  R2 * 4

  R2 * 4

  R2
  R2
  f,4 g8 a8
  f8 c8 d8 e8
  f2~

  f2~
  f2~
  f2(
  g2)~
  g2

  f2
  c2
  f2~
  f2~
  f2~

  f2
  g2~
  <g c,>2
  f2~
  f8 r8 r4

  \repeat volta 2 {
    bes,8 a4 a8

    bes8 c8 <f f,>4
    f4 f4
    f2
    bes8 a4 a8
    bes8 c8 d8 c8

    d8 es4 es8
    d8 c8 b8 c8
    bes!2
    bes4 f4
    f4 f4

    f2
    g8 c,4 d8
    e8 r8 c'8 r8
  } \alternative {
    { f,8 e4 g8
      f8 es8 d8 c8
    }
    { f4\accent g8 a8
      f8 c8 d8 e8
    }
  }

  \repeat volta 2 {
    f4 f4
    f4 f4
    f4 f4

    f4 f4
    g4 g4
  } \alternative {
    { g4 g4
      f4 f4
      c4 c4
    }
    { g'2
      f4 g8 a8
      f8 c8 d8 e8
    }
  }

  f4 c4
  f4 c4

  f4 c4
  f4 c4
  e4 c4
  e4 c4
  f2

  c2
  f4 c4
  f4 c4
  f4 c4
  f4 c4

  e4 c4
  e4 c4
  f4 c4
  f8 es8 d8 c8

  \repeat volta 2 {
    bes8 a4 a8

    bes8 c8 <f f,>4
    f4 f4
    f2
    bes8 a4 a8
    bes8 c8 d8 c8

    d8 es4 es8
    d8 c8 b8 c8
    bes!2
    bes4 f4
    f4 f4

    f2
    g8 c,4 d8
    e8 r8 c'8 r8
  } \alternative {
    { f,8 e4 g8
      f8 es8 d8 c8
    }
    { f8 f4 a8
      bes4 g4
    }
  }

  f2~
  f4 g8 f8

  a2~
  a4 g8 f8
  c'4 bes4
  a4 g4
  f2
}

myScore = \new Score <<
  \new StaffGroup <<
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
      \clef "bass"
      \new Voice { \global \bassMusic }
      \addlyrics { \bassWords }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \context {
    \Score tempoWholesPerMinute = #(ly:make-moment 160 4)
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
