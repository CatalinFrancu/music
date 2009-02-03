\version "2.8.6"

\paper {
  #(set-paper-size "letter")
  between-system-padding = 10\mm
  left-margin = 1\in
  line-width = 7\in
  ragged-bottom = ##t
  top-margin = 0.5\in
}

\header {
  title = "Şi ne lasă gazdă-n casă"
  subtitle = "Colind din Bihor"
  arranger = "Prelucrare de N. Lungu"
  meter = \markup { Moderato \note #"4" #1 = 100 }
  tagline = ""
}

global = {
  #(set-global-staff-size 16)
  \override Score.VerticalAxisGroup #'remove-first = ##t
  \set Staff.midiInstrument = "clarinet"
  \autoBeamOff
}

soloStanzaOne = \lyricmode {
  \set stanza = "1."
  Şi ne la -- să gaz -- dă-n ca -- să, Flori din -- tr-al -- te flori, __
}

soloStanzaTwo = \lyricmode {
  \set stanza = "2."
  C-a -- fa -- ră ploa -- ie de var -- să
}

soloStanzaThree = \lyricmode {
  \set stanza = "3."
  Şi ne pi -- că pi -- cu -- ri -- li
}

soloStanzaFour = \lyricmode {
  \set stanza = "4."
  Du -- pă toa -- te stre -- şi -- ni -- li,
}

soloStanzaFive = \lyricmode {
  \set stanza = "5."
  Da -- că, gaz -- dă, nu nie cre -- zî,
}

soloStanzaSix = \lyricmode {
  \set stanza = "6."
  Ieşi a -- fa -- ră şi nie vie -- zî,
}

soloStanzaSeven = \lyricmode {
  \set stanza = "7."
  C-am ple -- cat să co -- lin -- dă -- mu,
}

soloStanzaEight = \lyricmode {
  \set stanza = "8."
  Pe Dom -- nu să lă -- u -- dă -- mu,
}

soloStanzaNine = \lyricmode {
  \set stanza = "9."
  Pe Dom -- nu -- lu ceal prea -- bu -- nu,
}

soloStanzaTen = \lyricmode {
  \set stanza = "10."
  Că ni-o a -- dus iar Cră -- ciu -- nu.
}

sopWords = \lyricmode {
  Flori din -- tr-al -- te flori,
  Flori din -- tr-al -- te flori,
  Flori __
  Flori __
  Flori din -- tr-al -- te flori, din -- tr-al -- te flori.  
  Flori __
  Flori __
}

altoWords = \lyricmode {
  Flori __
  Flori __
  Flori __
  Flori __
  Flori __ din -- tr-al -- te flori.
  Flori __
  Flori __
}

tenorWords = \lyricmode {
  Flori din -- tr-al -- te flori,
  Flori din -- tr-al -- te flori, __
  Flori __
  flori __
  Flori,
  flori din -- tr-al -- te flori.
  Flori, __
  flori,
  flori, __
  flori, __
  flori. __
}

bassWordsOne = \lyricmode {
  \skip 2.
  Flori, __
  Flori.
}

bassWordsTwo = \lyricmode {
  Flori,
  Flori din -- tr-al -- te flori,
  Flori din -- tr-al -- te flori,
  Flori, __
  flori, __
  Flori, __
  flori.
  Flori. __
}

pppAndFermata = \markup {
  \hspace #-7.5
  \musicglyph #"p"
  \hspace #-1.0
  \musicglyph #"p"
  \hspace #-1.0
  \musicglyph #"p"
  \hspace #2.0
  \musicglyph #"scripts.ufermata"
}

rotatedText = \markup {
  \hspace #-12.5
  \postscript #"gsave /Arial findfont 3.0 output-scale div scalefont setfont 90 rotate (                    Doi colindatori) show grestore"
}

soloMusic = \relative {
  \key g \minor
  \time 3/4

  R2. * 8

  \repeat volta 10 {
    f'8(^\markup {
      \hspace #-6.0
      \musicglyph #"m"
      \hspace #-1.0
      \musicglyph #"f"
      \hspace #1.5
      \musicglyph #"scripts.ufermata"
    } \grace d8)^\markup {
      \bold "Molto rubato, rustico"
    } d8 cis8 bes8 a8 bes8
    d2 cis4^\shortfermata

    bes4.^\markup { \bold "Primo tempo" } a8 g8 g8
    d'2.~^\>
    d4\! r4 r4
  } \alternative {
    { R2. }
  }

  R2. * 8
}

