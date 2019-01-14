\version "2.19.80"
\include "defines.ly"
midiTempo = 
  \midi {
    \tempo 4 = 160
    }


\include "preamble.ly"

\header {
  title = "Fie numele Domnului"
  subtitle = "glasul 8"
  composer = "Armonizat de N. Lungu"
  meter = "Allegretto"
}

global = {
  \globalPreamble
  \key f \major
  \time 2/4
}

womenWords = \lyricmode {
  Fi -- e nu -- me -- le Dom -- nu -- lui bi -- ne -- cu -- vân -- tat,
  de a -- cum şi pâ -- nă-n veac.

  Fi -- e nu -- me -- le Dom -- nu -- lui bi -- ne -- cu -- vân -- tat, __
  de a -- cum şi pâ -- nă-n veac,
  de a -- cum şi pâ -- nă-n veac.
}

menWords = \womenWords

sopMusic = \relative c' {
  % Fie numele Domnului binecuvântat, de acum şi până-n veac.
  \repeat volta 2 {
    f4^\p f4
    a4( g4)
    a4 bes4
    c4( d4)
    c4 bes4
    a4 g4
    a4 bes4
    c2
    g4 a4
    c4 bes4
    a4 g4
    f2
  }

  \break

  % Fie numele Domnului binecuvântat, de acum şi până-n veac, de acum
  % şi până-n veac.
  f4^\mf f4
  a4( g4)
  a4 bes4
  c4( d4)
  c4 c4
  d4 c4
  d4 e4
  f2~
  f4. b,8\rest
  c4 c4
  d4^\accent c4
  bes4 a4
  g2
  g4 g4
  f4 e4
  d4^\rallMarkup e4
  f2^\fermata \bar "|."
}

altoMusic = \relative c' {
  % Fie numele Domnului binecuvântat, de acum şi până-n veac.
  \repeat volta 2 {
    f4 f4
    a4( g4)
    a4 bes4
    c4( d4)
    c4 bes4
    a4 g4
    f4 g4
    a2
    e4 f4
    a4 g4
    f4 e4
    f2
  }

  % Fie numele Domnului binecuvântat, de acum şi până-n veac, de acum
  % şi până-n veac.
  f4 f4
  a4( g4)
  a4 bes4
  c4( d4)
  c4 c4
  bes4 a4
  bes4 bes4
  a2~
  a4. b8\rest
  a4 a4
  bes4 a4
  g4 a4
  g2
  g4 g4
  f4 e4
  d4 e4
  f2
}

tenorMusic = \relative c' {
  % Fie numele Domnului binecuvântat, de acum şi până-n veac.
  \repeat volta 2 {
    f,4^\p f4
    f2
    f4 g4
    a4( bes4)
    a4 g4
    f4 c4
    f4 f4
    f2
    e4 f4
    a4 g4
    f4 c4
    f2
  }

  % Fie numele Domnului binecuvântat, de acum şi până-n veac, de acum
  % şi până-n veac.
  f4^\mf f4
  f2
  f4 g4
  a4( bes4)
  a4 a4
  bes4 a4
  bes4 g4
  f2~
  f4. d8\rest
  f4 f4
  bes4^\accent a4
  g4 a4
  g2
  g4 g4
  f4 e4
  d4 c4
  f2^\fermata
}

bassMusic = \relative c' {
  % Fie numele Domnului binecuvântat, de acum şi până-n veac.
  \repeat volta 2 {
    f,4 f4
    f2
    f4 g4
    a4( bes4)
    a4 g4
    f4 c4
    f4 f4
    f2
    e4 f4
    a4 g4
    f4 c4
    f2
  }

  % Fie numele Domnului binecuvântat, de acum şi până-n veac, de acum
  % şi până-n veac.
  f4 f4
  f2
  f4 g4
  a4( bes4)
  a4 a4
  bes4 a4
  bes4 g4
  f2~
  f4. d8\rest
  f4 f4
  bes4 a4
  g4 a4
  g2
  g4 g4
  f4 e4
  d4 c4
  f2
}

\include "two-staves.ly"
