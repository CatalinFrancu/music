\version "2.10.10"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
midiTempo = 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


\include "preamble.ly"

\header {
  meter = "Largo"
}

global = {
  \globalPreamble
  \key e \minor
  \time 3/4
}

womenWords = \lyricmode { A -- min. }
menWords = \womenWords

sopMusic = \relative {
  b'2( a8[ b8]
  g2 fis8[ g8]
  e2 fis8[ g8]
  a2 b4
  c2 dis4)
  e2. \bar "|."
}

altoMusic = \relative {
  b'2( a8[ b8]
  g2 fis8[ g8]
  e2 fis8[ g8]
  a2 fis4
  fis2.)
  g2.
}

tenorMusic = \relative {
  \oneVoice R2. \voiceOne
  b2( a8[ b8]
  g2 a8[ b8]
  c2 b4
  a2 b4)
  b2.
}

bassMusic = \relative {
  \oneVoice R2. \voiceTwo
  e,2.~
  e2.~
  e2( dis4
  c2 b4)
  e2.
}

\include "two-staves.ly"
