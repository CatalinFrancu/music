\version "2.12.0"
myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #myNoteSpacing
} <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \voiceOne \global \sopMusic }
      \addlyrics { \womenWords }
      \new Voice { \voiceTwo \global \altoMusic }
    >>

    \new Staff = "men" <<
      \clef bass
      \new Voice { \voiceOne \global \tenorMusic }
      \new Voice { \voiceTwo \global \bassMusic }
      \addlyrics { \menWords }
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
