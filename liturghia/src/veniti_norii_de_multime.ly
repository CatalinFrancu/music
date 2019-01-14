\version "2.19.80"
\include "defines.ly"
#(define myNoteSpacing 6.0)
\include "preamble.ly"

\header {
  title = "Veniți norii de mulțime"
  subtitle = "Colind de Florii"
  composer = "de Gh. Cucu"
  meter = "Moderato"
}

global = {
  \globalPreamble
  \key f \major
  \time 2/4
}

allWords = <<
  \new Lyrics \lyricmode {
    \set associatedVoice = #"sopranos"
    \set stanza = "1. "
    Ve4 -- niți no -- rii de mul -- ți -- me
    Și8 co8 -- pii2 __ și4 ti -- ne -- ri -- me
    A4. -- li8 -- lu4 -- ia,4

    Toți cu ra -- muri în -- ver -- zi -- te
    Și8 cu8 stâl2 -- pări4 în -- frun -- zi -- te
    A4. -- li8 -- lu4 -- ia,4 A4. -- li8 -- lu4 -- ia,4

    Să-n tâm -- pi -- năm ca tot __ o -- mul
    Pre8 I8 -- i2 -- sus4 Hris -- tos Dom -- nul
    A4. -- li8 -- lu4 -- ia,4 A4. -- li8 -- lu4 -- ia,4
    A8 -- li8 -- lu4 -- ia.2
  }

  \new Lyrics \lyricmode {
    \set associatedVoice = #"sopranos"
    \set stanza = "2. "
    Cel4 ce-i plin __ de bu -- nă -- ta -- te,
    in8 -- trând8 în2 __ sfân4 -- ta ce -- ta -- te
    A4. -- li8 -- lu4 -- ia,4

    Vrând ca să __ dea mân -- tu -- i -- re
    Și8 de8 toa2 -- te4 iz -- bă -- vi -- re
    A4. -- li8 -- lu4 -- ia,4 A4. -- li8 -- lu4 -- ia,4

    De a -- cum __ pâ -- nă-n ve -- ci -- e
    A8 -- min,8 Doam2 -- ne,4 fi -- e, __ fi -- e!
    A4. -- li8 -- lu4 -- ia,4 A4. -- li8 -- lu4 -- ia,4
    A8 -- li8 -- lu4 -- ia.2
  }
>>

sopMusic = \relative c' {
  \autoBeamOff

  % Veniți norii de mulțime
  c'4 d4
  c8([ bes8]) a4
  g4 c8([ bes8)]
  a8([ g8)] f4

  % Și copii și tinerime, Aliluia
  f8 f8 g4~
  g4 bes4
  a4 g8([ a8)]
  f4 f4 \breathe
  d'4. e8
  f4 c4

  % Toți cu ramuri înverzite
  R2 * 4

  % Și cu stâlpări înfrunzite, Aliluia, Aliluia
  R2 * 4
  d4. e8
  f4 c4
  d4. e8
  f4 c4

  % Să-ntâmpinăm ca tot omul
  R2 * 4

  % Pe Iisus Hristos Domnul
  R2 * 4

  % Aliluia, Aliluia, Aliluia.
  d4. e8
  f4 c4
  d4. e8
  f4 c4
  d8^\rarMarkup d8 d4
  c2^\fermata \bar "|."
}

altoMusic = \relative c' {
  \autoBeamOff

  % Veniți norii de mulțime
  R2 * 4

  % Și copii și tinerime, Aliluia
  R2 * 4
  bes'4. c8
  c4 a4

  % Toți cu ramuri înverzite
  c4 d4
  c8([ bes8]) a4
  g4 c8([ bes8)]
  a8([ g8)] f4

  % Și cu stâlpări înfrunzite, Aliluia, Aliluia
  f8 f8 g4~
  g4 bes4
  a4 g8([ a8)]
  f4 f4
  bes4. c8
  c4 a4
  bes4. c8
  c4 a4

  % Să-ntâmpinăm ca tot omul
  R2 * 4

  % Pe Iisus Hristos Domnul
  R2 * 4

  % Aliluia, Aliluia, Aliluia.
  bes4. c8
  c4 a4
  bes4. c8
  c4 a4
  bes8 bes8 bes4
  a2
}

tenorMusic = \relative c' {
  \autoBeamOff
  \oneVoice

  % Veniți norii de mulțime
  R2 * 4

  % Și copii și tinerime, Aliluia
  R2 * 4
  bes4. g8
  a4 f4

  % Toți cu ramuri înverzite
  R2 * 4

  % Și cu stâlpări înfrunzite, Aliluia, Aliluia
  R2 * 4
  bes4. g8
  a4 f4
  bes4. g8
  a4 f4

  % Să-ntâmpinăm ca tot omul
  c'4 d4
  c8([ bes8]) a4
  g4 c8([ bes8)]
  a8([ g8)] f4

  % Pe Iisus Hristos Domnul
  f8 f8 g4~
  g4 bes4
  a4 g8([ a8)]
  f4 f4

  % Aliluia, Aliluia, Aliluia.
  bes4. g8
  a4 f4
  bes4. g8
  a4 f4
  bes8 bes8 bes4
  f2^\fermata
}

bassMusic = \relative c' {
}

\include "lyrics-in-between.ly"
