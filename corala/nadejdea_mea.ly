\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7.1\in
  print-page-number = false
  top-margin = 0.3\in
  bottom-margin = 0.3\in
}

\header {
  title = "Nădejdea mea"
  composer = \markup \center-column { "ar. prof. T. Sechei" \small "Dej, 20 martie 2001" }
  tagline = ""
  meter = "Religioso"
}

global = {
  \key g \major
  \time 4/4
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
}

stanzaOne = \lyricmode {
  Nă -- dej -- dea mea E nu -- mai la Ti -- ne Doam -- ne;
  că Tu ai  zis,  că Tu ai  zis, când ai ve -- nit în lu -- me:
  „Ve -- niți, ve -- niți la Mi -- ne,
  ve -- niți, ve -- niți la Mi -- ne,
  Toți cei o -- ste -- niți și îm -- po -- vă -- rați
  și Eu vă voi o -- dih -- ni pe voi”.
  Ve- voi”.
  A -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a.
}

sopranMusic = \relative c'' {
  \partial 4 b4^\mp c2 b4( a) b2. r4 r1 r1
  e,4 fis g a^\< b2. a4\! g2^\>( fis\!) e2. b'4 e2^\f d4( c) b2. b4 e2 d4( c) b2.
  e,4 e^\mf g b a g2( fis) e2. b'4

  \repeat volta 2 {
   e2.^\f b4 d4. d8 c2 b2. b4 e2. b4 d4. d8 c2 b2. r4 e,^\mf fis g^\< a b2.\!
   r4 e, fis g^\< a b2.\! a4
   \override BreathingSign.text = \markup {
             \musicglyph "scripts.caesura.straight" }
   b2 \fermata \breathe
   a4 g^\> fis a g fis\!
  }
  \alternative {
  	  { e2. b'4 }
  	  { e,2. r4 }
  }
  b'4^\p b c a b2. r4 e, fis g a b2. r4 c^\> b8[( a)] g4 fis^\pp e2. \fermata
  \bar "|."
}

altMusic = \relative c'' {
  \partial 4 b4 a2 g4( fis) e2. r4 r1 r1
  e4 dis e fis g2. fis4 e2( dis) e2. e4 g2 fis d2. e4 g2 fis d2. e4 e g g fis
  e2( dis) e2. e4

  \repeat volta 2 {
    g2. g4 g4. g8 fis2 d2. e4 g2. g4 g4. g8 fis2 d2. r4 e dis e fis g2. r4 e
    dis e fis g2. fis4 g2 fis4 e dis fis e dis
  }
  \alternative {
  	  { e2. e4 }
  	  { e2. r4 }
  }
  g4 g g fis g2. r4 e dis e fis g2. r4 a g8[( fis)] e4 dis e2.
}

tenorMusic = \relative c' {
  \partial 4 r4 r1 r2 r4 b4
  c2 b4( a) b2. r4 g a b d d2. c4 b2( a) g2. g4 c2 b4( a) g2. g4 c2 b4( a) g2.
  g4 g b d c b2( a) g2. g4

   \repeat volta 2 {
    c2. g4 b4. b8 a2 g2. g4 c2. g4 b4. b8 a2 g2. r4 g a b d d2. r4 g, a b d d2.
    d4 d2 c4 b b b b a
    }
     \alternative {
  	  { g2. g4 }
  	  { g2. r4 }
     }
  b4 b a c b2. r4 g a b d d2. r4 d d8[( c)] b4 a g2.
}

bassMusic = \relative c {
  \clef bass \partial 4 r4 r1 r2 r4 b'4
  a2 g4( fis) e2. r4 e b e d g2. a4 b2( b,) e2. e4 c2 d g2. e4  c2 d g2. e4
  e d g a b2( b,) e2. e4

  \repeat volta 2 {
   c2. d4 g4. g8 d2 g2. e4 c2. d4 g4. g8 d2 g2. r4 e b e d g2. r4 e b e d g2.
   d4 d2 dis4 e b b b b
  }
  \alternative {
  	  { e2. e4 }
  	  { e2. r4 }
  }
  e4 e e e e2. r4 e b e d g2. r4 fis g8[( a)] b4 b, e2.
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff <<
    \set Staff.instrumentName = #"S"
    \new Voice { \global \sopranMusic }
    \addlyrics { \stanzaOne }

    \new Staff <<
    \set Staff.instrumentName = #"A"
    \new Voice { \global \altMusic }
    %  \addlyrics { \stanzaOne }

    \new Staff <<
    \set Staff.instrumentName = #"T"
    \clef "G_8"
    \new Voice { \global \tenorMusic }
      \addlyrics { \stanzaOne }

    \new Staff <<
    \set Staff.instrumentName = #"B"
    \new Voice { \global \bassMusic }
    %  \addlyrics { \stanzaOne }
    >>
    >>
    >>
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \tempo 4 = 80
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}


\score {
  \unfoldRepeats
  \myScore
  \midi { \midiOutput }
}


\score {
  \unfoldRepeats
  \new Voice { \global \sopranMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \altMusic }
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
