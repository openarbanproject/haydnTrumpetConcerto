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
            dedication = "openArbanProject"
            title = "Trumpet Concerto in E-flat"
            subtitle = "I. Allegro"
  }
  
  \score {
    \header {
      composer = "Joseph Haydn (1725 - 1809)"
    }
    \relative c'
    {
      \numericTimeSignature \time 4/4
      \compressFullBarRests \override MultiMeasureRest.expand-limit = #2
      \key f \major
      R1*7
      f2 r
      R1*4
      r4 r8 c' g' c, g' bf a4 r r2 r4 r8 c, g' c, g' bf a4 r r2
      R1*20 \bar "||" \break 
      
      f,2 g a4 r8 c, f g a bf c2 d8 e f d c4 r r2
      r4 r8 c d e f d c4 d16 e f g a8 f e d c2 \afterGrace bf\trill {a16 bf} a4 r r2 \break
      r4 r8 f' e f d bf a c f r r2 r4 r8 f e ef d df c a c r r2
      r2 c,8 c16 c c8 c f4 r r2 
      R1 \break
      a'2 g f4 r r2 f2 e d2. cs4 d cs d r r2 r4 cs d cs d c b r r2 \break
      c2 d4.\trill c16 d e2 f4.\trill e16 f g1 ~ g8 r r d16 e f8 e f g e4 r r2
      r4 r8 d16 e f8 e f g e4 a2 g4 fs2 g4 r 
      c,4 f2 e4 ds e cs d b c f e d r r2 R1 \break
      g1 ~ g2 fs f e d8. e16 f8 d c4 b c r r2 \break
      r4 c c c c4. d16 e f8 g a b c4 r r2
      g2. f16 e d c \afterGrace d1\startTrillSpan {c16 d} c4\stopTrillSpan r r2
      \bar "||" \break R1*9 \bar "||" \break
      
      d2 e f4 r8 a, d e f g a1 bf4 r r2 
      r4 r8 f e f g a bf4 r r2 
      r4 r8 f e16 f g f e f g a bf4 r r2 \break
      r4 r8 d, ef e f fs g4 r8 g16 a bf8 bf16 a g8 g16 f
      e4 r8 e16 f g8 g16 f e8 e16 d c8 d e f g a bf c 
      a4 r8 a16 bf c8 a g f e4 r8 g16 a bf8 g f e
      f16 g f e f g a bf c4 bf16 a g f
      e f g f e f g a bf4 a16 g f e 
      f4 r8 f16 g a8 bf c d ef4 r4 ef,2 d fs g f e4 r r2
      c,1 df c4 r r2 \pageBreak
      \bar "||" R1*7 \bar "||" \break
      
      f2 g a4 r8 c, f g a bf c2 d8 e f d c4 r r2
      r4 r8 c d e f d c4 d16 e f g a4 g16 f e d c2 \afterGrace bf\trill {a16 bf} a4 r r2 \break
      r4 r8 f' e f d bf a c f r r2 r4 r8 f e f g a bf2 a g4 r r2 \break
      f,2 a' c,, bf'' a4 r r2 r2 c,,8 c16 c c8 c f4 r r2 R1 \break
      f4 a' f, a' c,, \tuplet 3/2 {bf''8 a g} \tuplet 3/2 {c, d c} \tuplet 3/2 {bf a g} f4 r r2
      f'2 g \tuplet 3/2 {a8 c a} \tuplet 3/2 {f a f} \tuplet 3/2 {c f c} \tuplet 3/2 {a c a} f4 r r2 \break
      R1*2
      f'16 g f e f g a bf c a g f c' a g f e f g f e f g a bf g f e bf' g f e
      f4 r r2
      R1*2 \break
      f2 e ef d df c d4. g8 f4 e f r r2 r8 f e f d f bf, f' a,4 r r2 \break
      R1*4 \bar "||" s2_\markup {\bold \fontsize #2 Cadenza} \new CueVoice {g'2\startTrillSpan} \bar "||" 
      \new CueVoice {f4 r r2}
      R1*4 \bar "|."
    }
  }
  
}