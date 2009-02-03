\version "2.8.6"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  top-margin = 0\in
}

\header {
  title = "Domnuleţ şi Domn din cer"
  composer = "G. Cucu"
  meter = "Mult liniştit şi duios"
  tagline = ""
}

global = {
  #(set-global-staff-size 14)
  \set Staff.midiInstrument = "clarinet"
  \key f \major
  \time 3/4
  \autoBeamOff
}

sopStanzaOne = \lyricmode {
  \set stanza = "1."
  Ma -- re-i sea -- ra de-as -- tă __ sea -- ră,
  Dom -- nu -- leţ şi Domn din cer
  Şi __ nu-i sea -- ra de-as -- tă __ sea -- ră,
  Dom -- nu -- leţ şi Domn din cer. __

  Ci e sea -- ra lui Cră -- ciun, __
  Lui Cră -- ciun ce -- lui bă -- trân, __
  Când s-a năs -- cut Fi -- ul sfânt, __
  Fi -- ul sfânt pe-a -- cest pă -- mânt. __

  Noi __ um -- blăm şi co -- lin -- dăm, __
  Dom -- nu -- leţ şi Domn din cer
  Ces -- tor fe -- ţe ne-n -- chi -- năm, __
  Dom -- nu -- leţ şi Domn din cer. __
  Domn din cer. __
}

sopStanzaTwo = \lyricmode {
  \set stanza = "2."
  Fi -- ul plân -- ge, sta -- re __ n-a -- re,
  Dom -- nu -- leţ şi Domn din cer
  Pe __ bra -- ţe -- le ma -- mei __ sa -- le,
  Dom -- nu -- leţ şi Domn din cer. __

  \set ignoreMelismata = ##t
  Ne-n -- chi -- năm cu să -- nă -- ta -- te,
  Tot de bi -- ne s-a -- veţi par -- te,
  Hris -- tos să vă dea de toa -- te,
  Via -- ţă lun -- gă, să -- nă -- ta -- te.
  \unset ignoreMelismata
}

tenorStanzaOne = \lyricmode {
  Dom -- nu -- leţ şi Domn din cer
  Dom -- nu -- leţ şi Domn din cer. __

  \set stanza = "1."
  Ci e sea -- ra lui Cră -- ciun, __
  Lui Cră -- ciun ce -- lui bă -- trân, __
  Când s-a năs -- cut Fi -- ul sfânt, __
  Fi -- ul sfânt pe-a -- cest pă -- mânt. __

  Noi um -- blăm __ şi co -- lin -- dăm, __
  Dom -- nu -- leţ şi Domn din cer
  Ces -- tor __ fe -- ţe ne-n -- chi -- năm, __
  Dom -- nu -- leţ şi Domn din cer. __
  Domn din cer. __
}

tenorStanzaTwo = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4

  \set stanza = "2."
  \set ignoreMelismata = ##t
  Ne-n -- chi -- năm cu să -- nă -- ta -- te,
  Tot de bi -- ne s-a -- veţi par -- te,
  Hris -- tos să vă dea de toa -- te,
  Via -- ţă lun -- gă, să -- nă -- ta -- te.
  \unset ignoreMelismata
}

bassStanzaOne = \lyricmode {
  Dom -- nu -- leţ şi Domn din cer
  Dom -- nu -- leţ şi Domn din cer. __

  \set stanza = "1."
  Ci e sea -- ra lui Cră -- ciun, __
  Lui Cră -- ciun ce -- lui bă -- trân, __
  Când s-a năs -- cut Fi -- ul sfânt, __
  Fi -- ul sfânt pe-a -- cest pă -- mânt. __

  Noi um -- blăm şi co -- lin -- dăm,
  Dom -- nu -- leţ şi Domn din cer
  Ces -- tor fe -- ţe ne-n -- chi -- năm,
  Dom -- nu -- leţ şi Domn din cer. __
  Domn din cer. __
}

bassStanzaTwo = \tenorStanzaTwo

