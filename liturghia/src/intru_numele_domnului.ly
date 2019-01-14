\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
midiTempo = 
  \midi {
    \tempo 4 = 160
    }


\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature.stencil = ##f
}

monoWords = \lyricmode {
  În -- tru nu -- me -- le Dom -- nu -- lui.
}

monoMusic = \relative c' {
  \cadenzaOn

  a'4 a4 c2 g8([ a8)] bes4 a4 g4 f2 \bar "|."
}

\include "single-staff.ly"
