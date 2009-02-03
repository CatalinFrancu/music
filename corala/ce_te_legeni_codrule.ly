\version "2.10.13"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Ce te legeni codrule"
  composer = "muzica: Gheorghe Scheletti (1836 - 1887)"
  poet = "versuri: Mihai Eminescu"
  arranger = "aranjament: Enrico Mezzetti (1870 - 1930)"
  tagline = ""
  meter = "Andante"
}

global = {
  #(set-global-staff-size 17)
  \key f \minor
  \time 6/8
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
  \override BreathingSign #'text = #(make-musicglyph-markup "scripts.caesura")
}

atempoMarkup = \markup { \hspace #-3.0 \bold "a tempo" }
crescMarkup = \markup { \bold \italic "cresc." }
dimMarkup = \markup { \bold "dim." }
rallMarkup = \markup { \bold "rall." }
ritMarkup = \markup { \bold "rit." }
soloMarkup = \markup { \bold \italic "Solo" }
markupA = \markup { \hspace #-7.0 \bold \italic "espress., molto" }
markupB = \markup { \bold \italic "misurato, espress." }
markupC = \markup { \bold \italic "espress." }
markupD = \markup { \bold "molto rall. e dim." }
markupE = \markup { \column {
  { \bold "Tutti" }
  { \musicglyph #"p" }
}}
markupF = \markup { \bold \italic "espress. dolce" }
markupG = \markup { \bold \italic "sentito" }
markupH = \markup { \bold "ben ritmato" }
markupI = \markup { \hspace #8.5 \musicglyph #"scripts.ufermata" }
markupJ = \markup { \hspace #3.0 \bold \italic "morendo" }
markupK = \markup { \column {
  { \line {
    \hspace #-1.5 \musicglyph #"p"
    \hspace #-1.0 \musicglyph #"p"
    \hspace #-1.0 \musicglyph #"p"
  } }
  { \line { \hspace #0.5 \musicglyph #"scripts.ufermata" } }
}}

womenWords = \lyricmode {
  Cu cren -- gi -- le la pă -- mânt? __
  De ce nu m-aş le -- gă -- na,
  Da -- că tre -- ce vre -- mea mea?
  Zi -- ua sca -- de, noap -- tea creş -- te
  Şi frun -- zi -- şul mi-l ră -- reş te.

  Ba -- te vân -- tul frun -- za-n dun -- gă,
  Cân -- tă -- re -- ţii mi-i a -- lun -- gă;
  Ba -- te vân -- tul din -- tr-o par -- te,
  Iar -- na-i ici, va -- ra-i de -- par -- te.

  Ce te le -- geni, co -- dru -- le,
  ce te le -- geni, co -- dru -- le,
  Cu cren -- gi -- le la __ pă -- mânt? __
  Şi de ce să nu mă plec,
  Da -- că pă -- să -- ri -- le trec?

  Pes -- te vârf de ră -- mu -- re -- le
  Trec în sto -- luri rân -- du -- ne -- le,
  Du -- când gân -- du -- ri -- le me -- le
  Şi no -- ro -- cul meu cu e -- le...

  Şi se duc pe rând, pe rând,
  Za -- rea lu -- mii-n -- tu -- ne -- când;

  Şi se duc ca cli -- pe -- le,
  Scu -- tu -- rând a -- ri -- pi -- le
  Şi mă la -- să pus -- ti -- it, __
  Veş -- te -- jit şi a -- mor -- ţit...

  Şi se duc ca cli -- pe -- le,
  Scu -- tu -- rând a -- ri -- pi -- le
  Şi mă la -- să pus -- ti -- it,
  Veş -- te -- jit şi a -- mor -- ţit...

  Şi cu do -- rul sin -- gu -- rel,
  De mă-n -- gân nu -- mai cu el,
  De mă-n -- gân nu -- mai cu el! __

  M __
}

menWords = \lyricmode {
  Ce te le -- geni, co -- dru -- le,
  Fă -- ră ploa -- ie, fă -- ră vânt,
  Cu cren -- gi -- le la pă -- mânt, __ la pă -- mânt? __

  De ce nu m-aş le -- gă -- na,
  Da -- că tre -- ce

  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8

  M __
  M __
  M __
  M __
  Şi se duc ca cli -- pe -- le,
  Scu -- tu -- rând "a -"

  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8

  Ce te le -- geni co -- dru -- le,
  Cu cren -- gi -- le la pă -- mânt? __
}

womenMusic = \relative {
  R2.
  R2.
  r4. r4 f8^\p
  \break

  des'8.^\markupA bes16 g8 as4^\ritMarkup g8^\>
  f4.~\! f8^\pp r8 r8
  f'4^\p\accent c8^\markupB c4 c8
  des4 bes8 c4.
  g4 bes8 as4 f8
  \break

  g4 e8 f4.
  f'4^\p\accent c8 c4 c8
  des4 bes8 c4 as8
  g4 bes8 as4 f8
  g4 e8 f4 f8
  \break

  des'4^\mf\accent des8 des8 c4
  bes4^\> bes8 bes8 as4\!
  g8.([ as16)] bes16([^\crescMarkup des16)] c8.([ f16)] es16([ des16)]
  c8.([^\< bes16)] as16([ g16)] as4 c8\!
  \break

  des4^\mf\accent des8 c8 c4
  bes4 bes8 bes8 as4
  g4 g8 as8^\rallMarkup r8 bes8
  as4^\> g8 g8 f4\!
  \break

  g8.^\pp g16 g16 g16 as8^\crescMarkup as8 as8
  bes8.^\< bes16 bes16 bes16 c8 c8 c8\!
  f8.^\ff f16 f16 f16^\ritMarkup f8([ e8)] f8
  \break

  <g e>4.~ <g e>4^\fermata r8^\soloMarkup
  f,8.^\atempoMarkup f16^\markupC f16 f16 c'8 c8 c8
  bes8. c16 des16 bes16 c8 as8 f8
  \break

  des'8.\accent c16 bes16 des16 c8. as16 g16 f16
  e8.^\crescMarkup f16 g16 e16 f8. as16 c16 as16
  bes8.^\< c16 des16 bes16 c8. des16 es16 c16\!
  \break

  des8.^\f es16 f16^\fermata des16 c8. des16 es16^\dimMarkup c16
  bes8.^\markupD c16 des16 bes16 c8 des8 es8
  \break

  bes8. des16 c16 bes16^\pp c8^\fermata bes8^\fermata as8^\fermata
  f4^\markupE c'8^\markupF c4 c8
  des4 bes8 c4.
  g4 bes8 as4 f8
  \break

  g4^\> e8 f4.\!
  f'4^\mf c8^\markupG c4 c8
  des4 bes8 c4( as8)
  g4 bes8 as4 f8
  \break

  g4^\> e8 f4.\!
  f8.^\p f16^\markupH g16 a16 bes8 a8 bes8
  a8.^\crescMarkup a16 bes16 c16 des8 c8 des8
  \break

  d8.^\< d16 d16 d16 es8 d8 es8\!
  e8. e16 e16 e16 f8^\f e8 f8^\markupI \breathe
  \break

  des8.^\mf f16^\ritMarkup e16 des16 c8 b8 c8^\dimMarkup
  bes!8.^\> des16 c16 bes16 as8 g8 as8\!
  g8.^\p bes16 as16 g16 as4 g8
  \break

  f4.~(^\p f4 g16[ as16)]
  bes4.(^\pp^\markupJ as4^\> g8\!
  f8[^\ritMarkup e8 f8] c8)^\markupK r8 r8
  \bar "|."
}

menMusic = \relative {
  f,8.^\mp f16 f16 f16 f8 e8 f8
  as8. g16 f16 e16 f8 f8 f8
  des8.^\> f16 f16 f16 es!4 des8\!

  c4.~ c8 d8 e8^\>
  f4.~\! f8^\pp r8 r8
  f4^\p\accent as8 as4 as8
  bes4 g8 as4.
  g4 g8 f4 f8

  e4 e8 f4.
  f4^\p\accent as8 as4 as8
  bes4 g8 as4 f8
  g4 g8 f4 f8
  e4 e8 f4 f8

  bes4^\mf\accent bes8 as8 as4
  g4^\> g8 f8 f4\!
  e8.([ f16)] g16([^\crescMarkup bes16)] as4 g16([ f16)]
  e4^\< e8 f4 g16([ as16)]\!

  bes4^\mf\accent bes8 as8 as4
  g4 g8 f8 f4
  f4 e8 f8 r8 c8
  c4^\> d16([ e16)] g8 f4\!

  e8.^\pp e16 e16 e16 f8^\crescMarkup f8 f8
  es!8.^\< es16 es16 es16 as8 as8 as8\!
  des8.^\ff des16 des16 des16 des4 des8

  c4.~ c4^\fermata r8
  <<
    {
      \voiceOne
      f,4.(^\p a4.
      bes4. as!4.

      g4. as4.)
      bes4.\rest f4.(
      g4. as4.

      bes8.[^\mf c16 des16^\fermata bes16] as4.)
      bes4.( as8[ bes8 c8)]

      bes4( a16[ bes16]^\pp as8[^\fermata g8^\fermata as8)]^\fermata
    }
    \new Voice = "split" {
      \voiceTwo
      \autoBeamOff
      f2.~
      f2.~

      f2.
      bes4.\rest f4.
      es!2.~

      es2._\fermata
      des4( bes8 es4.)

      bes8.([ bes16 c16 des16] es4_\fermata as,8)_\fermata
    }
  >>
  \oneVoice
  f'4^\p as8 as4 as8
  bes4 g8 as4.
  g4 g8 f4 f8

  e4^\> e8 f4.\!
  f4^\mf as8 as4 as8
  bes4 g8 as4( f8)
  g4 g8 f4 f8

  e4^\> e8 f4.\!
  R2.
  f8.^\crescMarkup f16 g16 a16 bes8 a8 bes8

  b8.^\< b16 b16 b16 c8 b8 c8\!
  bes!8. bes16 bes16 bes16 as8^\f g8 f8 \breathe

  bes8.^\mf des16 c16 bes16 as8 g8 as8
  g8.^\> bes16 as16 g16 f8 e8 f8\!
  R2.

  f8.^\p f16 f16 f16 f8 des8 f8
  g8.^\pp f16 es16 des16 c4 c8
  c4.~ c8^\markupK r8 r8
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \womenMusic }
    \addlyrics { \womenWords }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \menMusic }
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
  \new Voice { \global \womenMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \menMusic }
  \midi { \midiOutput }
}
