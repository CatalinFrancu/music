\version "2.10.33"
\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0.25\in
  bottom-margin = 0.5\in
}

mixedTimeSigMarkup = \markup {
  \override #'(baseline-skip . 2) \number {
    \column { "4" "4" }
    \column { "2" "4" }
    \hspace #1.0
  }
}

global = {
  #(set-global-staff-size 17)
  \set Staff.midiInstrument = "clarinet"
  \key d \minor
  \override Staff.TimeSignature #'text = #mixedTimeSigMarkup
  \time 2/4
  \autoBeamOff
}

rallMarkup = \markup {
  \bold \bigger "rall..."
}

\header {
  title = "It Is Truly Met"
  subtitle = "Romanian Theotokion in the 5th tone"
  composer = "I. Popescu-Pasărea"
  arranger = "arranged by N. Moldoveanu"
  opus = "translated by R. Balaban"
  meter = "Moderato"
}

womenWords = \lyricmode {
  It is tru -- ly meet, __ It is tru -- ly meet __ to bless__ Thee the The -- o -- to -- kos,
  Ev -- er bless -- ed __ Ev -- er bless -- ed and most __ blame -- less and Moth -- er, the Moth -- er of __ our __ God.
  More __ hon -- o -- ra -- ble, more __ hon -- o -- ra -- ble than the Che -- ru -- bim
  And be -- yond com -- pare more__ glo -- ri -- ous, more __ glo -- ri -- ous than the Se -- ra -- phim. __
  Who with -- out cor -- rup -- tion __ gav -- est birth __ to __ God __ the __ Word,
  The ve -- ry The -- o -- to -- kos, thee __ do we mag -- ni -- fy, __ mag -- ni -- fy, __ mag -- ni -- fy.
}

menWords = \lyricmode {
  It is tru -- ly meet, __ It is tru -- ly meet to bless__ Thee the The -- o -- to -- kos,
  Ev -- er bless -- ed __ Ev -- er bless -- ed and most __ blame -- less and Moth -- er, the Moth -- er of __ our God.
  More __ hon -- o -- ra -- ble, more __ hon -- o -- ra -- ble than the Che -- ru -- bim
  And more __ glo -- ri -- ous, more __ glo -- ri -- ous than the Se -- ra -- phim. __
  Who with -- out cor -- rup -- tion __ gav -- est birth __ to __ God __ the __ Word,
  The ve -- ry The -- o -- to -- kos, thee __ do we mag -- ni -- fy, __ mag -- ni -- fy, mag -- ni -- fy.
}

sopMusic = \relative {
  \cadenzaOn
  #(set-accidental-style 'forget)

  % It is truly meet
  a'8 ^\mp a8 \bar "|"
  d4(^\accent cis8[ d8] a4) a4 \bar "|"
  g8([ bes8 a8 g8] f8[ e8 d8 e8] \bar "|"
  f2 g8[ a8] g4 \bar "|"
  a2)

  % It is truly meet to bless thee the Theotokos
  a4 a4 \bar "|"
  b4 cis4 \bar "|"
  d8([ cis8 d8 bes] a4) a4 \bar "|"
  bes8([ a8 g8 a8)] f4 bes4 \bar "|"
  a4 g4 f8([ e8 d8 cis8)] \bar "|"
  d4. bes'8\rest \bar "|"

  % Ever blessed, Ever blessed
  e,8 f8 g4( f8[ e8)] d8([ e8)] \bar "|"
  f4 g4 \bar "|"
  a8([ bes8 a8 g8] f8[ g8 a8 bes8)] \bar "|"
  a4.

  % and most blameless
  a8 \bar "|"
  bes4( a4 bes4 cis4) \bar "|"
  d4.( cis8
  #(set-accidental-style 'no-reset)
  b8[ cis8 d8 e8)] \bar "|"
  #(set-accidental-style 'forget)
  d4.

  % and Mother, the Mother of our God.
  cis8 \bar "|"
  d8([ cis8 d8 bes8)] a2 \bar "|"
  b4\rest a4 \bar "|"
  bes8([ a8 g8 a8] f4) bes4 \bar "|"
  a4( g4) f8[( e8 d8 cis8)] \bar "|"
  d2. b'4\rest \bar "|"

  % More honorable, more honorable than the cherubim
  a4( g4) f8([ g8)] e8 f8 \bar "|"
  d2 d4( e4) \bar "|"
  f4( g4) f8([ e8)] d8 e8 \bar "|"
  f4 g4 \bar "|"
  a8([ bes8 a8 g8)] f8([ g8 a8 bes8)] \bar "|"
  a4.

  % And beyond compare more glorious, more glorious
  a16 a16 \bar "|"
  d4 e4 \bar "|"
  f4 e8([ d8)] cis4 d4 \bar "|"
  a2 \bar "|"
  bes4( a4) bes4( cis4) \bar "|"
  d4.( cis8
  #(set-accidental-style 'no-reset)
  b8[ cis8 d8 e8)] \bar "|"
  #(set-accidental-style 'forget)
  d4. bes8\rest \bar "|"

  % than the Seraphim.
  a4 g4 f4 bes4 \bar "|"
  a4( g4 f8[ e8 d8 cis8] \bar "|"
  d2) \bar "|"

  % Who without corruption gavest birth to God the Word
  d4. e8 f4 g4 \bar "|"
  f8([ e8)] d8([ e8)] f4 g4 \bar "|"
  a8([ bes8)] a8([ g8)] f8([ g8)] a8([ bes8)] \bar "|"
  a4.

  % pe Dumnezeu Cuvântul ai născut,
  % a8 b4 cis4 \bar "|"
  % d8([ cis8 d8 bes8)] a4( g4) \bar "|"
  % bes8([ a8 g8 a8)] f4( bes4) \bar "|"
  % a4( g4) f8([ e8 d8 cis8)] \bar "|"
  % d4.

  % The very Theotokos thee
  a8 \bar "|"
  d4 cis4 \bar "|"
  d8([ cis8 d8)] bes8 a4 a4 \bar "|"
  b2( cis8[ d8]
  #(set-accidental-style 'no-reset)
  cis4 \bar "|"
  #(set-accidental-style 'forget)
  d2)

  % do we magnify,
  a4 a4 \bar "|"
  bes8([ a8 g8 a8] f4) bes4 \bar "|"
  a4( g4 f8[ e8 d8 cis8] \bar "|"
  d2)

  % do we magnify, do we magnify.
  f4(^\rallMarkup g4) \bar "|"
  a4.( bes8) a8([ g8 f8 e8] \bar "|"
  d2) \bar "|"
  cis4( d4) e4( f4) \bar "|"
  d2.^\fermata b'4\rest \bar "|."
}

