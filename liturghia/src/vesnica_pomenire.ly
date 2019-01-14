\version "2.19.80"
\include "defines.ly"
midiTempo = 
  \midi {
    \tempo 4 = 140
    }


\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = ""
}

monoWords = \lyricmode {
  Veş -- ni -- ca po -- me -- ni -- re,
  veş -- ni -- ca po -- me -- ni -- re,
  veş -- ni -- ca lor __ po -- me -- ni -- re.
}

monoMusic = \relative c' {
  \cadenzaOn
  a'2 g4 f4 e4 f4 g4( bes4) a2 \breathe
  g2 f4 e4 d4 e4 f4( g4) a2 \breathe
  d2 c4 bes4 a4( bes4) a4 g4 f2( e2) d2 \bar "|."
}

\include "single-staff.ly"
