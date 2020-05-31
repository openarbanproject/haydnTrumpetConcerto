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
      \key c \major
      R2*44 \break
      g'4. c8 a4. c8 b d g, b c4 r8 c b d g, b c4 r8 c b16 c d b g a b g c4. d16 e \break
      f8 f e e d d c c b16 c d e d c b a g4 r
      g4. c8 a4. c8 b d g, b c4 r8 c b d g, b c4 r8 c b16 c d b g a b g c4. d16 e
      f8 f e e d d c c d16 e f d b c d b c4 r \bar "||" 
      \break R2*9 \bar "||" \break 
      
      d2 ~ d d4. b16 g fs8 a d, r d'4. b16 g fs8 a d, r 
      R2*2 \break
      e16 g g8\mordent c16 g g8\mordent e'4 r d,16 g g8\mordent b16 g g8\mordent d'4 r
      e,16 g g8\mordent c16 g g8\mordent e'4 r d,16 g g8\mordent b16 g g8\mordent \break 
      d'2 cs c b4 bf ~ bf a8 g fs4 r 
      R2*3 \break
      a8 c e4 ~ e d d8 c c4 ~ c b b16 a g a g8 b b16 a g a g4
      \new CueVoice {b16^"piano" a g a g8 b b16 a g a g8} d' g2 f e d8 c b a
      g2 a4.\trill g16 a g4 r r d8 d16 d g4 r r d8 d16 d g4 r
      R2*3 \break g2 
      g4. c8 a4. c8 b d g, b c4 r8 c b d g, b c4 r8 c b16 c d b g a b g c4. d16 e \break
      f8 f e e d d c c b16 c d e d c b a g4 r
      R2 R2*4 \pageBreak
      c,4. f8 d4. f8 e g c, e f4 r8 f e g c, e f4 r8 a g bf e, g f4 r
      R2 bf a4 r bf2 a4 r r a8 a16 a d4 r r a8 a16 a d4 r
      r d,8 d16 d g4 r c,8 c16 c f4 r a8 a16 a d4 r \bar "||"
      \break R2*14 \break \bar "||"
      
      g,2 ~ g2  
      g4. c8 a4. c8 b d g, b c4 r8 c b d g, b c4 r8 c b16 c d b g a b g \break
      c4. d16 e f8 f e e d d c c d16 e f d b c d b c4 r \break
      
      R2*7
      g'4. e16 c b8 d g r \noBreak g4. e16 c b8 d g, r \break
      c e16 c g8 c16 g e8 g16 e c8 r 
      c' f16 c a8 c16 a f8 a16 f c8 r
      d' g16 d b8 d16 b g8 b16 g d8 r \break
      c c' d, d' e, e' f, f' c, c' d, d' e, e' f, f' g4 r
      R2 a,2 ~ a8 f' e d c2 d4.\trill c16 d c4 r \break
      R2*4 
      r4 g8 g16 g c4 r r g8 g16 g c,2 cs d4 e f fs g r
      \pageBreak
      
      R2*5
      g4. c8 a4. c8 b d g, b c4 r4
      R2*6 \break
      r4 d e2\trill d\trill c\trill b\trill a\trill g4 c ~ c b c r \bar "||"
      \break R2*19 \bar "||" \break
      
      c,8 c16 c c8 c c8 c16 c c8 c g8 g16 g g8 g g4 r\fermata
      \bar "||" s2^\markup {\bold \fontsize #2 Cadenza} \bar "||" \break
      g'4. c8 a4. c8 b d g, b c4 r8 c b d g, b c4 r8 c b d g, b c4 r8 g
      c4 r8 g c c g g c c g g c c g g c c g g
      c c16 c c8 c c c16 c c8 c c4 r \bar "|."
    }
  }
}