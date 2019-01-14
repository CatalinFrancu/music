\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 8.0)
#(define myStaffSpacing 1.5)
midiTempo =
  \midi {
    \tempo 4 = 80
    }


\include "preamble.ly"

\header {
  meter = "Rar"
}

global = {
  \globalPreamble
  \key g \major
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = #""
  \time 2/4
}

ppAndFermata = \markup {
  \hspace #-5.0
  \musicglyph "p"
  \hspace #-1.0
  \musicglyph "p"
  \hspace #1.0
  \musicglyph "scripts.ufermata"
}

sopWords = \lyricmode {
  Sfin -- te Dum -- ne -- ze -- u -- le,
  Sfin -- te ta -- re,
  Sfin -- te făr' de moar -- te, __
  mi -- lu -- ieş -- te- -- ne __ pre __ noi.
}

altoWords = \lyricmode {
  Sfin -- te Dum -- ne -- ze -- u -- le,
  Sfin -- te ta -- re,
  Sfin -- te făr' de moar -- te, __
  mi -- lu -- ieş -- te- -- ne pre noi.
}

tenorWords = \altoWords

bassWords = \altoWords

sopMusic = \relative c' {
  \cadenzaOn

  % Sfinte Dumnezeule
  b'4^\accent^\mf a g8([ fis)] e([ fis)] \bar "|"
  g4^\< a b2\! \bar "|"

  % Sfinte tare
  g'4^\f^\< e fis(\! dis) \bar "|"
  e1^\> \bar "|"

  % Sfinte făr' de moarte
  e4\!^\accent^\mf e^\descrescendoMarkup e e \bar "|"
  d(^\accent c) b( a) \bar "|"

  % Miluieşte-ne pre noi.
  g^\p^\< a\! \bar "|"
  b^\rallMarkup a g8([^\> a)] fis([ g)]\! \bar "|"
  e2^\ppAndFermata r \bar "|."
}

altoMusic = \relative c' {
  \cadenzaOn

  % Sfinte Dumnezeule
  g'4^\accent^\mf fis e e8([ fis)]
  g4^\< e fis2\!

  % Sfinte tare
  <<
    {
      \voiceOne
      b4^\f^\< b a2\!
    }
    \new Voice = "split" {
      \voiceTwo
      b4 g a2
    }
  >>
  \oneVoice
  g1^\>

  % Sfinte făr' de moarte
  g4\!^\accent^\mf g^\descrescendoMarkup a a
  fis2^\accent g4( fis)

  % Miluieşte-ne pre noi.
  e^\p^\< e\!
  e e e^\> dis\!
  b2^\ppAndFermata r
}

tenorMusic = \relative c' {
  \cadenzaOn

  % Sfinte Dumnezeule
  d4^\accent^\mf d b b
  b^\< e dis2\!

  \accidentalStyle forget
  % Sfinte tare
  e4^\f^\< e dis(\! fis)
  e1^\>

  \accidentalStyle default
  % Sfinte făr' de moarte
  e4\!^\accent^\mf d^\descrescendoMarkup c c
  <<
    {
      \voiceOne
      d2^\accent d
    }
    \new Voice = "split" {
      \voiceTwo
      d2 d4( c)
    }
  >>
  \oneVoice

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
  g2^\ppAndFermata r2
}

bassMusic = \relative c' {
  \cadenzaOn

  % Sfinte Dumnezeule
  g4^\accent^\mf d e e
  e^\< c' b2\!

  % Sfinte tare
  r2 b4^\f^\< b\!
  c2 c^\>

  % Sfinte făr' de moarte
  c4\!^\accent^\mf b^\descrescendoMarkup a a
  b(^\accent a) g( d)

  % Miluieşte-ne pre noi.
  <<
    {
      \voiceOne
      e^\p^\< fis\!
      g a b^\> b,\!
      e2^\ppAndFermata
    }
    \new Voice = "split" {
      \voiceTwo
      e4 e
      e a, b b
      e,2
    }
  >>
  \oneVoice
  r2
}

\include "four-staves.ly"
