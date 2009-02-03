\version "2.8.6"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0\in
}

\header {
  title = "We Wish You a Merry Christmas"
  composer = "Traditional English Folk Song"
  tagline = ""
}

global = {
  #(set-global-staff-size 16)
  \set Staff.midiInstrument = "clarinet"
  \key as \major
  \time 3/4
  \autoBeamOff
}

words = \lyricmode {
  \set ignoreMelismata = ##t
  We wish you a mer -- ry Christ -- mas,
  we wish you a mer -- ry Christ -- mas,
  we wish you a mer -- ry Christ -- mas
  and a hap -- py New Year!

  Good tid -- ings to you, wher -- ev -- er you are,
  Good tid -- ings for Christ -- mas and a hap -- py New Year!

  We
}

sopMusic = \relative {
  \voiceOne
  \partial 4 es4
  as4^\markup{
    \hspace #-3.5
    \musicglyph #"scripts.segno"
  } as8[ bes8] as8[ g8]
  f4 f4 f4
  bes4 bes8[ c8] bes8[ as8]
  g4 es4 es4
  \break

  c'4 c8[ des8] c8[ bes8]
  as4 f4 es8[ es8]
  f4 bes4 g4
  as2^\markup{ Fine } es4
  \break

  as4 as4 as4
  g2 g4
  as4 g4 f4
  es2 bes'4
  \break

  c4 bes4 as4
  es'4 es,4 es8[ es8]
  f4 bes4 g4
  as2 es4^\markup {
    \hspace #-8.0
    \raise #2.0 D'al
    \hspace #0.5
    \raise #3.0 \musicglyph #"scripts.segno"
    \raise #2.0 { al Fine }
  }
  \bar "|."
}

altoMusic = \relative {
  \voiceTwo
  \partial 4 es4
  c4 c8[ c8] c8[ c8]
  des4 des4 es4
  d4 d8[ d8] d8[ d8]
  es4 es4 es4

  e4 e8[ e8] e8[ e8]
  f4 c4 es8[ es8]
  des4 f4 es4
  es2 c4

  es4 es4 es4
  es2 es4
  d4 d4 d4
  es2 es4

  es4 des4 c4
  es4 es4 es8[ es8]
  des4 f4 es4
  es2 es4
}

tenorMusic = \relative {
  \voiceOne
  \partial 4 es,4
  es4 es8[ es8] as8[ as8]
  as4 as4 a4
  bes4 f8[ as8] g8[ f8]
  es4 g4 g4

  g4 g8[ g8] c8[ c8]
  c4 as4 as8[ as8]
  as4 des4 des4
  c2 as4

  c4 c4 c4
  bes2 bes4
  bes4 bes4 bes4
  g2 g4

  as4 as4 as4
  as4 as4 as8[ as8]
  as4 des4 des4
  c2 es,4
}

bassMusic = \relative {
  \voiceTwo
  \partial 4 es,4
  as,4 as8[ as8] as8[ as8]
  des4 des4 c4
  bes4 bes8[ bes8] bes8[ bes8]
  es4 es4 des4

  c4 c8[ c8] c8[ c8]
  f4 f4 c8[ c8]
  des4 bes'4 es,4
  as2 as4

  as4 as4 as4
  bes,2 bes4
  bes4 bes4 bes4
  es2 es4

  as,4 as4 as4
  c4 c4 c8[ c8]
  des4 bes4 es4
  as2 es4
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \global \sopMusic }
      \addlyrics { \words }
      \new Voice { \global \altoMusic }
    >>

    \new Staff <<
      \clef bass
      \new Voice { \global \tenorMusic }
      \new Voice { \global \bassMusic }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \tempo 4 = 140
}

\score {
  \unfoldRepeats
  \myScore
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \sopMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \altoMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \tenorMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \bassMusic }
  \midi { \midiOutput }
}
