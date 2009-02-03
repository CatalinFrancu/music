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

\header {
  title = "Răspunsurile mari"
  subtitle = "glasul 5"
  composer = "de Protosinghelul Varlaam"
  arranger = "Armonizate de N. Moldoveanu"
  meter = "Andante"
}

global = {
  \globalPreamble
  \key e \minor
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = #mixedTimeSigMarkup
  \time 4/4
}

womenWords = \lyricmode {
  Mi -- la pă -- cii, jert -- fa la -- u -- dei.
}
menWords = \womenWords

sopMusic = \relative {
  \cadenzaOn
  e'4^\mf b4 \bar "|"
  c4( b8 a8) g2 \bar "|"
  \acciaccatura a8 g8( fis8) e4 b'4 b4 \bar "|"
  e,2. b'4\rest \bar "|."
}

altoMusic = \relative {
  \cadenzaOn
  b'4 b4
  c4( b8 a8) g2
  g8( fis8) e4 fis4 fis4
  e2. b'4\rest
}

tenorMusic = \relative {
  e,8(^\mf fis8) g4
  a4( g8 fis8) e2
  e4 e4 dis4 dis4
  e2. d4\rest
}

bassMusic = \relative {
  e,8( fis8) g4
  a4( g8 fis8) e2
  e4 e4 b4 b4
  <e e,>2. d4\rest
}

\include "two-staves.ly"
