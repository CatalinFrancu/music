\version "2.10.13"

\paper {
  #(set-paper-size "letter")
  between-system-padding = 2\mm
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0\in
}

\header {
  title = "Brâul amestecat"
  poet = "versuri populare"
  composer = "muzica: Pretorian Vlaiculescu"
  meter = "Mişcare potrivită de joc"
  tagline = ""
}

global = {
  #(set-global-staff-size 16)
  \set Staff.midiInstrument = "clarinet"
  \key f \major
  \time 2/4
  \autoBeamOff
}

markupA = \markup {
  \column {
    { \large \bold "Grupa I" }
    { \musicglyph #"f" }
  }
}

markupB = \markup {
  \column {
    { \large \bold "Grupa II" }
    { \musicglyph #"f" }
  }
}

markupC = \markup { \italic "un strigător" }
markupD = \markup { \italic "Reluare mai repede" }
markupE = \markup { \hspace #4.5 \musicglyph #"scripts.ufermata" }
markupF = \markup { \bold "Rar"}
markupG = \markup { \bold "Glumind" }
markupH = \markup { \italic "poco a" }
markupI = \markup { \italic "poco accell." }
markupJ = \markup { \italic "puţin mai rar" }

womenWords = \lyricmode {
  Ui -- te brâ -- ul, tre -- ce râ -- ul
  Şi mân -- dru -- ţa po -- te -- cu -- ţa,
  Hai, la brâu, la brâu, la brâu
  Şi la se -- ce -- rat de grâu.

  Fo -- i -- ci -- că ver -- de, ver -- de din -- tre văi,
  I-a -- uzi brâ -- ul, ca la mun -- te, măi flă -- căi,
  Ca la mun -- te, ca la câmp noi u -- na ştim,
  Când ju -- căm un brâu cu toţi ne-n -- ve -- se -- lim.

  Hei, hop, __
  hei, hop, __
  ră -- mâ -- neţi.
  Tri li ri li li li ri li li li ri li li li li
  Tri li ri li li li li
  Tot na -- in -- te şi, şi, şi.

  Frun -- zu -- li -- ţă de pe lac,
  Hai cu brâ -- ul de la cap.

  şi, şi, şi.
  Hai, hai, Ţin -- te bi -- ne mo -- şu -- le
  Hai, hai, C-ai să pierzi o -- pin -- ci -- le
  Hai, hai, Şi-o să-ţi pi -- ce be -- te -- le
  Hai, hai, Şi-o să râ -- dă fe -- te -- le.

  Ţi -- ne-a -- şa Da -- fi -- ne-n -- tru -- na n-o lă -- sa
  Pâ -- nă când ră -- sa -- re lu -- na tot a -- şa,
  Ca la Gorj şi Câm -- pu -- lung din zur -- gă -- lăi,
  Ia mai ba -- teţi câ -- te u -- na măi flă -- căi.

  Hei, hop, __
  Hei, hop, __ bu -- su -- ioc.

  Tri li ri li li li ri li li li ri li li li li
  Tri li ri li li li li
  Tot na -- in -- te şi, şi, şi

  Tri li ri li li li lui,
  Ia mai la -- s-o da -- tu -- lui!
  Ia -- c-a -- şa, ia -- c-a -- şa, ia -- c-a -- şa, ia -- c-a -- şa.
}

tenorWords = \lyricmode {
  Dam, dim, dim, dam, dim, dim, dim, di, ri, dam,
  Dam, dim, dim, dam, dim, dim, dim, di, ri, dam,
  Dam, dim, dim, dam, dim, dim, dim, di, ri, dam,
  Dam, dim, dim, dam, dim, dim, dam, di, ri, dam,
  Dam, dim, dim, dam, dim, dim, dam, di, ri, dim,
  Dam, dim, dim, dam, dim, dim, dam, di, ri, dim,

  Ca la mun -- te, ca la câmp noi u -- na ştim,
  Când ju -- căm un brâu cu toţi ne-n -- ve -- se -- lim.

  Hei, hop, ca -- re vreţi, ca -- re pu -- teţi,
  hei, hop, ca -- re nu mai ră -- mâ -- neţi.
  Tri li li li li li
  Tri __ li li 
  Tot na -- in -- te şi, şi, şi.

  şi, şi, şi.
  Hai, hai, Şi-o să-ţi pi -- ce be -- te -- le
  Hai, hai, Şi-o să râ -- dă fe -- te -- le.

  Ţi -- ne-a -- şa Da -- fi -- ne-n -- tru -- na n-o lă -- sa
  Pâ -- nă când ră -- sa -- re lu -- na tot a -- şa,
  Ca la Gorj şi Câm -- pu -- lung din zur -- gă -- lăi,
  Ia mai ba -- teţi câ -- te u -- na măi flă -- căi.

  Hei, hop, Şi-n -- c-o da -- tă ba -- te-n loc,
  Hei, hop, Să __ ră -- sa -- ră bu -- su -- ioc.

  Tri li li li li li
  Tri __ li li
  Tot na -- in -- te şi, şi, şi

  Tri __ li lui,
  Ia mai la -- s-o da -- tu -- lui!
  Ia -- c-a -- şa, ia -- c-a -- şa, ia -- c-a -- şa, ia -- c-a -- şa.
}

bassWords = \lyricmode {
  Dam, dim, dim, dam, dim, dim, dim, dam,
  Dam, dim, dim, dam, dim, dim, dam, dim,
  Dam, dim, dim, dam, dim, dim, dam, dim,
  Dam, dim, dim, dam, dim, dim, dam, dim,

  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8

  Hei, hei, hei, hei,

  \skip 8 \skip 8 \skip 8
  Hai, Di -- ri -- dam, di -- ri -- dam,, Di -- ri, di -- ri -- dam,
  Hai, Di -- ri -- dam, di -- ri -- dam,, Di -- ri, di -- ri -- dam,
  Zi-i, __ măi, n-o lă -- sa
  Ţi -- ne-o tot a -- şa,

  Ca la Gorj şi Câm -- pu -- lung din zur -- gă -- lăi,

  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8 \skip 8
  \skip 8 \skip 8 \skip 8 \skip 8 \skip 8

  Tri li li
  Tri li li tri li li li
  Tri __ li li
  Tot na -- in -- te şi, şi, şi,
  Tri li li li li lui,
  Ia mai la -- s-o
}

womenMusic = \relative {
  \set Staff.vocalName = "I"
  \repeat volta 2 {
    R2 * 5
    \break

    R2
    \override NoteHead #'style = #'cross
    c'8^\markupA c8 c8 c8
    c8 c8 c8 c8
    R2
    \break

    c8^\markupB c8 c8 c8
    c8 c8 c8 c8
    R2
    c8 c8 c8 c8
    \break

    c8 c8 c4
    R2
    c8 c8 c8 c8
    c8 c8 c4
    \revert NoteHead #'style
    \break

    R2
    c8 c8 c8 c8
    c8 c8 c8 c8
    c8 bes8 bes4
    \break

    bes8 bes8 bes8 bes8
    bes8 bes8 bes8 d8
    c8 bes8 a4
    c8 c8 c8 c8
    \break

    c8 c8 c8 c8
    c8 bes8 bes4
    bes8 bes8 bes8 bes8
    bes8 bes8 bes8 d8
    c8 bes8 a4
    \break

    d8^\f c4.~
    c2~
    c2
    d8 c4.~
    c2
    \break

    bes8 a8 a4
    a4 \times 2/3 { g8 a8 bes8 }
    a4 \times 2/3 { g8 a8 bes8 }
    a4 \times 2/3 { g8 a8 bes8 }
    a4 c8 c8
    \break

    a4 \times 2/3 { g8 a8 bes8 }
    a8 a8 d4
    c8 bes8 a8 g8
  } \alternative {
    {
      f8 f8 f8 r8
      \override NoteHead #'style = #'cross
      c'8^\f c8^\markupC c8 c8
      \break

      c8 c8 c4
      c8 c8 c8 c8
      c8 c8 c4
      \revert NoteHead #'style
      R2
      R2^\markupD
      \break
    }
    {
      f,8 f8 f8 r8^\markupE
      f8^\markupF f'4.^\<
    }
  }
  es8\!^\markupG d8 c8 a8
  bes8 g8 a4
  f8^\markupH f'4.^\<
  \break

  es8^\markupI\! d8 c8 a8
  bes8 g8 f4
  f8 f'4.
  es8 d8 c8 a8
  \break
  
  bes8 g8 a4
  f8 f'4.
  es8 d8 c8 a8
  bes8 g8 f4
  \break

  c'8 c8 c8 c8
  c8 c8 c8 c8
  c8 bes8 bes4
  bes8 bes8 bes8 bes8
  \break

  bes8 bes8 bes8 d8
  c8^^ bes8^^ a4_^
  c8 c8 c8 c8
  c8 c8 c8 c8
  c8 bes8 bes4
  \break

  bes8 bes8 bes8 bes8
  bes8 bes8 bes8 d8
  c8^^ bes8^^ a4_^
  d8^\f c4.~
  c2~
  \break

  c2
  d8 c4.~
  c2
  bes8 a8 a4

  \repeat volta 2 {
    a4_^ \times 2/3 { g8 a8 bes8 }
    \break

    a4_^ \times 2/3 { g8 a8 bes8 }
    a4_^ \times 2/3 { g8 a8 bes8 }
    a4_^ c8 c8
  } \alternative {
    {
      a4_^ \times 2/3 { g8 a8 bes8 }
      a8 a8 d4
      \break

      c8 bes8 a8 g8
      f8 f8 f4
    }
    {
      a4_^ \times 2/3 { g8 a8 bes8 }
      a8 a8 d4^\fermata
      c8--^\markupJ bes8-- a8-- g8--
      \break
    }
  }

  f8-- f8-- f16-- r16^\fermata c'16^\mf c16
  d16 r16 d16 d16 e16^\fermata r16 e16^\f e16
  f2^\fermata
  f16^\ff f16 f16 r16 r4
  \bar "|."
}

tenorMusic = \relative {
  \set Staff.vocalName = "II"
  \repeat volta 2 {
    c,8^\mf a'4-> a8
    c,8 a'4-> a8
    g8 g16 f16 a4
    c,8 a'4-> a8
    c,8 a'4-> a8

    g8 g16 f16 f4
    c8 a'4-> a8
    c,8 a'4-> a8
    g8 g16 f16 a4

    c,8 a'4-> a8
    c,8 a'4-> a8
    g8 g16 g16 f4
    c8 a'4-> a8

    c,8 a'4-> a8
    g8 g16 f16 a4
    c,8 a'4-> a8
    c,8 a'4-> a8

    g8 g16 f16 f4
    R2
    R2
    R2

    R2
    R2
    R2
    a8 a8 a8 a8

    a8 a8 a8 a8
    a8 g8 g4
    g8 g8 g8 g8
    g8 g8 g8 bes8
    a8 g8 f4

    d'8^\f c4 bes8~
    bes8 a8 a8 g8
    g8 f8 a4
    d8 c4 bes8~
    bes8 a8 a8 g8

    f8 f8 f4
    f2
    f2
    f2
    f4 a8 a8

    f2~^\sfz
    f8 f8 f4
    a8 g8 f8 e8
  } \alternative {
    {
      f8 f8 f8 r8
      R2

      R2
      R2
      R2
      R2
      R2
    }
    {
      f8 f8 f8 r8
      R2
    }
  }

  R2
  R2
  R2

  R2
  R2
  f8 d'4.
  c8 bes8 a8 f8

  g8 e8 f4
  f8 d'4.
  c8 bes8 a8 f8
  g8 e8 f4

  a8 a8 a8 a8
  a8 a8 a8 a8
  a8 g8 g4
  g8 g8 g8 g8

  g8 g8 g8 bes8
  a8-^ g8-^ f4-^
  a8 a8 a8 a8
  a8 a8 a8 a8
  a8 g8 g4

  g8 g8 g8 g8
  g8 g8 g8 bes8
  a8-^ g8-^ f4-^
  d'8^\f c4 bes8~
  bes8 a8 a8 g8

  g8 f8 a4
  d8 c4 bes8~
  bes8 a8 a8 g8
  g8 f8 f4

  \repeat volta 2 {
    f2^\sfz

    f2^\sfz
    f2^\sfz
    f4 a8 a8
  } \alternative {
    {
      f2~^\sfz
      f8 f8 f4

      a8 g8 f8 e8
      f8 f8 f4
    }
    {
      f2~^\sfz
      f8 f8 bes4^\fermata
      c8-- bes8-- a8-- g8--
    }
  }

  f8-- f8-- f16-- r16^\fermata c'16^\mf c16
  d16 r16 d16 d16 c16^\fermata r16 c16^\f c16
  c2^\fermata
  c16^\ff c16 c16 r16 r4
}

bassMusic = \relative {
  \set Staff.vocalName = "III"
  \repeat volta 2 {
    R2 * 5

    R2
    c,8 f4-> f8
    c8 f4-> f8
    c4 f4

    c8 f4-> f8
    c8 f4-> f8
    c4 f4
    c8 f4-> f8

    c8 f4-> f8
    c4 f4
    c8 f4-> f8
    c8 f4-> f8

    c4 f4
    R2
    R2
    R2

    R2
    R2
    R2
    R2

    R2
    R2
    R2
    R2
    R2

    bes8^\f a4 g8~
    g8 f8 f8 c8
    c8 f8 f4
    bes8 a4 g8~
    g8 f8 f8 c8

    c8 f8 f4
    c2^\sfz
    c2^\sfz
    c2^\sfz
    f2^\sfz

    d2~^\sfz
    d8 c8 bes4
    a8 bes8 c8 c8
  } \alternative {
    {
      f8 f8 f8 r8
      R2

      R2
      R2
      R2
      \override NoteHead #'style = #'cross
      f'4^\f-^\< f4-^
      f4-^ f4-^\!
      \revert NoteHead #'style
    }
    {
      f,8 f8 f8 r8
      R2
    }
  }

  R2
  R2
  R2

  R2
  R2
  f2
  f16 f16 f8 f16 f16 f8

  c16 c16 c16 c16 f4
  f2
  f16 f16 f8 f16 f16 f8
  c16 c16 c16 c16 f4

  f2~^\sfz
  f4 es4-^
  d8 d8 d4
  d2~^\sfz

  d4 e4-^
  f8-^ f8-^ f4-^
  f8 f8 f8 f8
  f8 f8 f8 f8
  c8 c8 c4

  c8 c8 c8 c8
  c8 c8 c8 c8
  f8-^ f8-^ f4-^
  bes8^\f a4 g8~
  g8 f8 f8 c8

  c8 f8 f4
  bes8 a4 g8~
  g8 f8 f8 c8
  c8 f8 f4

  \repeat volta 2 {
    f4-^ c8 c8

    f4-^ c8 c8
    f4-^ c8 c8
    f2-^
  } \alternative {
    {
      d2~^\sfz
      d8 c8 c4

      a8 bes8 c8 c8
      f8 f8 f4
    }
    {
      f4 c8 c8
      f8 f8 bes4^\fermata
      c8-- bes8-- a8-- g8--
    }
  }

  f8-- f8-- f16-- r16^\fermata c'16^\mf c16
  bes16 r16 bes16 bes16 <bes g>16^\fermata r16 <bes g>16^\f <bes g>16
  <a f>2^\fermata
  <a f>16^\ff <a f>16 <a f>16 r16 r4
}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \womenMusic }
    \addlyrics { \womenWords }

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorWords }
    >>

    \new Staff <<
      \clef "G_8"
      \new Voice { \global \bassMusic }
      \addlyrics { \bassWords }
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
