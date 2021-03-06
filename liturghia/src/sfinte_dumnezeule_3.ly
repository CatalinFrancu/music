\version "2.19.80"
\include "defines.ly"
midiTempo = 
  \midi {
    \tempo 4 = 90
    }


\include "preamble.ly"

\header {
  meter = "Moderato"
}

global = {
  \globalPreamble
  \key g \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #""
  \time 2/4
}

sopWords = \lyricmode {
  Sfin -- te făr' de moar -- te, __
  mi -- lu -- ieș -- te- -- ne __ pre __ noi.
}

altoWords = \lyricmode {
  Sfin -- te făr' de moar -- te, __
  mi -- lu -- ieș -- te- -- ne pre noi.
}

tenorWords = \altoWords

bassWords = \lyricmode {
  Sfin -- te făr' __ de __ moar -- te, __
  mi -- lu -- ieș -- te- -- ne pre noi.
}

sopMusic = \relative c' {
  \cadenzaOn

  % Sfinte făr' de moarte
  e'4^\mf e^\< e\! e \bar "|"
  d(^\accent c)^\> b( a)\! \bar "|"

  % Miluiește-ne pre noi.
  g^\p^\< a\! \bar "|"
  b^\rallMarkup a g8([^\> a)] fis([ g)]\! \bar "|"
  e2.^\pp r4 \bar "||"
}

altoMusic = \relative c' {
  \cadenzaOn

  % Sfinte făr' de moarte
  g'4^\mf g^\< g\! g
  g(^\accent fis)^\> g( fis)\!

  % Miluiește-ne pre noi.
  e^\p^\< e\!
  e e e^\> dis\!
  b2.^\pp r4
}

tenorMusic = \relative c' {
  \cadenzaOn

  % Sfinte făr' de moarte
  <<
    {
      \voiceOne
      e4^\mf e^\< e\! e
      d2^\accent d
    }
    \new Voice = "split" {
      \voiceTwo
      c4 c c c
      b( d)^\> d( c)\!
    }
  >>
  \oneVoice

  % Miluiește-ne pre noi.
  <<
    {
      \voiceOne
      e^\p^\< d8([ c)]\!
    }
    \new Voice = "split" {
      \voiceTwo
      b4 d8([ c)]
    }
  >>
  \oneVoice

  b4 c b^\> a\!
  g2.^\pp r4
}

bassMusic = \relative c' {
  \cadenzaOn

  % Sfinte făr' de moarte
  <<
    {
      \voiceOne
      c4^\mf g^\< c\! g8([ a)]
      b4(^\accent a)^\> g( d)\!
    }
    \new Voice = "split" {
      \voiceTwo
      c c c8([ d)] e([ fis)]
      g4( a) g( d)
    }
  >>
  \oneVoice

  % Miluiește-ne pre noi.
  <<
    {
      \voiceOne
      e^\p^\< fis\!
      g a b^\> b,\!
    }
    \new Voice = "split" {
      \voiceTwo
      e e
      e a, b b
    }
  >>
  \oneVoice
  <e e,>2.^\pp
  r4
}

\include "four-staves.ly"
