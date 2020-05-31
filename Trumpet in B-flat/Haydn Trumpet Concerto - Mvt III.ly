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
            subtitle = "III. Allegro"
  }
  
  \score {
    \relative c'
    {
      \numericTimeSignature \time 2/4
      \compressFullBarRests \override MultiMeasureRest.expand-limit = #2
      \key f \major
      R2*44 \break
      c'4. f8 d4. f8 e g c, e f4 r8 f e g c, e f4 r8 f e16 f g e c d e c f4. g16 a \break
      bf8 bf a a g g f f e16 f g a g f e d c4 r
      c4. f8 d4. f8 e g c, e f4 r8 f e g c, e f4 r8 f e16 f g e c d e c f4. g16 a
      bf8 bf a a g g f f g16 a bf g e f g e f4 r \bar "||" 
      \break R2*9 \bar "||" \break 
      
      g2 ~ g g4. e16 c b8 d g, r g'4. e16 c b8 d g, r 
      R2*2 \break
      a16 c c8\mordent f16 c c8\mordent a'4 r g,16 c c8\mordent e16 c c8\mordent g'4 r
      a,16 c c8\mordent f16 c c8\mordent a'4 r g,16 c c8\mordent e16 c c8\mordent \break 
      g'2 fs f e4 ef ~ ef d8 c b4 r 
      R2*3 \break
      d8 f a4 ~ a g g8 f f4 ~ f e e16 d c d c8 e e16 d c d c4
      \new CueVoice {e16^"piano" d c d c8 e e16 d c d c8} g' c2 bf a g8 f e d
      c2 d4.\trill c16 d c4 r r g8 g16 g c4 r r g8 g16 g c4 r
      R2*3 \break c2 
      c4. f8 d4. f8 e g c, e f4 r8 f e g c, e f4 r8 f e16 f g e c d e c f4. g16 a \break
      bf8 bf a a g g f f e16 f g a g f e d c4 r
      R2 R2*4 \pageBreak
      f,4. bf8 g4. bf8 a c f, a bf4 r8 bf a c f, a bf4 r8 d c ef a c bf4 r
      R2 ef, d4 r ef2 d4 r r d8 d16 d g4 r r d8 d16 d g4 r
      r g,8 g16 g c4 r f,8 f16 f bf4 r d8 d16 d g4 r \bar "||"
      \break R2*14 \break \bar "||"
      
      c,2 ~ c2  
      c4. f8 d4. f8 e g c, e f4 r8 f e g c, e f4 r8 f e16 f g e c d e c \break
      f4. g16 a bf8 bf a a g g f f g16 a bf g e f g e f4 r \break
      
      R2*7
      c'4. a16 f e8 g c r \noBreak c4. a16 f e8 g c, r \break
      f a16 f c8 f16 c a8 c16 a f8 r 
      f' bf16 f d8 f16 d bf8 d16 bf f8 r
      g' c16 g e8 g16 e c8 e16 c g8 r \break
      f f' g, g' a, a' bf, bf' f, f' g, g' a, a' bf, bf' c4 r
      R2 d,2 ~ d8 bf' a g f2 g4.\trill f16 g f4 r \break
      R2*4 
      r4 c8 c16 c f4 r r c8 c16 c f,2 fs g4 a bf b c r
      \pageBreak
      
      R2*5
      c4. f8 d4. f8 e g c, e f4 r4
      R2*6 \break
      r4 g a2\trill g\trill f\trill e\trill d\trill c4 f ~ f e f r \bar "||"
      \break R2*19 \bar "||" \break
      
      f,8 f16 f f8 f f8 f16 f f8 f c8 c16 c c8 c c4 r\fermata
      \bar "||" s2^\markup {\bold \fontsize #2 Cadenza} \bar "||" \break
      c'4. f8 d4. f8 e g c, e f4 r8 f e g c, e f4 r8 f e g c, e f4 r8 c
      f4 r8 c f f c c f f c c f f c c f f c c
      f f16 f f8 f f f16 f f8 f f4 r \bar "|."
     
    }
  }
}