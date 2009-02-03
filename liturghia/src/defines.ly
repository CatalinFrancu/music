\version "2.10.10"
#(set-global-staff-size 14)
#(define myNoteSpacing 7.0)
#(define raggedRight #f)

atempoMarkup = \markup {
  \italic \bold \bigger "a tempo"
}

breathMarkup = \markup {
  \huge \bold ","
}

crescendoMarkup = \markup{
  \italic \bold \bigger "cresc."
}

descrescendoMarkup = \markup{
  \italic \bold \bigger "descrescendo"
}

mixedTimeSigMarkup = \markup {
  \override #'(baseline-skip . 2) \number {
    \column { "4" "4" }
    \column { "2" "4" }
    \hspace #1.0
  }
}

midiTempo = 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 108 4)
      }
    }



prepareBox = {
  % The box-padding property is documented, but causes warnings
  % \once \override TextScript #'box-padding = #0.4
  \once \override TextScript #'font-size = #4
}

rallMarkup = \markup {
  \bold \bigger "rall..."
}

rarMarkup = \markup {
  \bold \bigger "rar"
}

ritMarkup = \markup {
  \italic \bold \bigger "rit."
}

wholeNotesOverlap = {
  \once \override NoteColumn #'force-hshift = #-0.5
}
