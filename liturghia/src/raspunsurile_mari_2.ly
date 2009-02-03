\version "2.10.10"
\include "defines.ly"
#(define myNoteSpacing 5.0)
#(define raggedRight #t)
midiTempo = 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }


\include "preamble.ly"

global = {
  \globalPreamble
  \key e \minor
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = ""
  \time 4/4
}

womenWords = \lyricmode {
  Şi cu du -- hul tău.
}
menWords = \womenWords

sopMusic = \relative {
  \cadenzaOn
  b'4 b4 \bar "|"
  c4 a4 \bar "|"
  b2. b4\rest \bar "|."
}

altoMusic = \relative {
  \cadenzaOn
  g'4 g4
  a4 fis4
  g2. b4\rest
}

tenorMusic = \relative {
  \cadenzaOn
  e,4 e4
  d4 d4
  g2. d4\rest
}

bassMusic = \relative {
  \cadenzaOn
  e,4 e4
  d4 d4
  g2. d4\rest
}

\include "two-staves.ly"
