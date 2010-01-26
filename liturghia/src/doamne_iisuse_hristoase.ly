\version "2.12.0"
\include "defines.ly"
#(define myNoteSpacing 9.0)
\include "preamble.ly"

\header {
  title = "Doamne Iisuse Hristoase"
  composer = "de Gh. Cucu"
}

global = {
  \globalPreamble
  \key a \minor
  \time 3/4
}

womenWords = <<
  \new Lyrics \lyricsto "women" {
    \set stanza = "1. "
    Doam -- ne Ii -- su -- se Hris -- toa -- se, __
    Tu eşti zori prea -- lu -- mi -- noa -- se.
  }
  \new Lyrics \lyricsto "women" {
    \set stanza = "2. "
    Tu eşti ra -- za cea cu -- ra -- tă __
    Şi lu -- mi -- n-a -- de -- vă -- ra -- tă.
  }
  \new Lyrics \lyricsto "women" {
    \set stanza = "3. "
    Dum -- ne -- zeu fi -- ind din fi -- re, __
    Ai lu -- at chip de-o -- me -- ni -- re.
  }
  \new Lyrics \lyricsto "women" {
    \set stanza = "4. "
    Şi Te-ai dat spre răs -- tig -- ni -- re __
    Pen -- tru-a noas -- tră mân -- tu -- i -- re.
  }
  \new Lyrics \lyricsto "women" {
    \set stanza = "5. "
    O, Ii -- su -- se, nu -- me dul -- ce, __
    Ne-ai scă -- pat prin Sfân -- ta-Ţi cru -- ce.
  }
>>

menWords = \new Lyrics \lyricsto "basses" {
  A __ A __ A __ A __ A __
}

womenMusic = \relative {
  \oneVoice
  R2.
  \repeat volta 5 {
    r4 g'4 a4
    a4 e'2
    d4 e2
    c8( b8) a2~
    a4 d4 d4
    e4 c2
    b4 g2
    a4 a2
  }
}

tenorMusic = \relative {
  \voiceOne
  e,2.~^\p
  \repeat volta 5 {
    e4 b'4\rest b4\rest
    e,2.~^\p
    e2.
    a2.~^\p
    a2.
    e2.~
    e2.
    e2.
  }
}

bassMusic = \relative {
  \voiceTwo
  c,2.~
  \repeat volta 5 {
    c4 b'4\rest b4\rest
    c,2.~
    c2.
    f2.~
    f2.
    c2.~
    c2.
    c2.
  }
}

myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #myNoteSpacing
} <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "women" { \global \womenMusic }
    >>
    \womenWords
    
    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \new Voice { \global \bassMusic }
    >>
    \menWords
  >>
>>

\score {
  \myScore
  \layout { }
}

\score {
  \unfoldRepeats
  \myScore
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \womenMusic }
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \tenorMusic }
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \bassMusic }
  \midi { \midiDirectives }
}