sopMusic = \relative {
  \set Staff.vocalName = \markup { \column { "S." "A." }}

  \repeat volta 2 {
    \time 3/4
    % Mare-i seara de-astă seară, Domnuleţ şi Domn din cer
    a'8([^\p c8)] g2
    g4 f2
    a8([ c8)] c4.( bes16[ a16)]
    g4 f2
    f4.( g8) f8([ e8)]
    d4 d2
    g4 a2
    a2 bes4\rest
  
    % Şi nu-i seara de-astă seară, Domnuleţ şi Domn din cer.
    a8([ c8)] g2
    g4 f2
    a8([ c8)] c4.( bes16[ a16)]
    g4 f2
    f4.( g8) f8([ e8)]
    d4 d2
    g4 a2
    g4( f4~ f8) bes8\rest

    \time 2/4
     % Ci e seara lui Crăciun, Lui Crăciun celui bătrân,
    \slurDashed
    \tieDashed
    f8^\p f8^\markup{ \bold \large "Meno mosso" } g8 g8
    a8 a8 g8([ c,8)]
    f8 f8 g8 g8
    a8 a8 g8~ g8 \breathe

    % Când s-a născut Fiul sfânt, Fiul sfânt pe-acest pământ.
    f8 f8 g8 g8
    a8 a8 g8([ c,8)]
    f8 f8 g8^\markup{ \bold \large "rit." } g8
    a8 a8 g8~ g8^\fermata
    \slurSolid
    \tieSolid
  }

  % Noi umblăm şi colindăm, Domnuleţ şi Domn din cer,
  \time 3/4
  a8([^\pp c8)]^\markup{ \bold \large "Tempo primo" } g2
  g4 f2^\markup{ \bold \large "poco" }
  a8([ c8)] c4.( bes16[ a16)]
  g4( f2)
  f4.( g8) f8([ e8)]
  d4 d2
  g4 a2
  a2 bes4\rest

  % Cestor feţe ne-nchinăm, Domnuleţ şi Domn din cer, Domn din cer.
  a8([^\ppp c8)] g2
  g4 f2
  a8([ c8)] c4.( bes16[ a16)]
  g4( f2)
  f4.( g8) f8([ e8)]
  d4 d2
  g4 a2
  g4( f4~ f8) bes8\rest

  f2^\pppp f4
  f2.~
  f4 bes4\rest bes4\rest
  \bar "|."
}

altoMusic = \relative {
  \repeat volta 2 {
    \time 3/4
    % Mare-i seara de-astă seară, Domnuleţ şi Domn din cer
    R2. R2. R2. R2.
    a2 c4
    d4 d2
    d8([ e8)] f2
    f2 bes4\rest
  
    % Şi nu-i seara de-astă seară, Domnuleţ şi Domn din cer.
    R2. R2. R2. R2.
    a,2 c4
    d4 d2
    d8([ e8)] f2
    d8([ e8] c4~ c8) bes'8\rest

    \time 2/4
     % Ci e seara lui Crăciun, Lui Crăciun celui bătrân,
    \slurDashed
    \tieDashed
    d,8 d8 e8 e8
    f8 f8 e4
    d8 d8 e8 e8
    f8 f8 e8~ e8

    % Când s-a născut Fiul sfânt, Fiul sfânt pe-acest pământ.
    d8 d8 e8 e8
    f8 f8 e4
    d8 d8 e8 e8
    f8 f8 e8~ e8
    \slurSolid
    \tieSolid
  }

  % Noi umblăm şi colindăm, Domnuleţ şi Domn din cer,
  \time 3/4
  f4 f4( e4)
  d8([ e8)] c2
  es4 es8([ f8] d4)
  d8([ e!8] c2)
  a2 c4
  d4 d2
  d8([ e8)] f2
  f2 bes4\rest

  % Cestor feţe ne-nchinăm, Domnuleţ şi Domn din cer, Domn din cer.
  f4 f4( e4)
  d8([ e8)] c2
  es4 es8([ f8] d4)
  d8([ e!8] c2)
  a2 c4
  d4 d2
  d8([ e8)] f2
  d8([ e8] c4~ c8) bes'8\rest

  c,2 c4
  c2.~
  c4 bes'4\rest bes4\rest
}

tenorMusic = \relative {
  \set Staff.vocalName = "T."

  \repeat volta 2 {
    \time 3/4
    % Mare-i seara de-astă seară, Domnuleţ şi Domn din cer
    R2. R2. R2. R2.
    f,2^\p f4
    f4 f2
    bes4 c2
    c2 r4
  
    % Şi nu-i seara de-astă seară, Domnuleţ şi Domn din cer.
    R2. R2. R2. R2.
    f,2 f4
    f4 f2
    bes4 c2
    bes8([ g8] a4~ a8) r8

    \time 2/4
     % Ci e seara lui Crăciun, Lui Crăciun celui bătrân,
    \tieDashed
    a8^\p a8 c8 c8
    c8 c8 c8~ c8
    a8 a8 c8 c8
    c8 c8 c8~ c8 \breathe

    % Când s-a născut Fiul sfânt, Fiul sfânt pe-acest pământ.
    a8 a8 c8 c8
    c8 c8 c8~ c8
    a8 a8 c8 c8
    c8 c8 c8~ c8^\fermata
    \tieSolid
  }

  % Noi umblăm şi colindăm, Domnuleţ şi Domn din cer,
  \time 3/4
  c4^\pp c4( bes4)
  bes8([ g8)] a2
  c4 c4( a4)
  bes8([ g8] a2)
  f2 f4
  f4 f2
  bes4 c2
  c2 r4

  % Cestor feţe ne-nchinăm, Domnuleţ şi Domn din cer, Domn din cer.
  c4 c4( bes4)
  bes8([ g8)] a2
  c4 c4( a4)
  bes8([ g8] a2)
  f2 f4
  f4 f2
  bes4 c2
  bes8([ g8] a4~ a8) r8

  a2 a4
  a2.~
  a4 r4 r4
}