altoMusic = \relative {
  \cadenzaOn
  #(set-accidental-style 'forget)

  % Cuvine-se cu adevărat
  a'8 a8
  a2( f4) f4
  g8([ bes8 a8 g8] f8[ e8 d8 e8]
  f2 e8[ f8] e4
  f2)

  % să te fericim Născătoare de Dumnezeu
  f4 f4
  g4 a4
  a4.( g8 f4) f4
  g8([ f8 e8 f8)] d4 g4
  f4 e4 d8([ e8 d8 cis8)]
  d4. bes'8\rest

  % cea pururea fericită
  e,8 f8 g4( f8[ e8)] d8([ e8)]
  f4 e4
  f8([ g8 f8 e8] f8[ g8 a8 bes8)]
  a4.

  % şi prea nevinovată
  a8
  bes4( a4 g4 a4)
  a1
  a4.

  % şi Maica Dumnezeului nostru.
  a8
  a4.( bes8) a2
  bes4\rest f4
  g8([ f8 e8 f8] d4) g4
  f4( e4) d8([ e8 d8 cis8)]
  d2. b'4\rest

  % Ceea ce eşti mai cinstită decât heruvimii
  a4( g4) f8([ g8)] e8 f8
  d2 d4( e4)
  f4( g4) f8([ e8)] d8 e8
  f4 e4
  f8([ g8 f8 e8)] f8([ g8 a8 bes8)]
  a4.

  % şi mai mărită făr' de-asemănare
  a16 a16
  d4 cis4
  d4 cis8([ d8)] a4 a4
  a2
  bes4( a4) g4( a4)
  a1
  a4. bes8\rest

  % decât serafimii;
  a4 g4 f4 g4
  f4( e4 d8[ e8 d8 cis8]
  d2)

  % carea fără stricăciune
  d4. e8 f4 g4
  f8([ e8)] d8([ e8)] f4 e4
  f8([ g8)] f8([ e8)] d8([ e8)] f8([ g8)]
  f4.

  % pe Dumnezeu Cuvântul ai născut,
  %f8 g4 a4
  %a4.( bes8) a4( g4)
  %bes8([ a8 g8 a8)] f4( g4)
  %f4( e4) d8([ e8 d8 cis8)]
  %d4.

  % pe tine cea cu adevărat
  a8
  a4 a4
  a4. bes8 f4 f4
  g2( a2
  a2)

  % Născătoare de Dumnezeu
  f4 f4
  g8([ f8 e8 f8] d4) g4
  f4( e4 d8[ e8 d8 cis8]
  d2)

  % te mărim, te mărim
  d4( e4)
  f4.( g8) f8([ e8 d8 cis8]
  d2)
  cis4( d4) cis2
  d2. b'4\rest
}

