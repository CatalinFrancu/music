\version "2.19.80"
myScore = \new Score \with {
  \override SpacingSpanner.shortest-duration-space = #myNoteSpacing
} <<
  \new Staff { \global \monoMusic }
  \addlyrics { \monoWords }
>>

\score {
  \myScore
  \layout { }
  \midi {
    \midiTempo
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
