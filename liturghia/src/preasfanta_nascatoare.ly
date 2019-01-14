\version "2.19.80"
\include "defines.ly"
midiTempo =
  \midi {
    \tempo 4 = 124
    }


\include "preamble.ly"

mfAndFermataMarkup = \markup {
  \hspace #-5.0
  \musicglyph "m"
  \hspace #-1.0
  \musicglyph "f"
  \hspace #1.0
  \musicglyph "scripts.ufermata"
}

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #mixedTimeSigMarkup
  \time 4/4
}

sopWords = \lyricmode {
  Prea -- sfân -- tă Năs -- că -- toa -- re de Dum -- ne -- zeu,
  mi -- lu -- ieș -- te -- ne pre noi.
}
altoWords = \sopWords
tenorWords = \sopWords
bassWords = \sopWords

sopMusic = \relative c' {
  \cadenzaOn
  f^\p \bar "|"
  a a^\crescendoMarkup a a \bar "|"
  bes2 a4 g \bar "|"
  a bes \bar "|"
  c2^\mfAndFermataMarkup \breathe a4^\p a^\< \bar "|"
  bes2.\! a4 \bar "|"
  g2^\> bes \bar "|"
  a\! r \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn
  f4^\p
  f f^\crescendoMarkup f f
  g2 f4 g
  f f
  g2^\mfAndFermataMarkup \breathe f4^\p f^\<
  e2.\! f4
  e2^\> e
  f\! r
}

tenorMusic = \relative c' {
  \cadenzaOn
  a4^\p
  c c^\crescendoMarkup d d
  d2 d4 c
  c f
  e2^\mfAndFermataMarkup \breathe c4^\p c^\<
  c2.\! c4
  c2^\> c
  c\! r
}

bassMusic = \relative c' {
  \cadenzaOn
  f,4^\p
  f f^\crescendoMarkup d d
  g2 d4 e
  f8 (e) d4
  c2^\mfAndFermataMarkup \breathe f4^\p f4^\<
  <<
    {
      \voiceOne
      g2.\! f4
    }
    \new Voice {
      \voiceTwo
      c2. c4
    }
  >>
  c2^\> c
  f\! r
}

\include "four-staves.ly"
