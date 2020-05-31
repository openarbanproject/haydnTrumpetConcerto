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
      \key af \major
      R2.*8
      af'8. bf16 c8 bf df g, af4 c8 ef r ef ~ ef df c ~ c bf af ~ af g16 bf af f ef4 r8 \break
      af8. bf16 c8 bf df g, af8 ~ af32 bf af g af bf c df ef4 e8 
      f4 ef32 df c bf af8. bf16 g8 af ef c' af r4 
      R2. \break
      r4. r4 ef'8 ff4 g,8 af4 bf8 df4 cf8 bf r ef,
      ff4 f8 gf4 g8 af4 bf8 cf ef gf af, df ff16 df cf8. df16 bf8 cf cf ef cf4 r8
      g4. gf8 r4 g4. gf8 r4 \break
      
      R2.*3
      ef8 ef ef ff4. ef8 ef ef ff4. ef8 r4 r4. \break
      af8. bf16 c8 bf df g, af4 c8 ef r ef ~ ef df c ~ c bf af ~ 
      af \tuplet 6/4 {g16 af bf af g f} ef4 r8 \break
      af8. bf16 c8 bf df g, af8 ~ af32 bf af g af bf c df ef8 af e
      f4 ef32 df c bf af8. bf16 g8 af ef c' af r4
      R2. \break
      r4. r4 ef'8 d16 ef f ef f g af4 gf8 f r ef df r c
      bf df f af,8. bf16 g8 af ef c' af r8 ef
      ff4. ef8 r ef ff4. ef8 r ef ef r ef ef ef ef ef r4 r4. \bar "|."
    }
  }
  
}