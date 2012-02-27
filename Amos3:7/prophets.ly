\version "2.14.2"

\header {
  title = "Prophets"
  composer = "Chris Chapman"
  poet = "Amos"
  opus = "Op. 0.2"
  copyright = \markup { \char ##x00A9 "2012 Chris Chapman. Licensed under a CC BY-NC-SA 3.0 Unported License." }
}

\include "english.ly"
\paper {
  #(set-paper-size "letter")
}

upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  e8 e~ e c d d c d | e g~ g4~ g8 g\( a b |
  c\) c~ c c g g e16 e g8 | a a~ a a e( d) c4 |
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  <c e>2 <as f'> | << { g'8 e~ e4 } \\ { g,2 } >> r | 
  <d' fs a c>\arpeggio <e c'> | <d f c'>4 g, a8 b <c e>4 |
}

text = \lyricmode {
  Sure -- ly the Lord God will do | no -- thing, __ but he re -- |
  veal -- eth his sec -- ret un -- to his | ser -- vants the pro -- phets. |
}

\score {
  \new GrandStaff <<
    \new Staff = upper { \new Voice = "singer" \upper }
    \new Lyrics \lyricsto "singer" \text
    \new Staff = lower { \lower \bar "|." }
    >>
  \layout {
    \context {
      \GrandStaff
      \accepts "Lyrics"
    }
    \context {
      \Lyrics
      \consists "Bar_engraver"
    }
  }
  \midi { }
}
