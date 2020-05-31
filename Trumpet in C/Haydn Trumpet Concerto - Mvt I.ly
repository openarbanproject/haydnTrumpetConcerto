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
      \key ef \major
      R1*7
      ef2 r
      R1*4
      r4 r8 bf' f' bf, f' af g4 r r2 r4 r8 bf, f' bf, f' af g4 r r2
      R1*20 \bar "||" \break 
      
      ef,2 f g4 r8 bf, ef f g af bf2 c8 d ef c bf4 r r2
      r4 r8 bf c d ef c bf4 c16 d ef f g8 ef d c bf2 \afterGrace af\trill {g16 af} g4 r r2 \break
      r4 r8 ef' d ef c af g bf ef r r2 r4 r8 ef d df c cf bf g bf r r2
      r2 bf,8 bf16 bf bf8 bf ef4 r r2 
      R1 \break
      g'2 f ef4 r r2 ef2 d c2. b4 c b c r r2 r4 b c b c bf a r r2 \break
      bf2 c4.\trill bf16 c d2 ef4.\trill d16 ef f1 ~ f8 r r c16 d ef8 d ef f d4 r r2
      r4 r8 c16 d ef8 d ef f d4 g2 f4 e2 f4 r 
      bf,4 ef2 d4 cs d b c a bf ef d c r r2 R1 \break
      f1 ~ f2 e ef d c8. d16 ef8 c bf4 a bf r r2 \break
      r4 bf bf bf bf4. c16 d ef8 f g a bf4 r r2
      f2. ef16 d c bf \afterGrace c1\startTrillSpan {bf16 c} bf4\stopTrillSpan r r2
      \bar "||" \break R1*9 \bar "||" \break
      
      c2 d ef4 r8 g, c d ef f g1 af4 r r2 
      r4 r8 ef d ef f g af4 r r2 
      r4 r8 ef d16 ef f ef d ef f g af4 r r2 \break
      r4 r8 c, df d ef e f4 r8 f16 g af8 af16 g f8 f16 ef
      d4 r8 d16 ef f8 f16 ef d8 d16 c bf8 c d ef f g af bf 
      g4 r8 g16 af bf8 g f ef d4 r8 f16 g af8 f ef d
      ef16 f ef d ef f g af bf4 af16 g f ef
      d ef f ef d ef f g af4 g16 f ef d 
      ef4 r8 ef16 f g8 af bf c df4 r4 df,2 c e f ef d4 r r2
      bf,1 cf bf4 r r2 \pageBreak
      \bar "||" R1*7 \bar "||" \break
      
      ef2 f g4 r8 bf, ef f g af bf2 c8 d ef c bf4 r r2
      r4 r8 bf c d ef c bf4 c16 d ef f g4 f16 ef d c bf2 \afterGrace af\trill {g16 af} g4 r r2 \break
      r4 r8 ef' d ef c af g bf ef r r2 r4 r8 ef d ef f g af2 g f4 r r2 \break
      ef,2 g' bf,, af'' g4 r r2 r2 bf,,8 bf16 bf bf8 bf ef4 r r2 R1 \break
      ef4 g' ef, g' bf,, \tuplet 3/2 {af''8 g f} \tuplet 3/2 {bf, c bf} \tuplet 3/2 {af g f} ef4 r r2
      ef'2 f \tuplet 3/2 {g8 bf g} \tuplet 3/2 {ef g ef} \tuplet 3/2 {bf ef bf} \tuplet 3/2 {g bf g} ef4 r r2 \break
      R1*2
      ef'16 f ef d ef f g af bf g f ef bf' g f ef d ef f ef d ef f g af f ef d af' f ef d
      ef4 r r2
      R1*2 \break
      ef2 d df c cf bf c4. f8 ef4 d ef r r2 r8 ef d ef c ef af, ef' g,4 r r2 \break
      R1*4 \bar "||" s2_\markup {\bold \fontsize #2 Cadenza} \new CueVoice {f'2\startTrillSpan} \bar "||" 
      \new CueVoice {ef4 r r2}
      R1*4 \bar "|."
    }
  }
  
}