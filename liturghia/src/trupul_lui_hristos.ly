\version "2.12.0"
\include "defines.ly"
midiTempo = 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }


\include "preamble.ly"

\header {
  title = "Trupul lui Hristos"
  subtitle = "Glas 8"
  meter = "Andante"
}

global = {
  \globalPreamble
  \key f \major
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = #mixedTimeSigMarkup
}

sopWords = \lyricmode {
  Tru -- pul lui Hris -- tos __ pri -- miţi, __ pri -- miţi __
  şi din iz -- vo -- rul cel fă -- ră de moar -- te gus -- taţi. __

  Tru -- pul lui Hris -- tos __ pri -- miţi, __ pri -- miţi __
  şi din iz -- vo -- rul cel fă -- ră de moar -- te gus -- taţi. __

  A -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a.
  A -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a.
  A -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a.
}

altoWords = \lyricmode {
  Tru -- pul lui Hris -- tos pri -- miţi, pri -- miţi __
  şi din iz -- vo -- rul cel fă -- ră de moar -- te gus -- taţi, gus -- taţi.

  Tru -- pul lui Hris -- tos pri -- miţi, pri -- miţi __
  şi din iz -- vo -- rul cel fă -- ră de moar -- te gus -- taţi, gus -- taţi.

  A -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a.
  A -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a.
  A -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a.
}

tenorWords = \altoWords

bassWords = \lyricmode {
  Tru -- pul lui Hris -- tos pri -- miţi, pri -- miţi __
  şi din iz -- vo -- rul __ cel fă -- ră de moar -- te gus -- taţi. __

  Tru -- pul lui Hris -- tos pri -- miţi, pri -- miţi __
  şi din iz -- vo -- rul cel fă -- ră de moar -- te gus -- taţi. __

  A -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a.
  A -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a.
  A -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a,
  a -- li -- lu -- i -- a.
}

sopMusic = \relative {
  \cadenzaOn

  % Trupul lui Hristos primiţi şi din izvorul cel fără de moarte gustaţi.
  a'4^\p g4 f4 e4^\< \bar "|"
  f4(\! g4) f4(^\> e4) \bar "|"
  d4.(\! f8) e4(^\> d4)\! \bar "|"
  c2~ c4 r8 c8 \bar "|"
  f4^\< g4 \bar "|"
  a4(\! bes4) g2 \bar "|"
  c4^\accent bes4^\> a4 g4\! \bar "|"
  a8([^\< bes8\! a8^\> g8)] f4\! e4 \bar "|"
  f1~ \bar "|"
  f2. r4 \bar "|"

  % Trupul lui Hristos primiţi şi din izvorul cel fără de moarte gustaţi.
  a4^\pp g4 f4 e4 \bar "|"
  f4( g4) f4( e4) \bar "|"
  d4.(^\< f8)\! e4(^\> d4) \bar "|"
  c2~\! c4 r8 c8 \bar "|"
  f4 g4^\< \bar "|"
  a4(\! bes4) g2 \bar "|"
  c4^\accent bes4^\> a4 g4\! \bar "|"
  a8([^\< bes8\! a8^\> g8)] f4\! e4 \bar "|"
  f1~^\ritMarkup \bar "|"
  f2^\fermata

  % Aliluia, aliluia, aliluia.
  f4^\mf^\< f4 \bar "|"
  g8([\! a8] g4) f4(^\> e8[ f8)] \bar "|"
  d2\! \breathe f4^\< f4 \bar "|"
  g8([\! a8] bes4) a4(^\> g8[ a8)] \bar "|"
  f2\! d4^\< c4\! \bar "|"
  a'4(^\accent g4) f4(^\> e4)\! \bar "|"
  f2 \breathe

  % Aliluia, aliluia, aliluia.
  f4^\p^\< f4 \bar "|"
  g8([\! a8] g4) f4(^\> e8[ f8)] \bar "|"
  d2\! \breathe f4^\< f4\! \bar "|"
  g8([ a8] bes4) a4( g8[ a8)] \bar "|"
  f2 d4 c4 \bar "|"
  a'4( g4) f4( e4) \bar "|"
  f2 \breathe

  % Aliluia, aliluia, aliluia.
  f4^\pp f4^\< \bar "|"
  g8([\! a8] g4) f4(^\> e8[ f8)] \bar "|"
  d2\! f4 f4^\< \bar "|"
  g8([\! a8] bes4) a4(^\> g8[ a8)] \bar "|"
  f2\! \breathe d4^\rallMarkup c4 \bar "|"
  a'4(^\accent g4) f4(^\> e4)\! \bar "|"
  f2^\fermata \bar "|."
}

