\version "2.19.80"
\include "defines.ly"
#(set-global-staff-size 13)
midiTempo = 
  \midi {
    \tempo 4 = 140
    }


\include "preamble.ly"

\header {
  title = "Am văzut lumina"
  subtitle = "Glas 5"
  meter = "Allegretto"
}

global = {
  \globalPreamble
  \key f \minor
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #mixedTimeSigMarkup
}

sopWords = \lyricmode {
  Am vă -- zut lu -- mi -- na cea a -- de -- vă ra -- tă,
  am pri -- mit Du -- hul cel ce -- resc;
  am a -- flat cre -- din -- ța __ cea a -- de -- vă -- ra -- tă,
  % ne -- des -- păr -- ți -- tei Sfin -- tei Tre -- imi __
  % în -- chi -- nân -- du- -- ne,
  că A -- cea -- sta ne-a mân -- tu -- it __ pre __ noi. __
}

altoWords = \lyricmode {
  Am vă -- zut lu -- mi -- na cea a -- de -- vă ra -- tă,
  am pri -- mit Du -- hul cel ce -- resc;
  am a -- flat cre -- din -- ța __ cea a -- de -- vă -- ra -- tă,
  ne -- des -- păr -- ți -- tei Sfin -- tei Tre -- imi __
  în -- chi -- nân -- du- -- ne, __
  că A -- cea -- sta ne-a mân -- tu -- it __ pre __ noi. __
}

tenorWords = \lyricmode {
  Am vă -- zut lu -- mi -- na cea a -- de -- vă ra -- tă,
  am pri -- mit __ Du -- hul cel ce -- resc;
  am a -- flat cre -- din -- ța __ cea a -- de -- vă -- ra -- tă,
  % ne -- des -- păr -- ți -- tei Sfin -- tei Tre -- imi __
  % în -- chi -- nân -- du- -- ne,
  că A -- cea -- sta ne-a mân -- tu -- it __ pre noi. __
}

bassWords = \lyricmode {
  Am vă -- zut lu -- mi -- na cea a -- de -- vă ra -- tă,
  am pri -- mit __ Du -- hul cel ce -- resc;
  am a -- flat cre -- din -- ța __ cea a -- de -- vă -- ra -- tă,
  ne -- des -- păr -- ți -- tei Sfin -- tei Tre -- imi __
  în -- chi -- nân -- du- -- ne, __
  că A -- cea -- sta ne-a mân -- tu -- it __ pre __ noi. __
}

sopMusic = \relative c' {
  \cadenzaOn
  \accidentalStyle forget

  % Am văzut lumina cea adevărată,
  bes'4^\p c4 c4 c4 \bar "|"
  des4(^\accent c8[^\> bes8)] as2\! \bar "|"
  bes4 c4 bes4 as4 \bar "|"
  \acciaccatura bes8 as4(^\> g4) f2\! \breathe \bar "|"

  % am primit Duhul cel ceresc;
  bes4 bes4 c4( des4) \bar "|"
  es8([ des8)]^\< c4 des4 es4\! \bar "|"
  f2^\fermata

  % am a-flat credința cea adevărată,
  es4^\< f4\! \bar "|"
  g4 f4 \bar "|"
  es4(^\accent des4)^\> c4( bes4)\! \bar "|"
  as4^\< bes8([ c8)] bes4\! as4 \bar "|"
  \acciaccatura bes8 as4(^\> g4) f4.\! r8 \bar "|"

  % nedespărțitei Sfintei Treimi închinându-ne,
  \cadenzaOff
  R1 * 4
  \cadenzaOn
  r2

  % că Aceasta ne-a mântuit pre noi.
  f4^\p^\< ges4\!^\atempoMarkup \bar "|"
  bes2^\> as4 ges4\! \bar "|"
  f4 f4 \bar "|"
  es4(^\accent d4) es4(^\< f4)\! \bar "|"
  ges2(^\accent^\rallMarkup f2)~^\pp \bar "|"
  f4^\fermata \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn
  \accidentalStyle forget

  % Am văzut lumina cea adevărată,
  bes'4^\p c4 c4 as4
  des4(^\accent c8[^\> bes8)] as2\!
  f4 f4 es4 f4
  f4(^\> es4) f2\! \breathe

  % am primit Duhul cel ceresc;
  f4 f4 f2
  f4^\< f4 bes4 bes4\!
  as2^\fermata

  % am a-flat credința cea adevărată,
  c4^\< c4\!
  c4 des4
  c4(^\accent bes4)^\> as4( g4)\!
  f4^\< f4 f4\! f4
  f4(^\> es4) f4.\! \breathe es8

  % nedespărțitei Sfintei Treimi închinându-ne,
  f4 ges4 bes4^\accent bes4
  as4(^\accent ges4) f4 es4
  des4( es8[ f8)] es4 des8([ es8)]^\ritMarkup
  des4^\> c4 bes2~^\p\!
  bes4. r8

  % că Aceasta ne-a mântuit pre noi.
  f'4^\< ges4\!
  ges2^\> f4 es4\!
  d4
  \accidentalStyle no-reset
  d4
  \accidentalStyle forget
  es4(^\accent d4) es2~
  es2^\> f2~^\pp\!
  f4^\fermata \bar "|."
}

