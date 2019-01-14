\version "2.19.80"
\include "defines.ly"
midiTempo =
  \midi {
    \tempo 4 = 90
    }


\include "preamble.ly"

\header {
  title = "Sfinte Dumnezeule"
  subtitle = "glasul 5"
  composer = "după Ghelasie Basarabeanul"
  meter = "Moderato"
}

global = {
  \globalPreamble
  \key g \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #mixedTimeSigMarkup
  \time 2/4
}

sopWords = \lyricmode {
  A -- min.
  Sfin -- te Dum -- ne -- ze -- u -- le,
  Sfin -- te ta -- re,
  Sfin -- te făr' de moar -- te, __
  mi -- lu -- ieş -- te- -- ne __ pre __ noi.
}

altoWords = \lyricmode {
  A -- min.
  Sfin -- te Dum -- ne -- ze -- u -- le,
  Sfin -- te ta -- re,
  Sfin -- te făr' de moar -- te, __
  mi -- lu -- ieş -- te- -- ne pre noi.
}

tenorWords = \altoWords

bassWords = \lyricmode {
  A -- min.
  Sfin -- te Dum -- ne -- ze -- u -- le,
  Sfin -- te ta -- re, __
  Sfin -- te făr' __ de __ moar -- te, __
  mi -- lu -- ieş -- te- -- ne pre noi.
}

sopMusic = \relative c' {
  \cadenzaOn

  % Amin.
  g'4^\mf \bar "|"
  g2. r4

  \repeat volta 3 {
    % Sfinte Dumnezeule
    b4^\accent^\p a g8([ fis)] e([^\< fis)] \bar "|"
    g4\! a b2 \bar "|"

    % Sfinte tare
    b4^\accent a \bar "|"
    d(^\< c) b2\! \bar "|"

    % Sfinte făr' de moarte
    e4^\mf e e e \bar "|"
    d(^\accent c)^\> b( a)\! \bar "|"

    % Miluieşte-ne pre noi.
    g^\p^\< a\! \bar "|"
    b^\rallMarkup a g8([^\> a)] fis([ g)]\! \bar "|"
    e2.^\pp r4
  }
}

altoMusic = \relative c' {
  \cadenzaOn

  % Amin.
  d4^\mf
  d2. r4

  \repeat volta 3 {
    % Sfinte Dumnezeule
    g4^\accent^\p fis e e^\<
    e\! fis g2

    % Sfinte tare
    g4^\accent fis
    g(^\< a) g2\!

    % Sfinte făr' de moarte
    g4^\mf g g g
    g(^\accent fis)^\> g( fis)\!

    % Miluieşte-ne pre noi.
    e^\p^\< e\!
    e e e^\> dis\!
    b2.^\pp r4
  }
}

tenorMusic = \relative c' {
  \cadenzaOn

  % Amin.
  b4^\mf
  b2. r4

  \repeat volta 3 {
    % Sfinte Dumnezeule
    d4^\accent^\p d b b^\<
    b\! d d2

    % Sfinte tare
    d4^\accent c
    b(^\< d) d2\!

    % Sfinte făr' de moarte
    <<
      {
        \voiceOne
        e4^\mf e e e
        d2^\accent d
      }
      \new Voice = "split" {
        \voiceTwo
        c4 c c c
        b( d)^\> d( c)\!
      }
    >>

    % Miluieşte-ne pre noi.
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
}

bassMusic = \relative c' {
  \cadenzaOn

  % Amin.
  g4^\mf
  g2. r4

  \repeat volta 3 {
    % Sfinte Dumnezeule
    <g g,>^\accent^\p <d d,> <e e,> <e e,>^\<
    <e e,>\! <d d,> <g g,>2

    % Sfinte tare
    <g g,>4^\accent <d d,>
    <e e,>(^\< <fis fis,>) <g g,>(\! <a a,>8[ <b b,>])

    % Sfinte făr' de moarte
    <<
      {
        \voiceOne
        c4^\mf g c g8([ a)]
        b4(^\accent a)^\> g( d)\!
      }
      \new Voice = "split" {
        \voiceTwo
        c c c8([ d)] e([ fis)]
        g4( a) g( d)
      }
    >>

    % Miluieşte-ne pre noi.
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
    <e e,>2.^\pp
    r4
  }
}

\include "four-staves.ly"