sopMusicOne = \relative {
  \key g \minor
  \time 3/4
  \set Staff.vocalName = "S."

  \voiceOne
  g'4.^\p^\< g8\! d8^\> d8
  g2.\!
  g4.^\< g8\! d8^\> d8
  \break
  g2.\!

  g4(^\accent d'2)~
  d2~^\> d8\! bes8\rest
  g4(^\accent d'2)~
  d2.^\>~
  \break

  \repeat volta 10 {
    d2.~\!^\pp^\rotatedText
    d2.~
    \break
    d8 bes8\rest bes4\rest bes4\rest
    bes4.^\mf^\< a8\! g8^\> g8
    d'2.~\!
  } \alternative {
    { d2.^\> }
  }
  \bar ":|"
  \break

  g,4(\!^\mp^\markup{\column { Coda " " } }
  d'2)~
  d2.^\>
  g,4(\! d'2)~
  d2.~^\>
  \break

  d2.~\!^\p^\>
  d2.~\!^\pp
  d2.~^\markup { \bold "poco rit..." }
  d4^\pppAndFermata bes4\rest bes4\rest
  \bar "|."
}

sopMusicTwo = \relative {
  \time 3/4
  \voiceTwo
  g'4. g8 d8 d8
  g2.
  g4. g8 d8 d8
  g2.

  g4( bes2)~
  bes2~ bes8 bes8\rest
  g4( bes2)~
  bes2.~

  \repeat volta 10 {
    bes2.~
    bes2.~
    bes8 bes8\rest bes4\rest bes4\rest
    g4. d8 g8 g8
    g4. a8 bes8 bes8
  } \alternative {
    { bes2. }
  }

  g4( bes2)~
  bes2.
  g4( bes2)~
  bes2.~
  bes2.~
  bes2.~
  bes2.~
  bes4_\fermata bes4\rest bes4\rest
}

altoMusic = \relative {
  \time 3/4
  \key g \minor
  \set Staff.vocalName = "A."
  <<
    { d2.~^\p }
    { s4.^\< s8\! s8^\> s8 }
  >>
  d2.\!
  <<
    { d2.~^\p }
    { s4.^\< s8\! s8^\> s8 }
  >>
  d2.\!

  g2.~
  g2.^\>
  g2.~\!
  g2.~

  \repeat volta 10 {
    g2.~^\pp
    g2.~
    g8 r8 r4 r4
    d2.~^\mp
    d4.^\< d8\! g8^\> g8\!
  } \alternative {
    { g2.~ }
  }

  g2.~^\mp
  g2.^\>
  g2.~\!
  g2.~^\>
  g2.~\!
  g2.~^\pp
  g2.~
  g4^\pppAndFermata r4 r4
}

tenorMusic = \relative {
  \key g \minor
  \time 3/4
  \set Staff.vocalName = "T."
  bes4.^\p^\accent^\< bes8\! c8^\> c8
  bes2.\!
  bes4.^\< bes8\! c8^\> c8
  bes2.~\!

  bes4 r4 r4
  d2.~
  d4 r4 r4
  d2.~

  \repeat volta 10 {
    d2.~^\pp
    d2.~
    d8 r8 r4 r4
    g,2.^\mp
    bes4.^\mf_\accent^\< a8\! g8^\> g8\!
  } \alternative {
    { d'2. }
  }

  R2.
  d2.~^\p^\accent
  d4 r4 r4
  d2.^\accent
  g,4(_\accent d'2)
  g,4(^\pp_\accent d'2)
  g,4(_\accent d'2)~
  d4^\pppAndFermata r4 r4  
}

bassMusicOne = \relative {
  \key g \minor
  \time 3/4
  \set Staff.vocalName = "B."
  \voiceOne
  s2. s2. s2. s2. s2. s2. s2. s2.

  \repeat volta 10 {
    s2. s2. s2. s2. s2.
  } \alternative {
    { s2. }
  }

  g2.^\mp
  d4(^\accent^\p g2)~
  g2.
  d4(^\accent g2)~
  g2.~
  g2.~^\pp
  g2.~
  g4^\pppAndFermata d4\rest d4\rest
}

bassMusicTwo = \relative {
  \time 3/4
  \voiceTwo
  g2.^\p^\accent
  g4.^\accent^\< g8\! d8^\> d8\!
  g2.
  g4. g8 d8 d8

  g2.
  d4( g2)~
  g2.
  d4( g2)~

  \repeat volta 10 {
    g2.~^\pp
    g2.~
    g2.
    g2.~^\mp
    g2.
  } \alternative {
    { g2. }
  }

  g,2.~
  g2.~
  g2.~
  g2.~
  g2.~
  g2.~
  g2.~
  g4_\fermata d'4\rest d4\rest
}

myScore = \new Score <<
  \new Staff \new Voice { \global \soloMusic }
  \addlyrics { \global \soloStanzaOne }
  \addlyrics { \global \soloStanzaTwo }
  \addlyrics { \global \soloStanzaThree }
  \addlyrics { \global \soloStanzaFour }
  \addlyrics { \global \soloStanzaFive }
  \addlyrics { \global \soloStanzaSix }
  \addlyrics { \global \soloStanzaSeven }
  \addlyrics { \global \soloStanzaEight }
  \addlyrics { \global \soloStanzaNine }
  \addlyrics { \global \soloStanzaTen }

  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \global \sopMusicOne }
      \new Voice { \global \sopMusicTwo }
      \addlyrics { \sopWords }
    >>
    
    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \altoWords }
    
    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorWords }
    >>
    
    \new Lyrics = "bassLyricsOne"
    \new Staff <<
      \clef bass
      \new Voice = "bassVoiceOne" { \global \bassMusicOne }
      \new Voice { \global \bassMusicTwo }
      \addlyrics { \bassWordsTwo }
    >>
    \context Lyrics = bassLyricsOne \lyricsto bassVoiceOne \bassWordsOne
  >>
>>

\score {
  \myScore
  \layout {
    \context {
      \RemoveEmptyStaffContext
    }
  }
}

midiOutput = \midi {
  \tempo 4 = 100
  \context {
    \Voice
    \remove "Dynamic_performer"
    \remove "Span_dynamic_performer"
  }
}

\score {
  \unfoldRepeats
  \myScore
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \soloMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \sopMusicOne }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \sopMusicTwo }
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
  \new Voice { \global \bassMusicOne }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \bassMusicTwo }
  \midi { \midiOutput }
}
