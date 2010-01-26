\version "2.12.0"
\include "defines.ly"
#(set-global-staff-size 12)
\include "preamble.ly"

\header {
  title = "Veniţi să ne închinăm"
  subtitle = "glasul 1"
  meter = "Moderato"
}

mpMusicGlyphs = \markup {
  \musicglyph #"m" \hspace #-1.0 \musicglyph #"p"
}

meterAndMpMarkup = \markup {
  \column {
    "Puţin mai mişcat"
    \mpMusicGlyphs
  }
}

global = {
  \globalPreamble
  \key g \major
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = #mixedTimeSigMarkup
  \time 4/4
}

womenWords = \lyricmode {
  Ve -- niţi __ să ne în -- chi -- năm şi să că -- dem __ la Hris -- tos.
  Mân -- tu -- ieş -- te- -- ne pre noi, Fi -- ul lui Dum -- ne -- zeu,
  Cel __ ce ai în -- vi -- at din __ morţi,
  pre noi cei ce-ţi cân -- tăm: A -- li -- lu -- i -- a. __
}

womenAlternateWords = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  Cel __ ce eşti mi -- nu -- nat
  \set ignoreMelismata = ##t
  în -- tru Sfinţi,
  \unset ignoreMelismata
}

tenorWords = \lyricmode {
  Ve -- niţi __ să ne în -- chi -- năm şi să că -- dem __ la __ Hris -- tos.
  Mân -- tu -- ieş -- te- -- ne pre noi, Fi -- ul lui Dum -- ne -- zeu,
  Cel ce ai în -- vi -- at din __ morţi,
  pre noi cei ce-ţi cân -- tăm: A -- li -- lu -- i' A -- li -- lu -- i -- a. __
}

tenorAlternateWords = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4
  Cel ce eşti mi -- nu -- nat
  \set ignoreMelismata = ##t
  în -- tru Sfinţi,
  \unset ignoreMelismata
}

bassWords = \lyricmode {
  Ve -- niţi __ să ne în -- chi -- năm şi să că -- dem __ la __ Hris -- tos.
  Mân -- tu -- ieş -- te- -- ne pre noi, Fi -- ul lui Dum -- ne -- zeu,
  Cel __ ce ai în -- vi -- at din __ morţi,
  pre noi cei ce-ţi cân -- tăm: __ A -- li -- lu -- i -- a. __
}

bassAlternateWords = \womenAlternateWords

sopMusic = \relative {
  \cadenzaOn
  % Veniţi să ne închinăm şi să cădem la Hristos.
  b'4^\mf \bar "|"
  e(^\accent d) c b \bar "|"
  a^\> g \bar "|"
  a4.\! \breathe  b8 a4 g \bar "|"
  g(^\accent fis)^\> e d\! \bar "|"
  e2 \breathe

  % Mântuieşte-ne pre noi, Fiul lui Dumnezeu
  e4^\meterAndMpMarkup e \bar "|"
  a a g a \bar "|"
  b2 \bar "|"
  d4(^\accent c) b a^\< \bar "|"
  g a \bar "|"
  b2\! \bar "|"

  % Cel ce ai înviat din morţi / Cel ce eşti minunat întru Sfinţi
  c4(^\accent b) a^\< a \bar "|"
  b cis \bar "|"
  \slurDashed
  d2\!^\mf c4(^\> b) \bar "|"
  \slurSolid
  a4.\! \breathe

  % Pe noi cei ce-ţi cântăm: Aliluia
  e8 \bar "|"
  a4^\accent a g a \bar "|"
  b2 g4^\< g\! \bar "|"
  a a^\> e2~ \bar "|"
  e1~ \bar "|"
  e4\!^\fermata r r \bar "|."

}

