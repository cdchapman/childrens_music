\version "2.18.2"

\header {
  title = "Jen’s Arrangement"
  subtitle = "Tell me the stories of Jesus / Teach me to walk in the light"
  poet = \markup \column {
    \line { W.H. Parker }
    \line { Clara W. McMaster }
  }
  composer = \markup \right-column {
    \line { Frederic A.Challinor }
    \line { Clara W. McMaster }
  }
  arranger = \markup \right-column {
    \vspace #1 \line { Chris Chapman }
  }
  tagline = ##f
  copyright = \markup \fontsize #-1 \center-column { 
    \line  {
      Arrangement © 2016 Chris Chapman. Other contributions courtesy of their
      respective contributors.
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

introductionUpper = \relative c' {

  | <d f>8 <bf d> <c ef> <d f> <f a> <ef g>
  | <d f>4. <bf d>
  | <d f> << { \voiceOne c'4 f,8 } \new Voice { \voiceTwo ef4. } >>
  | \oneVoice <d bf'>2.

}

introductionLower = \relative c {

  | <bf f'>4. f'
  | <bf, f'> <bf f'>
  | <f' bf> <f a>
  | << { bf4. bf } \\ { bf,2. } >>

}

tellMeUpper = \relative c' {

  \mark \default

  | <d f>8 <bf d> <c ef> <d f> <f a> <ef g>
  | <d f>4. <bf d>
  | <a ef'> << { \voiceOne f'4 c8 } \new Voice { \voiceTwo a4. } >>
  | \oneVoice <bf d>2.
  
  | <d f>8 <bf d> <c ef> <d f> <f a> <ef g>
  | <d f>4. <d g>
  | <c a'> << { \voiceOne g'4 c,8 } \new Voice { \voiceTwo bf4. } >>
  | \oneVoice f'2.
  
  | <ef c'>4. << { \voiceOne a4 f8 } \new Voice { \voiceTwo ef4. } >>
  | \oneVoice <d g> <d f>
  | <d c'> << { \voiceOne bf'4 af8 } \new Voice { \voiceTwo d,4. } >>
  | << { \voiceOne g2. } \new Voice { \voiceTwo d4.( ef) } >>

  | \oneVoice <ef d'>4. << { \voiceOne c'4 a8 } \new Voice { \voiceTwo ef4. } >>
  | \oneVoice <d bf'>4. <cs e>\fermata
  | <d f> << { \voiceOne c'4 f,8 } \new Voice { \voiceTwo ef4. } >>
  | \oneVoice <d bf'>2.

}

tellMeLower = \relative c {

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
  | << { f4. f } \\ { bf,2. } >>
}

tellMeText = \lyricmode {

  | Tell me the sto -- ries of | Je -- sus | I love to | hear,
  | Things I would ask him to | tell me | if he were | here.
  | Scenes by the | way -- side, | tales of the | sea,
  | Sto -- ries of | Je -- sus, | tell them to | me.

}

transitionUpper = \relative c' {

  | <d f>8 <bf d> <c ef> <d f> <f a> <ef g>
  | <d f>4. <cs e>
  | <fs a>8 <d fs> <e g> <fs a> <a cs> <g b>
  | <fs a>4 <e g>8 <d fs> <e g> <fs a>

  | << { b( e,4) } \\ d4. >> << { a'8[( d,]) d } \\ d4. >>
  | <e g>4 <d fs> <cs e>
  | \bar "!" \textLengthOn d2.^\markup { \tiny { (optional measure) } }

}

transitionLower = \relative c {

  | <bf f'>4. f'
  | <bf, f'> <a g'>
  | <a a'> a'
  | a8 a,4 a'4.

  | <g b>4. <fs a>
  | <g b>4 a <a, g'>
  | <d fs>2.
}

teachMeUpper = \relative c' {

  \mark \default

  \repeat unfold 2 {

    | << { \voiceOne fs4 fs } \new Voice { \voiceTwo d2 } >> \oneVoice <d b'>4
    | <d a'> d <cs g'>
    | << { \voiceOne fs fs } \new Voice { \voiceTwo d2 } >> \oneVoice <b e g>4
    | <a cs e>2.

    | << { \voiceOne e'4 e } \new Voice { \voiceTwo cs2 } >> \oneVoice <d b'>4
    | <cs a'> << { \voiceOne cs e | <g b> <fs a> <e g> } \new Voice { \voiceTwo cs2 | cs } >>
    | \oneVoice <d fs>2.

    | d4 d fs
    | <fs a> fs d
    | << { \voiceOne g b } \new Voice { \voiceTwo d,2 } >> \oneVoice <g d'>4
    | <fs a>2.

    | << { \voiceOne b4 e,2 } \new Voice { \voiceTwo d2. } >>
    | \oneVoice <d a'>4 d4. d8
    | <e g>4 <d fs> <cs e>
    | << { \voiceOne d2. } \new Voice { \voiceTwo d2. } >>

  }

}

teachMeLower = \relative c {

  \repeat unfold 2 {
    | <d a'>2 g4
    | <fs a>2 <e a>4
    | <d a'>2 g,4
    | a2.

    | <g' a>2 <e g>4
    | <a, g'>2.
    | a4 b <cs a'>
    | <d a'>2.

    | b'2 <bf d>4
    | <a d>2 <d, c'>4
    | <g b>2 <g b>4
    | d'2.

    | <g, b>2.
    | <fs a>
    | <g b>4 a <a, g'>
    | <d fs>2.

  }

}

teachMeText = \lyricmode {

  | Teach me to | walk in the | light of his | love;
  | Teach me to | pray to my | Fa -- ther a -- | bove;
  | Teach me to | know of the | things that are | right;
  | Teach me, | teach me to | walk in the | light.

  | Fa -- ther in | Heav -- en, we | thank thee this | day
  | For lov -- ing | guid -- ance to | show us the | way.
  | Grate -- ful, we | praise thee with | songs of de -- | light!
  | Glad -- ly, | glad -- ly we’ll | walk in the | light.

}

tellMeTempo = 60
teachMeTempo = #(/ (* 3 tellMeTempo) 2)

\score {
  \new GrandStaff <<
    \new Staff = "upper" {
      \clef treble \key bf \major \time 6/8
      \set Score.tempoHideNote = ##t
      \tempo 4. = \tellMeTempo
      \introductionUpper \bar "||"
      \new Voice = "tellMe" \tellMeUpper
      \transitionUpper \bar "||"
      \time 3/4 \key d \major 
      \tempo \markup {
        \concat {
          (
          \smaller \general-align  #Y #DOWN \note #"8" #1
          " = "
          \smaller \general-align  #Y #DOWN \note #"4" #1
          )
        }
      } 4 = \teachMeTempo
      \new Voice = "teachMe" \teachMeUpper \bar "|."
    }
    \new Lyrics \lyricsto "tellMe" \tellMeText
    \new Lyrics \lyricsto "teachMe" \teachMeText
    \new Staff = "lower" {
      \clef bass \key bf \major
      \introductionLower
      \tellMeLower
      \transitionLower
      \key d \major 
      \teachMeLower
    }
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
