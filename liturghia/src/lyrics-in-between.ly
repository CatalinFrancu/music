\version "2.19.80"
myScore = \new Score \with {
  \override SpacingSpanner.shortest-duration-space = #myNoteSpacing
} <<
  \new ChoirStaff <<
    \new Staff = "women" <<
      \new Voice = "sopranos" { \voiceOne \global \sopMusic }
      \new Voice { \voiceTwo \global \altoMusic }
    >>

    \allWords

    \new Staff = "men" <<
      \clef "G_8"
      \new Voice { \voiceOne \global \tenorMusic }
      \new Voice { \voiceTwo \global \bassMusic }
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
