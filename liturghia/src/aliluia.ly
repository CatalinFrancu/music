\version "2.12.0"
\include "defines.ly"
\include "preamble.ly"

\header {
  meter = "Andantino"
}

global = {
  \globalPreamble
  \key as \major
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = #mixedTimeSigMarkup
  \time 2/4
}

ppAndFermata = \markup {
  \hspace #-5.0
  \musicglyph #"p"
  \hspace #-1.0
  \musicglyph #"p"
  \hspace #1.0
  \musicglyph #"scripts.ufermata"
}

sopWords = \lyricmode {
  A -- li -- lu -- i -- a, __
  A -- li -- lu -- i -- a,
  A -- li -- lu -- i -- a.
}

altoWords = \sopWords

tenorWords = \sopWords

bassWords = \lyricmode {
  A __
  A -- li -- lu -- i'
  A -- li -- lu -- i -- a.
}

sopMusic = \relative {
  \cadenzaOn

  f4^\p g^\< \bar "|"
  as( bes)\! as(^\> g) \bar "|"
  f(\! es) \breathe f g \bar "|"
  as(^\< bes)\! as(^\> g8[ as)]\! \bar "|"
  f2^\ritMarkup \breathe \bar "|"
  bes8([^\mf as^\atempoMarkup bes c)] as([ g as bes)] \bar "|"
  as([ bes as g)] f([^\rallMarkup g16^\> as] f4)\! \bar "|"
  f2^\ppAndFermata \bar "|."
}

altoMusic = \relative {
  \cadenzaOn

  f4^\p f^\<
  f2\! f4(^\> g)
  f(\! es) \breathe f f
  f2^\< f4(^\> g8[ as)]\!
  f2 \breathe
  f^\mf f
  f4.( es8) c4.(^\> des8)\!
  c2^\ppAndFermata
}

tenorMusic = \relative {
  \cadenzaOn

  as4^\p bes^\<
  c( des)\! c(^\> bes)
  as(\! g) \breathe as bes
  c(^\< des)\! c(^\> bes8[ c)]\!
  as2 \breathe
  des^\mf c
  c4.( bes8) as4.(^\> bes8)\!
  as2^\ppAndFermata
}

bassMusic = \relative {
  \cadenzaOn

  <<
    {
      \voiceOne
      f,2~
      f1~
      f1~
      f1
    }
    \new Voice = "split" {
      \voiceTwo
      f,2~
      f1~
      f1~
      f1
    }
  >>
  \oneVoice
  f'8^\< f16([ es)] des8 c8\! \breathe
  <<
    {
      \voiceOne
      bes2^\mf f'
      f f^\>
      f2\!^\ppAndFermata
    }
    \new Voice = "split" {
      \voiceTwo
      bes,2 f
      f f
      f2
    }
  >>
  \oneVoice  
}

\include "four-staves.ly"
