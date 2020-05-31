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
      \key ef \major
      R2*44 \break
      bf'4. ef8 c4. ef8 d f bf, d ef4 r8 ef d f bf, d ef4 r8 ef d16 ef f d bf c d bf ef4. f16 g \break
      af8 af g g f f ef ef d16 ef f g f ef d c bf4 r
      bf4. ef8 c4. ef8 d f bf, d ef4 r8 ef d f bf, d ef4 r8 ef d16 ef f d bf c d bf ef4. f16 g
      af8 af g g f f ef ef f16 g af f d ef f d ef4 r \bar "||" 
      \break R2*9 \bar "||" \break 
      
      f2 ~ f f4. d16 bf a8 c f, r f'4. d16 bf a8 c f, r 
      R2*2 \break
      g16 bf bf8\mordent ef16 bf bf8\mordent g'4 r f,16 bf bf8\mordent d16 bf bf8\mordent f'4 r
      g,16 bf bf8\mordent ef16 bf bf8\mordent g'4 r f,16 bf bf8\mordent d16 bf bf8\mordent \break 
      f'2 e ef d4 df ~ df c8 bf a4 r 
      R2*3 \break
      c8 ef g4 ~ g f f8 ef ef4 ~ ef d d16 c bf c bf8 d d16 c bf c bf4
      \new CueVoice {d16^"piano" c bf c bf8 d d16 c bf c bf8} f' bf2 af g f8 ef d c
      bf2 c4.\trill bf16 c bf4 r r f8 f16 f bf4 r r f8 f16 f bf4 r
      R2*3 \break bf2 
      bf4. ef8 c4. ef8 d f bf, d ef4 r8 ef d f bf, d ef4 r8 ef d16 ef f d bf c d bf ef4. f16 g \break
      af8 af g g f f ef ef d16 ef f g f ef d c bf4 r
      R2 R2*4 \pageBreak
      ef,4. af8 f4. af8 g bf ef, g af4 r8 af g bf ef, g af4 r8 c bf df g bf af4 r
      R2 df, c4 r df2 c4 r r c8 c16 c f4 r r c8 c16 c f4 r
      r f,8 f16 f bf4 r f8 f16 f af4 r c8 c16 c f4 r \bar "||"
      \break R2*14 \break \bar "||"
      
      bf,2 ~ bf2  
      bf4. ef8 c4. ef8 d f bf, d ef4 r8 ef d f bf, d ef4 r8 ef d16 ef f d bf c d bf \break
      ef4. f16 g af8 af g g f f ef ef f16 g af f d ef f d ef4 r \break
      
      R2*7
      bf'4. g16 ef d8 f bf r \noBreak bf4. g16 ef d8 f bf, r \break
      ef g16 ef bf8 ef16 bf g8 bf16 g ef8 r 
      ef' af16 ef c8 ef16 c af8 c16 af ef8 r
      f' bf16 f d8 f16 d bf8 d16 bf f8 r \break
      ef ef' f, f' g, g' af, af' ef, ef' f, f' g, g' af, af' bf4 r
      R2 c,2 ~ c8 af' g f ef2 f4.\trill ef16 f ef4 r \break
      R2*4 
      r4 bf8 bf16 bf ef4 r r bf8 bf16 bf ef,2 e f4 g af a bf r
      \pageBreak
      
      R2*5
      bf4. ef8 c4. ef8 d f bf, d ef4 r4
      R2*6 \break
      r4 f g2\trill f\trill ef\trill d\trill c\trill bf4 ef ~ ef d ef r \bar "||"
      \break R2*19 \bar "||" \break
      
      ef,8 ef16 ef ef8 ef ef8 ef16 ef ef8 ef bf8 bf16 bf bf8 bf bf4 r\fermata
      \bar "||" s2^\markup {\bold \fontsize #2 Cadenza} \bar "||" \break
      bf'4. ef8 c4. ef8 d f bf, d ef4 r8 ef d f bf, d ef4 r8 ef d f bf, d ef4 r8 bf
      ef4 r8 bf ef ef bf bf ef ef bf bf ef ef bf bf ef ef bf bf
      ef ef16 ef ef8 ef ef ef16 ef ef8 ef ef4 r \bar "|."
    }
  }
}