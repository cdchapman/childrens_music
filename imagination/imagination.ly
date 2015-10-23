\version "2.18.2"

\header {
  title = "Imagination Song"
  composer = "Bailey Burch"
}

\include "english.ly"
\paper {
  #(set-paper-size "letter")
}

upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  r  e g c, | d4. ( f8 ) d2       |
  r4 e g c, | d4. ( f8 ) d2       |
  e4 f g c~ | c4. c8 e, ( d ) c4  |
  d1 |
  r4 e f g  | a4. g8 f4 g         |
  r  e f g  | a4. g8 f4 g         |
  r  e f g  | c4.~ c8 e, ( d ) c4 |
  d1 |
  r4 e f g  | c2     e,8 d c4     |
  c1 \bar "|."

}

text = \lyricmode {
  I -- ma -- gi -- na -- tion can be so very fun.
  Think of the pos -- si -- bi -- li -- ties.
  Dogs play -- ing mi -- ni -- ature golf,
  Cats wear -- ing fluf -- fy blue scarves,
  Cars that can fly through the air.
  Do you be -- lieve it could be true?
}

\score {
  \new GrandStaff <<
    \new Staff = upper { \new Voice = "singer" \upper }
    \new Lyrics \lyricsto "singer" \text
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
  \midi { 
    \tempo 4 = 120 
  }
}
