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
      \key bf \major
      R2.*8
      bf'8. c16 d8 c ef a, bf4 d8 f r f ~ f ef d ~ d c bf ~ bf a16 c bf g f4 r8 \break
      bf8. c16 d8 c ef a, bf8 ~ bf32 c bf a bf c d ef f4 fs8 
      g4 f32 ef d c bf8. c16 a8 bf f d' bf r4 
      R2. \break
      r4. r4 f'8 gf4 a,8 bf4 c8 ef4 df8 c r f,
      gf4 g8 af4 a8 bf4 c8 df f af bf, ef gf16 ef df8. ef16 c8 df df f df4 r8
      a4. af8 r4 a4. af8 r4 \break
      
      R2.*3
      f8 f f gf4. f8 f f gf4. f8 r4 r4. \break
      bf8. c16 d8 c ef a, bf4 d8 f r f ~ f ef d ~ d c bf ~ 
      bf \tuplet 6/4 {a16 bf c bf a g} f4 r8 \break
      bf8. c16 d8 c ef a, bf8 ~ bf32 c bf a bf c d ef f8 bf fs
      g4 f32 ef d c bf8. c16 a8 bf f d' bf r4
      R2. \break
      r4. r4 f'8 e16 f g f g a bf4 af8 g r f ef r d
      c ef g bf,8. c16 a8 bf f d' bf r8 f
      gf4. f8 r f gf4. f8 r f f r f f f f f r4 r4. \bar "|."
    }
  }
  
}