bassMusic = \relative {
  \set Staff.vocalName = "B."

  \repeat volta 2 {
    \time 3/4
    % Mare-i seara de-astă seară, Domnuleţ şi Domn din cer
    R2. R2. R2. R2.
    d,2^\p a4
    bes4 bes2
    g4 f2
    <<
      {
        \voiceOne
        c'2
      }
      \new Voice = "split" {
        \voiceTwo
        f,2
      }
    >>
    \oneVoice
    r4
  
    % Şi nu-i seara de-astă seară, Domnuleţ şi Domn din cer.
    R2. R2. R2. R2.
    d'2 a4
    bes4 bes2
    g4 f2
    <<
      {
        \voiceOne
        c'4(~ c4~ c8)
      }
      \new Voice = "split" {
        \voiceTwo
        c4( f,4~ f8)
      }
    >>
    \oneVoice
    r8

    \time 2/4
     % Ci e seara lui Crăciun, Lui Crăciun celui bătrân,
    \tieDashed
    d'8^\p d8 c8 c8
    f8 f8 c8~ c8
    d8 d8 c8 c8
    f8 f8 c8~ c8 \breathe

    % Când s-a născut Fiul sfânt, Fiul sfânt pe-acest pământ.
    d8 d8 c8 c8
    f8 f8 c8~ c8
    d8 d8 c8 c8
    <<
      {
        \voiceOne
        f8 f8 c8~ c8^\fermata
      }
      \new Voice = "split" {
        \voiceTwo
        \autoBeamOff
        \tieDashed
        f8 f,8 c'8~ c8
      }
    >>
    \oneVoice
    \tieSolid
  }

  % Noi umblăm şi colindăm, Domnuleţ şi Domn din cer,
  \time 3/4
  <<
    {
      \voiceOne
      c4^\pp c2
      c2 c4
      c4 c2
      c2.
    }
    \new Voice = "split" {
      \voiceTwo
      f,4 f2
      f2 f4
      f4 f2
      f2.
    }
  >>
  \oneVoice
  d'2 a4
  bes4 bes2
  g4 f2
  <<
    {
      \voiceOne
      c'2
    }
    \new Voice = "split" {
      \voiceTwo
      f,2
    }
  >>
  \oneVoice
  r4

  % Cestor feţe ne-nchinăm, Domnuleţ şi Domn din cer, Domn din cer.
  <<
    {
      \voiceOne
      c'4 c2
      c2 c4
      c4 c2
      c2.
    }
    \new Voice = "split" {
      \voiceTwo
      f,4 f2
      f2 f4
      f4 f2
      f2.
    }
  >>
  \oneVoice
  d'2 a4
  bes4 bes2
  g4 f2
  <<
    {
      \voiceOne
      c'4(~ c4~ c8)
    }
    \new Voice = "split" {
      \voiceTwo
      f,4(~ f4~ f8)
    }
  >>
  \oneVoice
  r8

  <<
    {
      \voiceOne
      c'2 c4
      c2.~
      c4
    }
    \new Voice = "split" {
      \voiceTwo
      f,2 f4
      f2.
      f4
    }
  >>
  \oneVoice
  r4 r4
}

myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #5.5
} <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "sopranos" { \global \voiceOne \sopMusic }
      \addlyrics { \sopStanzaOne }
      \addlyrics { \sopStanzaTwo }
      \new Voice = "altos" { \global \voiceTwo \altoMusic }
    >>

    \new Staff <<
      \clef "G_8"
      \new Voice = "tenors" { \global \tenorMusic }
      \addlyrics { \tenorStanzaOne }
      \addlyrics { \tenorStanzaTwo }
    >>
    
    \new Staff <<
      \clef bass
      \new Voice = "bassesOneVoice" { \global \bassMusic }
      \addlyrics { \bassStanzaOne }
      \addlyrics { \bassStanzaTwo }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \tempo 4 = 80
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
