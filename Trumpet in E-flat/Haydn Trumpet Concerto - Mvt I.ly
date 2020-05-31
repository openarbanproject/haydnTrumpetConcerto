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
      \key c \major
      R1*7
      c2 r
      R1*4
      r4 r8 g' d' g, d' f e4 r r2 r4 r8 g, d' g, d' f e4 r r2
      R1*20 \bar "||" \break 
      
      c,2 d e4 r8 g, c d e f g2 a8 b c a g4 r r2
      r4 r8 g a b c a g4 a16 b c d e8 c b a g2 \afterGrace f\trill {e16 f} e4 r r2 \break
      r4 r8 c' b c a f e g c r r2 r4 r8 c b bf a af g e g r r2
      r2 g,8 g16 g g8 g c4 r r2 
      R1 \break
      e'2 d c4 r r2 c2 b a2. gs4 a gs a r r2 r4 gs a gs a g fs r r2 \break
      g2 a4.\trill g16 a b2 c4.\trill b16 c d1 ~ d8 r r a16 b c8 b c d b4 r r2
      r4 r8 a16 b c8 b c d b4 e2 d4 cs2 d4 r 
      g,4 c2 b4 as b gs a fs g c b a r r2 R1 \break
      d1 ~ d2 cs c b a8. b16 c8 a g4 fs g r r2 \break
      r4 g g g g4. a16 b c8 d e fs g4 r r2
      d2. c16 b a g \afterGrace a1\startTrillSpan {g16 a} g4\stopTrillSpan r r2
      \bar "||" \break R1*9 \bar "||" \break
      
      a2 b c4 r8 e, a b c d \noBreak e1 \noBreak f4 r r2
      r4 r8 c b c d e f4 r r2 
      r4 r8 c b16 c d c b c d e f4 r r2 \break
      r4 r8 a, bf b c cs d4 r8 d16 e f8 f16 e d8 d16 c
      b4 r8 b16 c d8 d16 c b8 b16 a g8 a b c d e f g 
      e4 r8 e16 f g8 e d c b4 r8 d16 e f8 d c b
      c16 d c b c d e f g4 f16 e d c
      b c d c b c d e f4 e16 d c b 
      c4 r8 c16 d e8 f g a bf4 r4 bf,2 a cs d c b4 r r2
      g,1 af g4 r r2 \pageBreak
      \bar "||" R1*7 \bar "||" \break
      
      c2 d e4 r8 g, c d e f g2 a8 b c a g4 r r2
      r4 r8 g a b c a g4 a16 b c d e4 d16 c b a g2 \afterGrace f\trill {e16 f} e4 r r2 \break
      r4 r8 c' b c a f e g c r r2 r4 r8 c b c d e f2 e d4 r r2 \break
      c,2 e' g,, f'' e4 r r2 r2 g,,8 g16 g g8 g c4 r r2 R1 \break
      c4 e' c, e' g,, \tuplet 3/2 {f''8 e d} \tuplet 3/2 {g, a g} \tuplet 3/2 {f e d} c4 r r2
      c'2 d \tuplet 3/2 {e8 g e} \tuplet 3/2 {c e c} \tuplet 3/2 {g c g} \tuplet 3/2 {e g e} c4 r r2 \break
      R1*2
      c'16 d c b c d e f g e d c g' e d c b c d c b c d e f d c b f' d c b
      c4 r r2
      R1*2 \break
      c2 b bf a af g a4. d8 c4 b c r r2 r8 c b c a c f, c' e,4 r r2 \break
      R1*4 \bar "||" s2_\markup {\bold \fontsize #2 Cadenza} \new CueVoice {d'2\startTrillSpan} \bar "||" 
      \new CueVoice {c4 r r2}
      R1*4 \bar "|."
    }
  }
  
}