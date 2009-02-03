\version "2.10.13"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Pe-al nostru steag"
  composer = "C. Porumbescu - D. G. Kiriac"
  poet = "Andrei Bîrseanu"
  meter = "Maestoso"
  tagline = ""
}

global = {
  #(set-global-staff-size 17)
  \set Staff.midiInstrument = "clarinet"
  \key as \major
  \time 4/4
  \autoBeamOff
}

stanzaOne = \lyricmode {
  \set stanza = "1."
  Pe-al nos -- tru steag e scris "\"U" -- ni -- re,
  U -- ni -- re-n cu -- get şi-n sim -- "ţiri\""
  Şi sub mă -- rea -- ţa lui um -- bri -- re
  Vom în -- frun -- ta ori -- ce lo -- viri.

  \set stanza = "1.-2."
  A -- ce -- la-n lup -- tă grea se te -- me
  Ce în -- suşi e ră -- tă -- ci -- tor;
  Iar noi, u -- niţi în ori -- ce vre -- me,
  Vom fi, vom fi în -- vin -- gă -- tori! __

  A -- ce -- la-n lup -- tă grea se te -- me
  Ce în -- suşi e ră -- tă -- ci -- tor;
  Iar noi, u -- niţi în ori -- ce vre -- me,
  Vom fi, vom fi în -- vin -- gă -- tori! __
}

stanzaTwo = \lyricmode {
  \set stanza = "2."
  Am în -- ar -- mat a noas -- tră mâ -- nă
  Ca să pă -- zim un scump pă -- mânt;
  Drep -- ta -- tea e a lui stă -- pâ -- nă,
  Iar domn e a -- de -- vă -- rul sfânt.
}

womenMusic = \relative {
  \partial 4 es4^\f

  as4.\accent es8 c8 es8 as8 bes8
  c4\accent^\> as4\accent\! r8 as8 g8 as8
  bes4.^\< a8 bes4 es4\!
  \break
  c2 r4 es,4^\f

  as4.\accent es8^\< c8 es8 as8\! bes8
  c4\accent^\> as4\accent\! r8 as8 g8 f8
  bes4. as8^\> f4 g4
  \break
  es2\! r4 es4^\mf

  bes'4. bes8^\< a8 bes8 c8\! des8
  es4.(^\> c8)\! as8 \breathe as8^\< as8 as8
  bes4\accent c4\accent des4\accent es4\accent
  \break
  f2.^\ff\! \breathe f4^\f

  es4.\accent c8 des4 bes4
  c8. bes16 c8([ des8)] es4 \breathe f4
  es4. c8 des8 c8 bes8 bes8
  \break
  as2~^\> as8\! r8 es4^\mf

  bes'4. bes8^\< a8 bes8 c8\! des8
  es4.(^\> c8)\! as8 \breathe as8^\< as8 as8
  bes4\accent c4\accent des4\accent es4\accent
  \break
  f2.^\ff\! \breathe f4^\f

  es4.\accent c8 des4 bes4
  c8. bes16 c8([ des8)] es4 \breathe f4
  es4. c8 des8 c8^\markup{\large \bold "rall."} bes8 bes8
  as2~ as8 r8 s4
  \bar "|."
}

tenorMusic = \relative {
  \partial 4 es,4^\f

  as4.\accent es8 c8 es8 as8 bes8
  as4\accent^\> as4\accent\! r8 es8 es8 es8
  g4.^\< fis8 g4 g4\!
  as2 r4 es4^\f

  as4.\accent es8^\< c8 es8 as8\! g8
  as4\accent^\> as4\accent\! r8 as8 g8 f8
  d4. d8^\> d4 d4
  es2\! r4 es4^\mf

  g4. g8^\< fis8 g8 as!8\! bes8
  c4.(^\> as8)\! as8 \breathe as8^\< as8 as8
  as4\accent as4\accent bes4\accent c4\accent
  des2.^\ff\! \breathe des4^\f

  c4.\accent as8 bes4 g4
  as8. g16 as8([ bes8)] c4 \breathe des4
  c4. as8 bes8 as8 g8 g8
  as2~^\> as8\! r8 es4^\mf

  g4. g8^\< fis8 g8 as!8\! bes8
  c4.(^\> as8)\! as8 \breathe as8^\< as8 as8
  as4\accent as4\accent bes4\accent c4\accent
  des2.^\ff\! \breathe des4^\f

  c4.\accent as8 bes4 g4
  as8. g16 as8([ bes8)] c4 \breathe des4
  c4. as8 bes8 as8 g8 g8
  as2~ as8 r8 s4
}

bassMusic = \relative {
  \partial 4 es,4^\f

  as4.\accent es8 c8 es8 as8 es8
  as4\accent^\> as4\accent\! r8 c,8 des8 c8
  es4.^\< es8 es4 es4\!
  as2 r4 es4^\f

  as4.\accent es8^\< c8 es8 as8\! es8
  as4\accent^\> as4\accent\! r8 as8 g8 f8
  bes,4. bes8^\> bes4 bes4
  es2\! r4 es4^\mf

  es4. es8^\< es8 des!8 c8\! bes8
  as4(^\> c8[ es8)]\! as8 \breathe as8^\< as8 as8
  as4\accent ges4\accent f4\accent es4\accent
  des2.^\ff\! \breathe des4^\f

  es4.\accent es8 es4 es4
  as8. es16 as4 as4 \breathe des,4
  es4. es8 es8 es8 es8 es8
  as2~^\> as8\! r8 es4^\mf

  es4. es8^\< es8 des!8 c8\! bes8
  as4(^\> c8[ es8)]\! as8 \breathe as8^\< as8 as8
  as4\accent ges4\accent f4\accent es4\accent
  des2.^\ff\! \breathe des4^\f

  es4.\accent es8 es4 es4
  as8. es16 as4 as4 \breathe des,4
  es4. es8 es8 es8 es8 es8
  as2~ as8 r8 s4
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \womenMusic }
    \addlyrics { \stanzaOne }
    \addlyrics { \stanzaTwo }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \stanzaOne }
      \addlyrics { \stanzaTwo }
    >>

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \bassMusic }
      \addlyrics { \stanzaOne }
      \addlyrics { \stanzaTwo }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \context {
    \Score tempoWholesPerMinute = #(ly:make-moment 120 4)
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
  \new Voice { \global \womenMusic }
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
