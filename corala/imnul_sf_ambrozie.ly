\version "2.19.80"

\paper {
  #(set-paper-size "letter")
  left-margin = 1\in
  line-width = 7\in
  print-page-number = false
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}

\header {
  title = "Pe Tine, Dumnezeule, Te lăudăm"
  subtitle = "Imnul Sf. Ambrozie"
  composer =  \markup \center-column { "Sf. Ambrozie al Mediolanului" \small
  "arm. prof. Ov. Giulvezan"  \small "Timișoara, aug. 2011" }
  meter = "Moderato"
  tagline = ""
}

global = {
  \key c \major
  \time 4/4
  \override Staff.TimeSignature.stencil = ##f
  \set Timing.defaultBarType = ""
  \set Score.barNumberVisibility = ##f
  \autoBeamOff
  \set Staff.midiInstrument = "clarinet"
}

stanzaOne = \lyricmode {
	Pe Ti -- ne Dum -- ne -- ze -- u -- le, Te lă -- u -- dăm,
	pe Ti -- ne Doam -- ne Te măr -- tu -- ri -- sim;
	pe Ti -- ne prea veș -- ni -- cu -- le Pă -- rin -- te, tot pă -- mân --
	tul Te mă -- reș -- te.
	Ți -- e toți în -- ge -- rii, Ți -- e, ce -- ru -- ri -- le și toa -- te
	pu -- te -- ri -- le, Ți -- e, He -- ru -- vi -- mii și Se -- ra -- fi
	-- mii, cu ne -- în -- ce -- tat glas îți stri -- gă:
	Sfânt, Sfânt, Sfânt, Dom -- nul Dum -- ne -- zeu Sa -- va -- ot! Pli -- ne
	sunt ce -- ru -- ri -- le și pă -- mân -- tul de  mă -- ri -- rea
	sla -- vei Ta -- le.
	Mân -- tu -- ieș -- te, Doam -- ne, po -- po -- rul Tău și bi -- ne --
	cu -- vin -- tea -- ză_ moș -- te -- ni -- rea Ta și paș -- te -- o pe
	dân -- sa și -- 'nal -- ță -- o în veci.
	Spre Ti -- ne Doam -- ne am nă -- dăj -- du -- it, să nu ne ru -- și --
	năm în veci A -- min
}

sopranMusic = \relative c'' {
	g4 c-> b a b
	\acciaccatura { d8 } c4 b8[( a)] g4 g a b c4. b8 d4-> b
	\acciaccatura { d8 } c4( b8[ a]) g2 a4 f e f g4. g8 c4-> ( b) a g
	\acciaccatura { b8 } a4( g) f8[( e]) d4 e f g( a) g2 g4
	\acciaccatura { a8 } g4 g f e d e8[( f g e]) c2
	\bar "||" \break
	c'4-> ( b) a c c8[( d]) b4 c2 c4-> b c8[( d] c4) b a g4. g8 f4( e) f g
	a f g2 c4-> b a g
	\acciaccatura { b8 } a4( g) f8[( e]) d4 e f g( a) g2 g4 g g g
	\acciaccatura { b8 } a4( g) f8[( e]) d4 e8[( f g e)] c2
	\bar "||" \break
	c'2 b c f,4 f e f g2 a4 b c2
	\acciaccatura { d8 } c4( b) a b c8[( d] c4) b a g( f8[ e]) f4 g
	a( bes) g2 g4 g c->( b) a( g) f8[( e]) d4 e8[( f g e]) c2
	\bar "||" \break
	g'4 g c-> b c->( b8[ a]) g4 g a b c4. b8 d4-> b a b
	\acciaccatura { d8 } c4( b8[ a]) g4( f8[ e])
	f4 g a-> f g4. g8 c8.[( d16 c8)] bes a4 g a8[( bes a g)] f[( e)] d4 g->
	f e d8[( e)] c2
	\bar "||" \break
	g'4 c-> b c->( b8[ a)] g2 g4 g a b c4. g8 c[( d c]) bes a4 g f8[( e)] d4
	e8[( f] g) e d2( c4 b a b c2)
	\bar "|."

}

altMusic = \relative c' {
	g4 e d c d
	\acciaccatura { f8 } e4 f g g f g a4. g8 f4 g
	\acciaccatura { b8 } a4( g8[ f]) e2 f4 d c d e4. e8 a4( g) f e
	\acciaccatura { d8 } c4( e)  f8[( e]) d4 c d e( f) g2 b,4
	\acciaccatura { c8 } b4 c d e f e8[( d c e]) g2
	\bar "||" \break
	a4( g) f e e8[( f]) g4 a2 a4 g f( e) d c e4. e8 f4( e) d e f a g2 e4 d c e
	\acciaccatura { g8 } f4( e) f8[( g]) a4 g f e( d) e2 g4 f e d
	\acciaccatura { d8 } c4( b) c f e8[( d c e]) g2
	\bar "||" \break
	c,2 d e a4 a g f e2 f4 g a2
	\acciaccatura { b8 } a4( g) f g a8[( b] c4) g f e( d8[ c]) d4 e f( g) e2
	c4 e a( g) f( e) d8[( c]) f4 e8[( d c e]) g2
	\bar "||" \break
	g4 c, a' g f( g8[( f]) e4 e f g a4. g8 f4 g f e
	\acciaccatura { b'8 } a4( g8[ f]) e4( d8[( c]) d4 e f a g4. g8 e8.[( f16 e8])
	g f4 e f8[( g f e]) d8[( c]) f4 e d c b8[( g]) c2
	\bar "||" \break
	g'4 e d c( g'8[( f]) e2 c4 e f g a4. b8 c[( bes a]) g f4 e d8[( c]) b4
	c8[(d] e) e f2( e4 d c g' c,2)
	\bar "|."

}

myScore = \new Score <<
  \new ChoirStaff <<
    \new Staff <<
    \new Voice { \global \sopranMusic }
    \addlyrics { \stanzaOne }

    \new Staff <<
    \clef "G_8"
    \new Voice { \global \altMusic }
    %  \addlyrics { \stanzaOne }
    >>

    >>
  >>
>>

\score {
  \myScore
  \layout { }
}

midiOutput = \midi {
  \tempo 4 = 60
}

\score {
  \unfoldRepeats
  \myScore
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \sopranMusic }
  \midi { \midiOutput }
}

\score {
  \unfoldRepeats
  \new Voice { \global \altMusic }
  \midi { \midiOutput }
}
