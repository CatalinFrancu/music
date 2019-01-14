\version "2.19.80"

globalPreamble = {
  \set Staff.midiInstrument = "clarinet"
  \override BreathingSign.text = \breathMarkup
}

midiDirectives = \midi {
  \midiTempo
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\paper {
  ragged-right = #raggedRight
}