altoMusic = \relative {
  \cadenzaOn
  % Veniţi să ne închinăm şi să cădem la Hristos.
  b'4^\mf
  e(^\accent d) c b
  a^\> e
  a4.\! \breathe b8 a4 g
  g(^\accent fis)^\> e d\!
  e2 \breathe

  % Mântuieşte-ne pre noi, Fiul lui Dumnezeu
  e4^\mp e
  e e e e
  e2
  e e4 e^\<
  e fis
  g2\!

  % Cel ce ai înviat din morţi / Cel ce eşti minunat întru Sfinţi
  fis4(^\accent g) fis^\< fis
  g g
  \slurDashed
  fis2\!^\mf d4(^\> g)
  \slurSolid
  fis4.\! \breathe

  % Pe noi cei ce-ţi cântăm: Aliluia
  e8
  e4^\accent e e e
  e2 e4^\< e\!
  e e^\> e2~
  e1~
  e4\!^\fermata r r
}

tenorMusic = \relative {
  \cadenzaOn
  % Veniţi să ne închinăm şi să cădem la Hristos.
  b4^\mf
  e(^\accent d) c b
  a^\> b
  c4.\! \breathe b8 a4 g
  g(^\accent fis)^\> g8( a) b4\!
  b2 \breathe

  % Mântuieşte-ne pre noi, Fiul lui Dumnezeu
  e,4^\mp e
  c' c b c
  b2
  b4(^\accent a) g a^\<
  b d
  d2\!

  % Cel ce ai înviat din morţi / Cel ce eşti minunat întru Sfinţi
  d^\accent d4^\< d
  d e
  \tieDashed
  d2\!^\mf d4~^\> d4
  \tieSolid
  d4.\! \breathe

  % Pe noi cei ce-ţi cântăm: Aliluia
  b8
  c4^\accent c b c
  b2 b4^\< b\!
  c^\accent c^\> b\!^\< b\!
  c c^\> b2~\!
  b4^\fermata r r
}

bassMusic = \relative {
  \cadenzaOn
  % Veniţi să ne închinăm şi să cădem la Hristos.
  b4^\mf
  e(^\accent d) c b
  a^\> e
  a4.\! \breathe b8 a4 g
  g(^\accent fis)^\> e8( fis) g4\!
  e2 \breathe

  % Mântuieşte-ne pre noi, Fiul lui Dumnezeu
  e4^\mp e
  a a e e
  e2
  e2 e4 e^\<
  e d
  g2\!

  % Cel ce ai înviat din morţi / Cel ce eşti minunat întru Sfinţi
  a4(^\accent b) c4^\< c
  b a
  \slurDashed
  d2\!^\mf fis,4(^\> g)
  \slurSolid
  d4.\! \breathe

  % Pe noi cei ce-ţi cântăm: Aliluia
  e8
  e4^\accent e e e
  e1~
  e2 e4^\< e\!
  a^\> a e2~\!
  e4^\fermata r r
}

% Do not include four-staves.ly, since we need a second stanza of lyrics.
myScore = \new Score \with {
  \override SpacingSpanner #'shortest-duration-space = #myNoteSpacing
} <<
  \new ChoirStaff <<
    \new Staff \new Voice { \global \sopMusic }
    \addlyrics { \womenWords }
    \addlyrics { \womenAlternateWords }
    
    \new Staff \new Voice { \global \altoMusic }
    \addlyrics { \womenWords }
    \addlyrics { \womenAlternateWords }
    
    \new Staff <<
      \clef "G_8"
      \new Voice { \global \tenorMusic }
      \addlyrics { \tenorWords }
      \addlyrics { \tenorAlternateWords }
    >>
    
    \new Staff <<
      \clef bass
      \new Voice { \global \bassMusic }
      \addlyrics { \bassWords }
      \addlyrics { \bassAlternateWords }
    >>
  >>
>>

\score {
  \myScore
  \layout { }
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \sopMusic }
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \altoMusic }
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \tenorMusic }
  \midi { \midiDirectives }
}

\score {
  \unfoldRepeats
  \new Voice { \global \bassMusic }
  \midi { \midiDirectives }
}