tenorMusic = \relative {
  \cadenzaOn
  #(set-accidental-style 'forget)

  % Cuvine-se cu adevărat
  a8 a8^\mp
  f4( e8[ f8] d4) d4
  e8([ g8 f8 e8] f8[ e8 d8 e8]
  f2 c2
  f2)
  
  % să te fericim Născătoare de Dumnezeu
  f4 f4
  e4 e4
  d2. d4
  g8([ f8 e8 f8)] d4 g4
  f4 e4 a,2
  d4. d8\rest

  % cea pururea fericită
  e8 f8 g4( f8[ e8)] d8([ e8)]
  f4 c4
  f8([ g8 f8 c8] d8[ e8 f8 g8)]
  f4.

  % şi prea nevinovată
  f8
  g4( f4 e2)
  f4.( e8 d8[ e8 f8 g8)]
  f4.

  % şi Maica Dumnezeului nostru.
  a8
  f8([ e8 d8 g8)] f2
  d4\rest d4
  g8([ f8 e8 f8] d4) g4
  f4( e4) a,2
  d2. d4\rest
  
  % Ceea ce eşti mai cinstită decât heruvimii
  a'4( g4) f8([ g8)] e8 f8
  d2 d4( e4)
  f4( g4) f8([ e8)] d8 e8
  f4 c4
  f8([ g8 f8 c8)] d8([ e8 f8 g8)]
  f4.

  % şi mai mărită făr' de-asemănare
  d8\rest
  d4\rest d8\rest a'8
  a4 a4 a4.( g8)
  f2
  g4( f4) e2
  f4.( e8 d8[ e8 f8 g8)]
  f4. d8\rest

  % decât serafimii;
  f4 e4 f4 g4
  f4( e4 d4 a4
  d2)

  % carea fără stricăciune
  d4. e8 f4 g4
  f8([ e8)] d8([ e8)] f4 c4
  f8([ g8)] f8([ c8)] d8([ e8)] f8([ g8)]
  f4.

  % pe Dumnezeu Cuvântul ai născut,
  %f8 e4 e4
  %d8([ e8 f8 g8)] f4( e4)
  %g8([ f8 e8 f8)] d4( g4)
  %f4( e4) a,2
  %d4.

  % pe tine cea cu adevărat
  a8
  f4 e4
  d8([ e8 f8)] g8 f4 f4
  e1(
  f2)

  % Născătoare de Dumnezeu
  d4 d4
  g8([ f8 e8 f8] d4) g4
  f4( e4 a,2
  d1
  d2)
  
  % te mărim, te mărim
  a4 a4
  d2
  a2 a2
  d2. d4\rest
}

bassMusic = \relative {
  \cadenzaOn
  #(set-accidental-style 'forget)

  % Cuvine-se cu adevărat
  a8 a8
  d,2( d4) d4
  e8([ g8 f8 e8] f8[ e8 d8 e8]
  f2 c2
  f2)
  
  % să te fericim Născătoare de Dumnezeu
  f4 f4
  e4 e4
  d2. d4
  g8([ f8 e8 f8)] d4 g4
  f4 e4 a,2
  d4. d8\rest

  % cea pururea fericită
  e8 f8 g4( f8[ e8)] d8([ e8)]
  f4 c4
  f8([ g8 f8 c8] d8[ e8 f8 g8)]
  f4.

  % şi prea nevinovată
  f8
  g4( f4 e4 a,4)
  d4.( e8 f8[ e8 d8 cis8)]
  d4.

  % şi Maica Dumnezeului nostru.
  a'8
  f8([ e8 d8 g8)] f2
  d4\rest d4
  g8([ f8 e8 f8] d4) g4
  f4( e4) a,2
  d2. d4\rest
  
  % Ceea ce eşti mai cinstită decât heruvimii
  a'4( g4) f8([ g8)] e8 f8
  d2 d4( e4)
  f4( g4) f8([ e8)] d8 e8
  f4 c4
  f8([ g8 f8 c8)] d8([ e8 f8 g8)]
  f4.

  % şi mai mărită făr' de-asemănare
  d8\rest
  d4\rest d8\rest a'8
  d,8([ f8)] a4 a,2
  d2
  g4( f4) e2
  d1
  d4. d8\rest

  % decât serafimii;
  d4 e4 f4 g4
  f4( e4 d4 a4
  d2)

  % carea fără stricăciune
  d4. e8 f4 g4
  f8([ e8)] d8([ e8)] f4 c4
  f8([ g8)] f8([ c8)] d8([ e8)] f8([ g8)]
  f4.

  % pe Dumnezeu Cuvântul ai născut,
  %f8 e4 e4
  %d8([ e8 f8 g8)] f4( e4)
  %g8([ f8 e8 f8)] d4( g4)
  %f4( e4) a,2
  %d4.

  % pe tine cea cu adevărat
  a8
  f4 e4
  d8([ e8 f8)] g8 f4 f4
  e2( a,2
  d2)

  % Născătoare de Dumnezeu
  d4 d4
  g8([ f8 e8 f8] d4) g4
  f4( e4 a,2
  d1
  d2)
  
  % te mărim, te mărim
  a4 a4
  d2
  a2 a2
  d2.^\fermata d4\rest
}

myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #5.0
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

midiOutput = \midi {
  \context {
    \Score tempoWholesPerMinute = #(ly:make-moment 72 4)
  }
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
