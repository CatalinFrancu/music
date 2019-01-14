\version "2.19.80"
\include "defines.ly"
midiTempo = 
  \midi {
    \tempo 4 = 156
    }


\include "preamble.ly"

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature.transparent = ##t
  \time 2/4
}

% Define new markup for \mf to prevent overlaps with the fermata
mfMarkup = \markup {
  \hspace #-5.0
  \musicglyph "m"
  \hspace #-1.0
  \musicglyph "f"
  \hspace #1.0
  \musicglyph "scripts.ufermata"
}

sopMusic = \relative c' {
  a'4^\mp g
  a bes
  c( d)
  c2
  bes4 a
  g a
  g f
  g( a)
  f2~
  f4 f
  bes a
  c bes
  a g
  a bes
  c( d)
  es d
  c bes
  a^\< bes\!
  c2^\mfMarkup
  d4^\p c8( d)
  c4 bes
  a g
  bes(^\rallMarkup a
  g8^\> a g4)
  f2\fermata\! \bar "|."
}

altoMusic = \relative c' {
  f4 e
  f g
  a( bes)
  a2
  bes4 a
  g f
  e f
  e2
  f2~
  f4 f
  bes a
  a g
  f e
  f g
  a( bes)
  c bes
  a g
  f g
  a2\fermata
  bes4 a8( bes)
  a4 g
  f e
  g( f
  e8 f e4)
  f2\fermata
}

tenorMusic = \relative c' {
  f,4^\mp e
  d c
  f2
  f
  bes4 a
  g f
  e f
  c2
  f2~
  f4 f
  bes a
  a g
  f c
  f f
  f2
  f4 f
  f c
  f^\< f\!
  f2^\mfMarkup
  bes4^\p f
  f e
  f c
  c2~
  c2^\>
  f\fermata\!
}

bassMusic = \relative c' {
  f,4 e
  d c
  f2
  f
  bes4 a
  g f
  e f
  c2
  f2~
  f4 f
  bes a
  a g
  f c
  f f
  f2
  f4 f
  f c
  f f
  f2\fermata
  bes4 f
  f c
  c c
  c2~
  c2
  f\fermata
}

womenWords = \lyricmode {
  Bi -- ne -- cu -- vin -- tea -- ză, su -- fle -- te al meu pe Dom -- nul
  Şi toa -- te ce -- le din -- lă -- un -- trul meu,
  nu -- me -- le cel sfânt al Lui,
  Bi -- ne -- cu -- vân -- tat eşti Doam -- ne.
}
menWords = \womenWords

\include "two-staves.ly"