altoMusic = \relative {
  \cadenzaOn

  % Trupul lui Hristos primiţi şi din izvorul cel fără de moarte gustaţi.
  f4^\p e4 d4 d4^\<
  d2\! d4(^\> e4)
  d2\! e4(^\> d4)\!
  c2~ c4 r8 c8
  f4^\< e4
  f2\! e2
  f4^\accent e4^\> f4 f4\!
  f4.( e8) c4 c4
  c2.^\< d4\!^\>
  c2.\! r4

  % Trupul lui Hristos primiţi şi din izvorul cel fără de moarte gustaţi.
  f4^\pp e4 c4 c4
  c2 c4( e4)
  d2 e4(^\> d4)
  c2~\! c4 r8 c8
  f4 e4^\<
  f2\! e2
  f4^\accent e4^\> f4 f4\!
  f4.( e8) c4 c4
  c2.^\< \breathe d4\!^\>
  c2\!^\fermata

  % Aliluia, aliluia, aliluia.
  f4^\mf^\< f4
  e8([\! f8] e4) d4(^\> e8[ f8)]
  d2\! \breathe d4^\< d4
  e8([\! f8] g4) f4(^\> e4)
  f2\! d4^\< c4\!
  f4(^\accent e4) f4(^\> c4)\!
  c2 \breathe

  % Aliluia, aliluia, aliluia.
  f4^\p^\< f4
  e8([\! f8] e4) d4(^\> e8[ f8)]
  d2\! \breathe d4^\< d4\!
  e8([ f8] g4) f4( e4)
  f2 d4 c4
  f4( e4) f4( c4)
  c2 \breathe

  % Aliluia, aliluia, aliluia.
  f4^\pp f4^\<
  e8([\! f8] e4) d4(^\> e8[ f8)]
  d2\! d4 d4^\<
  d4(\! g4) f4(^\> e4)
  c2\! \breathe d4 c4
  f4(^\accent e4) d4(^\> e4)\!
  c2^\fermata
}

tenorMusic = \relative {
  \cadenzaOn

  % Trupul lui Hristos primiţi şi din izvorul cel fără de moarte gustaţi.
  c4^\p c4 a4 a4^\<
  a4(\! bes4) a4.(^\> g8)
  f2\! g4(^\> f4)\!
  e2~ e4 r8 c'8
  c4^\< c4
  c2\! c2
  c4^\accent c4^\> c4 d4\!
  c4.( bes8) a4 g4
  a2.^\< bes4\!^\>
  a2.\! r4

  % Trupul lui Hristos primiţi şi din izvorul cel fără de moarte gustaţi.
  r2 c4^\pp bes4
  a4 bes4 a4 g4
  f2 g4(^\> f4)
  e2~\! e4 r8 c'8
  c4 c4^\<
  c2\! c2
  c4^\accent c4^\> c4 d4\!
  c4.( bes8) a4 g4
  a2.^\< \breathe bes4\!^\>
  a2\!^\fermata

  % Aliluia, aliluia, aliluia.
  a4^\mf^\< a4
  c4(\! bes4) a4(^\> g8[ a8)]
  f2\! \breathe a4^\< a4
  c2\! c2^\>
  c2\! d4^\< c4\!
  c2^\accent c4(^\> bes4)\!
  a2 \breathe

  % Aliluia, aliluia, aliluia.
  a4^\p a4
  c4( bes4) a4(^\> g8[ a8)]
  f2\! \breathe a4^\< a4\!
  c2 c2
  c2 d4 c4
  c2 c4( bes4)
  a2 \breathe

  % Aliluia, aliluia, aliluia.
  a4^\pp a4^\<
  c4(\! bes4) a4(^\> g8[ a8)]
  f2\! f8([ g8)] a4^\<
  bes4(\! d4) c4(^\> bes4)
  a2\! \breathe bes4 a4
  c4(^\accent bes4) a4(^\> bes4)\!
  a2^\fermata
}

bassMusic = \relative {
  \cadenzaOn

  % Trupul lui Hristos primiţi şi din izvorul cel fără de moarte gustaţi.
  f,4^\p c4 d4 d4^\<
  d2\! d4(^\> a4)
  d2\! a4(^\> bes4)\!
  c2~ c4 r8 bes'8
  a4^\< g4
  f2\! c4( bes'4)
  a4^\accent g4^\> f4 bes,4\!
  c2 c4 c4
  f1~
  f2. r4

  % Trupul lui Hristos primiţi şi din izvorul cel fără de moarte gustaţi.
  r2 a4^\pp g4
  f4 e4 f4 c4
  d2 a4(^\> bes4)
  c2~\! c4 r8 bes'8
  a4 g4^\<
  f2(\! c'4) bes4
  a4^\accent g4^\> f4 bes,4\!
  c2 c4 c4
  <f f,>1~
  <f f,>2^\fermata

  % Aliluia, aliluia, aliluia.
  f4^\mf^\< f4
  c2\! d4(^\> a4)
  d2\! \breathe d4^\< d4
  c2\! f4(^\> g4)
  a2\! bes4^\< a4\!
  <<
    {
      \voiceOne
      c4(^\accent bes4) a4(^\> g4)\!
      f2
    }
    \new Voice = "split" {
      \voiceTwo
      c'2 c,2
      f2
    }
  >>
  \oneVoice
  \breathe

  % Aliluia, aliluia, aliluia.
  f4^\p f4
  c2 d4(^\> a4)
  d2\! \breathe d4^\< d4\!
  c2 f4( g4)
  a2 bes4 a4
  <<
    {
      \voiceOne
      c4( bes4) a4( g4)
      f2
    }
    \new Voice = "split" {
      \voiceTwo
      c'2 c,2
      f2
    }
  >>
  \oneVoice
  \breathe

  % Aliluia, aliluia, aliluia.
  f4^\pp f4^\<
  c2\! d4(^\> a4)
  bes2\! bes4 a4^\<
  g2\! c2^\>
  <f f,>2\! \breathe <f f,>4 <f f,>4

  <<
    {
      \voiceOne
      f4(^\accent c4) d4(^\> g4)\!
    }
    \new Voice = "split" {
      \voiceTwo
      f,4( c'4) d4( c4)
    }
  >>
  \oneVoice


  <f f,>2^\fermata
}

\include "four-staves.ly"
