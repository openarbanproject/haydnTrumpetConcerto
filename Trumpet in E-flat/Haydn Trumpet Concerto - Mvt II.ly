\version "2.18.2"
\language "english"

\book {
  \paper {
    indent = 0\mm
    scoreTitleMarkup = \markup {
      \fill-line {
        \null
        \fontsize #4 \bold \fromproperty #'header:piece
        \fromproperty #'header:composer
      }
    }
    fonts = #
  (make-pango-font-tree
   "Lato"
   "Lato"
   "Liberation Mono"
   (/ (* staff-height pt) 2.5))
  }
  \header {  
            tagline = "This work is licensed under a CC BY-SA 4.0 license."
            subtitle = "II. Andante Cantabile"
  }
  
  \score {
    \relative c'
    {
      \numericTimeSignature \time 6/8
      \compressFullBarRests \override MultiMeasureRest.expand-limit = #2
      \key f \major
      R2.*8
      f8. g16 a8 g bf e, f4 a8 c r c ~ c bf a ~ a g f ~ f e16 g f d c4 r8 \break
      f8. g16 a8 g bf e, f8 ~ f32 g f e f g a bf c4 cs8 
      d4 c32 bf a g f8. g16 e8 f c a' f r4 
      R2. \break
      r4. r4 c'8 df4 e,8 f4 g8 bf4 af8 g r c,
      df4 d8 ef4 e8 f4 g8 af c ef f, bf df16 bf af8. bf16 g8 af af c af4 r8
      e4. ef8 r4 e4. ef8 r4 \break
      
      R2.*3
      c8 c c df4. c8 c c df4. c8 r4 r4. \break
      f8. g16 a8 g bf e, f4 a8 c r c ~ c bf a ~ a g f ~ 
      f \tuplet 6/4 {e16 f g f e d} c4 r8 \break
      f8. g16 a8 g bf e, f8 ~ f32 g f e f g a bf c8 f cs
      d4 c32 bf a g f8. g16 e8 f c a' f r4
      R2. \break
      r4. r4 c'8 b16 c d c d e f4 ef8 d r c bf r a
      g bf d f,8. g16 e8 f c a' f r8 c
      df4. c8 r c df4. c8 r c c r c c c c c r4 r4. \bar "|."
    }
  }
}