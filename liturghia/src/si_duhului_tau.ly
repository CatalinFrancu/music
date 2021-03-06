\version "2.19.80"
\include "defines.ly"
#(define raggedRight #t)
midiTempo = 
  \midi {
    \tempo 4 = 124
    }


\include "preamble.ly"

\header {
  meter = "Moderato"
}

global = {
  \globalPreamble
  \key f \major
}

sopWords = \lyricmode {
  Și du -- hu -- lui tău.
}

altoWords = \sopWords
tenorWords = \sopWords
bassWords = \sopWords

sopMusic = \relative c' {
  \partial 4 f4^\mf
  a2^\accent g4^\> g4
  f2\! r2 \bar "|."
}

altoMusic = \relative c' {
  \partial 4 f4^\mf
  f2^\accent e4^\> e4
  c2\! r2
}

tenorMusic = \relative c' {
  \partial 4 a4^\mf
  c2^\accent bes4^\> bes4
  a2\! r2
}

bassMusic = \relative c' {
  \partial 4 f,4^\mf
  f2^\accent c4^\> c4

  <<
    { \voiceOne f2\! }
    \new Voice = "split" { \voiceTwo f,2 }
  >>
  \oneVoice
  r2
  
}

\include "four-staves.ly"
