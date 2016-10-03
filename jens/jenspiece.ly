\version "2.18.2"

\header {
  title = "Jen’s Arrangement"
  subtitle = "Tell me the stories of Jesus / Teach me to walk in the light"
  arranger = "Chris Chapman"
  copyright = \markup \fontsize #-1 \center-column { 
    \line  {
      Arrangement © 2016 Chris Chapman.
    }
    \line {
      This arrangement may be freely copied, distributed,
      performed, and recorded under the provisions of the 
    }
    \with-url #"http://creativecommons.org/licenses/by/3.0/"
    \line {
      Creative Commons License \concat { ( \tiny CC-BY , } 
      http://creativecommons.org/licenses/by/3.0/).
    }
  }
}

\include "english.ly"
\paper {
  #(set-paper-size "letter")
}

tellMeUpper = \relative c' {
  \clef "treble"
  \key bf \major
  \time 6/8

  | <d f>8 <bf d> <c ef> <d f> <f a> <ef g>
  | <d f>4. <bf d>
  | <a ef'> << { \voiceOne f'4 c8 } \new Voice { \voiceTwo a4. } >>
  | \oneVoice <bf d>2.
  \break
  | <d f>8 <bf d> <c ef> <d f> <f a> <ef g>
  | <d f>4. <d g>
  | <c a'> << { \voiceOne g'4 c,8 } \new Voice { \voiceTwo bf4. } >>
  | \oneVoice f'2.
  \break
  | <ef c'>4. << { \voiceOne a4 f8 } \new Voice { \voiceTwo ef4. } >>
  | \oneVoice <d g> <d f>
  | <d c'> << { \voiceOne bf'4 af8 } \new Voice { \voiceTwo d,4. } >>
  | << { \voiceOne g2. } \new Voice { \voiceTwo d4.( ef) } >>
  \break
  | \oneVoice <ef d'>4. << { \voiceOne c'4 a8 } \new Voice { \voiceTwo ef4. } >>
  | \oneVoice <d bf'>4. <cs e>\fermata
  | <d f> << { \voiceOne c'4 f,8 } \new Voice { \voiceTwo ef4. } >>
  | \oneVoice <d bf'>2.

}

tellMeLower = \relative c {
  \clef "bass"
  \key bf \major

  | <bf f'>4. f'
  | <bf, f'> <bf f'>
  | c f
  | << { f4. f } \\ { bf,2. } >>

  | <bf f'>4. f'
  | <bf, f'> <b f'>
  | << { f'4. e } \\ { c2. } >>
  | << { a'2. } \\ { f4. f } >>

  | a f
  | bf, bf
  | af' g4 f8
  | <b, f'>4. << { ef8 f g } \\ { c,4. } >>

  | a'?4. f
  | g <g bf>_\fermata
  | <f bf> <f a>
  | bf,2.
}

tellMeText = \lyricmode {

  | Tell me the sto -- ries of | Je -- sus | I love to | hear,
  | Things I would ask him to | tell me | if he were | here.
  | Scenes by the | way -- side, | tales of the | sea,
  | Sto -- ries of | Je -- sus, | tell them to | me.

}

teachMeText = \lyricmode {

  Teach me to walk in the light of his love;
  Teach me to pray to my Father above;
  Teach me to know of the things that are right;
  Teach me, teach me to walk in the light.

  Father in Heaven, we thank thee this day
  For loving guidance to show us the way.
  Grateful, we praise thee with songs of delight!
  Gladly, gladly we'll walk in the light.

}

\score {
  \new GrandStaff <<
    \new Staff = "upper" { \new Voice = "melody" \tellMeUpper }
    \new Lyrics \lyricsto "melody" \tellMeText
    \new Staff = "lower" { \tellMeLower \bar "|." }
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