tenorMusic = \relative c' {
  \cadenzaOn
  \accidentalStyle forget

  % Am văzut lumina cea adevărată,
  bes4^\p c4
  <<
    { \voiceOne c4 f4 }
    \new Voice = "split" { \voiceTwo c4 c4 }
  >>
  \oneVoice
  des4(^\accent c8[^\> bes8)] as2\!
  des4 c4 c4 c4
  c4(^\> bes4) as2\! \breathe

  % am primit Duhul cel ceresc;
  des4
  <<
    {
      \voiceOne
      des4 c4( des4)
      es8([ des8)]^\< c4 des4 es4\!
      f2^\fermata
    }
    \new Voice = "split" {
      \voiceTwo
      des4 c4( bes4)
      c8([ bes8)] as4 bes4 c4
      des2
    }
  >>
  \oneVoice

  % am a-flat credința cea adevărată,
  <<
    {
      \voiceOne
      es4^\< f4\!
      g4 f4
    }
    \new Voice = "split" {
      c4 c4
      c4 des4
    }
  >>
  \oneVoice
  es4(^\accent des4)^\> c4( des4)\!
  c4^\< des4 des4\! c4
  c4(^\> bes4) as4.\! r8

  % nedespărțitei Sfintei Treimi închinându-ne,
  \cadenzaOff
  R1 * 4
  \cadenzaOn
  r2

  % că Aceasta ne-a mântuit pre noi.
  f4^\p^\< ges4\!
  bes2^\> bes4 bes4\!
  bes4 bes4
  bes1~^\<
  bes4\! bes4^\> a2~\!^\pp
  a4^\fermata \bar "|."
}

bassMusic = \relative c' {
  \cadenzaOn
  \accidentalStyle forget

  % Am văzut lumina cea adevărată,
  bes4^\p c4 c4 f,4
  des'4(^\accent c8[^\> bes8)] as2\!
  bes4 as4 g4 f4
  c2^\> f2\! \breathe

  % am primit Duhul cel ceresc;
  bes4 bes4 as4( bes4)
  c8([ bes8)]^\< as4 bes4 c4\!
  des2^\fermata

  % am a-flat credința cea adevărată,
  c4^\< c4\!
  c4 des4
  c4(^\accent bes4)^\> as4( es4)\!
  f4^\< f4 f4\! f4
  c2^\> f4.\! \breathe es8

  % nedespărțitei Sfintei Treimi închinându-ne,
  f4 ges4 bes4^\accent bes4
  as4(^\accent ges4) f4 es4
  des4( es8[ f8)] es4 des8([ es8)]
  des4^\> c4 bes2~^\p\!
  bes4. r8

  % că Aceasta ne-a mântuit pre noi.
  f'4^\< ges4\!
  es2^\> f4 ges4\!
  as4 as4
  ges4(^\accent f4) es2~
  es2 f2~^\pp^\>
  f4\!^\fermata \bar "|."
}

\include "four-staves.ly"
