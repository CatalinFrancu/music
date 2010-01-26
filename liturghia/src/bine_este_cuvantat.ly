\version "2.12.0"
\include "defines.ly"
midiTempo = 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 140 4)
      }
    }


\include "preamble.ly"

\header {
  title = "Bine este cuvântat"
  subtitle = "Glas 1"
  meter = "Allegretto"
}

global = {
  \globalPreamble
  \key f \minor
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = #mixedTimeSigMarkup
}

sopWords = \lyricmode {
  Bi -- ne es -- te cu -- vân -- tat Cel ce vi -- ne
  în -- tru nu -- me -- le Dom -- nu -- lui.

  Dumn -- ne -- zeu es -- te Dom -- nul
  şi s-a a -- ră -- tat __ no -- uă!
}
altoWords = \sopWords
tenorWords = \sopWords
bassWords = \sopWords

sopMusic = \relative {
  \cadenzaOn

  % Bine este cuvântat Cel ce vine întru numele Domnului.
  c'4^\mp bes4 bes4 bes4 \bar "|"
  as4 as4 \bar "|"
  bes2 as4 bes4 \bar "|"
  des4^\accent c4 bes4 as4 \bar "|"
  \acciaccatura bes8 as4( g4) as4 bes4 \bar "|"
  as4^\> g4 f2\! \bar "|"

  % Dumnezeu este Domnul şi s-a arătat nouă!
  f4^\< g4\! \bar "|"
  as2^\ritMarkup g4 as4 \bar "|"
  bes2^\> bes2\! \breathe \bar "|"
  es,4^\atempoMarkup es4 f4^\< g4\! \bar "|"
  as4( bes4) \bar "|"
  as4(^\accent g4)^\> f2\!^\fermata \bar "|."
}

altoMusic = \relative {
  \cadenzaOn

  % Bine este cuvântat Cel ce vine întru numele Domnului.
  c'4^\mp bes4 bes4 bes4
  f4 f4
  f2 f4 f4
  f4^\accent f4 f4 f4
  f2^\accent f4 f4
  f4^\> es4 c2\!

  % Dumnezeu este Domnul şi s-a arătat nouă!
  c4^\< es4\!
  es2 es4 es4
  f2^\> f2\! \breathe
  es4 es4 f4^\< g4\!
  as4( bes4)
  as4(^\accent g4)^\> f2\!^\fermata
}

tenorMusic = \relative {
  \cadenzaOn

  % Bine este cuvântat Cel ce vine întru numele Domnului.
  c4^\mp bes4 bes4 bes4
  c4 c4
  des2 c4 bes4
  as4^\accent as4 des4 c4
  c2^\accent c4 des4
  c4^\> bes4 as2\!

  % Dumnezeu este Domnul şi s-a arătat nouă!
  as4^\< bes4\!
  c2 des4 es4
  des2^\> des2\! \breathe
  es,4 es4 f4^\< g4\!
  as4( bes4)
  as4(^\accent g4)^\> f2\!^\fermata
}

bassMusic = \relative {
  \cadenzaOn

  % Bine este cuvântat Cel ce vine întru numele Domnului.
  c4^\mp bes4 bes4 bes4
  f4 f4
  bes2 f4 f4
  f4^\accent f4 f4 f4
  f2^\accent f4 f4
  c4^\> c4 f2\!

  % Dumnezeu este Domnul şi s-a arătat nouă!
  f4^\< es4\!
  as2 bes4 c4
  bes2^\> bes2\! \breathe
  es,4 es4 f4^\< g4\!
  as4( bes4)
  as4(^\accent g4)^\> f2\!^\fermata
}

\include "four-staves.ly"
