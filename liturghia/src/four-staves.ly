\version "2.12.0"
myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #myNoteSpacing
} <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \sopMusic }
    \addlyrics { \sopWords }
    
    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \altoWords }
    
    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorWords }
    >>
    
    \new Staff <<
      \clef bass
      \new Voice { \global \bassMusic }
      \addlyrics { \bassWords }
    >>
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
  \new Voice { \global \sopMusic }
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \altoMusic }
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
