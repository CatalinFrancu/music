\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
midiTempo = 
  \midi {
    \tempo 4 = 124
    }


\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
  \time 4/4
}

sopMusic = \relative c' {
  c'^\mf c g( a
  bes g)^\> f4~ f8\! r \bar "|."
}

sopWords = \lyricmode {
  Ți -- e Doam -- ne. __
}

altoMusic = \relative c' {
  r2 g'4^\mf f
  <<
    { \voiceOne e2 c4~ c8 }
    \new Voice = "split" { \voiceTwo s4 s^\> s s8\! }
  >>
  \oneVoice r
}

altoWords = \sopWords

tenorMusic = \relative c' {
  c4^\mf c c2(
  g4 bes)^\> a4~ a8\! r
}

tenorWords = \sopWords

bassMusic = \relative c' {
  r2 e,4^\mf f
  <<
    { \voiceOne c2 <f f,>4~ <f f,>8  }
    \new Voice = "split" { \voiceTwo s4 s^\> s s8\! }
  >>
  \oneVoice r
}

bassWords = \sopWords

\include "four-staves.ly"
