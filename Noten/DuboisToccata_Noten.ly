\version "2.18.2"

\include "dynamicparams.ly"
\include "formatangaben.ly"
\include "mergerests.ly"
\include "optionaltranspose.ly"
\include "Bezeichnungen.ly"
\include "generaldefinitions.ly"
\include "mydrums2.ly"
\include "drumdefinitions.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))

GOMarkup = \markup { \upright \bold G.O. }
RECMarkup = \markup { \upright \bold RÉC. }
POSMarkup = \markup { \upright \bold POS. }

globalDuboisToccata = {
  \key g\major
  \time 2/4
  \accidentalStyle modern-voice
}

mBreak = {
  %\break
}

registrierungszeileDuboisToccata = {
  \globalDuboisToccata
  s8
  \repeat volta 2 {
    s2\segno
    s2*3 |
    s2*5 |
    s2*5 |
    s2*5 |
    s2 |
    s2 |
    s2 |
    s2 |
  }
  \alternative {
    { s2 |  }
    { s2 }
  }
  s2*5 |
  s2*5 |
  s2*4 |
  s2*5 |
  s2*5 |
  s2*5 |
  s2*5 |
  s2*5 |
  s2*4 |
  s2*4 |
  s2*4 |
  s2*5 |
  s2*4 |
  s2*5 |
  s2*4 |
  s2^\markup{
    \italic {2 fs à CODA}
    \musicglyph #"scripts.coda"
  }
  s2 |
  s2^\markup {
    \column {
      \line { Fermez Récit, }
      \line { ôtez anches }
      \line { et 4' du Pos. }
    }
  }
%%%%%%%%%% Mittelteil
  \barNumberCheck 98
  s2^\markup{ Ôtez anches Péd. }
  s2*7 |
  \barNumberCheck 106
  s2*8 |
  \barNumberCheck 114
  s2*7 |
  \barNumberCheck 121
  s2*7 |
  s2-\markup { poco rit. }
  s2 |
  \barNumberCheck 130
  s2 |
  s2 |
  s2 |
  s2 |
  s2 |
  s2 |
  s2 |
  s2 |
  \bar "||"
  \key d\major |
  s2*4 | \mBreak
  s2*7 | \mBreak
  s2 |
  \bar "||"
  \key c\major
  s2*4 | \mBreak
  s2*5 | \mBreak
  s2*5 | \mBreak
  s2*4 |
  \bar "||"
  \key d\major
  s2 | \mBreak
  s2*7 | \mBreak
  s2*8 | \mBreak
  s2*6 |
  s4 s-\markup { \upright Ouvrez peu à peu le Récit } |
  s2 |
  s4 s-\markup { Allarg. } |
  s4 s-\markup {
    \center-column {
      \line { Anches Pos. }
      \line { D.S. \musicglyph #"scripts.segno" }
    }
  }
  \bar "||"
  \key g\major
  s2-\markup { \musicglyph #"scripts.coda" \bold \upright CODA }
  s2 |
  s2*4 |
  s2 |
  s2 |
  s2-\markup { Ajoutez les 16' } |
  s4 s-\markup { et peu à peu } |
  s2 |
  s2-\markup{ toute la force } |
  s2 |
  s2 |
  s2 |
  s2 |
  s2-\markup{ Allarg. }
}

werkzeileDuboisToccata = {
  \globalDuboisToccata
  s8 |
  \repeat volta 2 {
    s2
    s2*3 |
    s2*5 |
    s2*5 |
    s2*5 |
    s2 |
    s2 |
    s2 |
    s2 |
  }
  \alternative {
    { s2 |  }
    { s2 }
  }
  s2*5 |
  s2*5 |
  s2*4 |
  s2*5 |
  s2*5 |
  s2*5 |
  s2*5 |
  s2*5 |
  s2*4 |
  s2*4 |
  s2*4 |
  s2*5 |
  s2*4 |
  s2*5 |
  s2*4 |
  s2
  s2 |
  s2 |

%%%%%%%%%% Mittelteil
  s4-\tweak X-offset #-3 -\RECMarkup s4-\tweak Y-offset #-2 \p
  s2*7 |
  s2*8 |
  s2*7 |
  s2*9 |
  \barNumberCheck 130
  s4-\markup { \POSMarkup \dynamic p } s |
  s2 |
  s2-\RECMarkup |
  s2 |
  s2-\POSMarkup |
  s2 |
  \barNumberCheck 136
  s2-\RECMarkup |
  s2 |
  \barNumberCheck 138
  \bar "||"
  \key d\major |
  s2*4 |
  \barNumberCheck 142
  s8 s4.-\POSMarkup |
  s2 |
  s8 s8-\tweak X-offset #-3 -\RECMarkup s4-\tweak Y-offset #-2 \<
  s2-\tweak Y-offset #-2 \> |
  s |
  s\! |
  s8 s4.-\POSMarkup
  \barNumberCheck 149
  s2 |
  \bar "||"
  \key c\major
  s2*4 |
  \barNumberCheck 154
  s2*5 |
  \barNumberCheck 159
  s2*5 |
  \barNumberCheck 164
  s2 |
  s2\< |
  s2 |
  s2 |
  \bar "||"
  \key d\major
  s2\f |
  \barNumberCheck 169
  s2\> |
  s |
  s4 s\! |
  s4-\tweak Y-offset #-1 -\RECMarkup s4\p |
  s2*2 |
  s2-\tweak Y-offset #0.2 -\markup { \italic court }
  \barNumberCheck 176
  s2-\POSMarkup
  s2*3 |
  s2-\RECMarkup
  s2*2 |
  s2-\tweak Y-offset #0.3 -\markup { \italic court }
  \barNumberCheck 184
  s2-\POSMarkup
  s2|
  s4 s4-\RECMarkup |
  s2 |
  s2 |
  s2 |
  \barNumberCheck 190
  s2*4 |
  \bar "||"
  \key g\major
  s2*2 |
  s2*4 |
  s2 |
  s2 |
  s2 |
  s4 s |
  s2 |
  \barNumberCheck 205
  s2 |
  s2 |
  s2 |
  s2 |
  s2 |
  s2
}

ausdruckszeileDuboisToccata = {
  \globalDuboisToccata
  s8\f |
  \repeat volta 2 {
    s2-\markup { non legato }
    s2-\markup { simile }
    s2 |
    s2 |
    s2*5 |
    s2*5 |
    s2*5 |
    s2 |
    s2 |
    s2 |
    s2 |
  }
  \alternative {
    { s2 |  }
    { s2 }
  }
  s2*5 |
  s2*5 |
  s2*4 |
  s2*5 |
  s2*5 |
  s2*5 |
  s2*5 |
  s2*5 |
  s2*4 |
  s2*4 |
  s2*4 |
  s2*5 |
  s2*4 |
  s2*5 |
  s2*4 |
  s2
  s2 |
  s2 |

%%%%%%%%%% Mittelteil
  \barNumberCheck 98
  s4 s |
  s2 |
  s |
  s\< |
  s\> |
  s\!
  s2*2 |
  \barNumberCheck 106
  s2*8 |
  \barNumberCheck 114
  s2\< |
  s |
  s\> |
  s4 s\! |
  s2\< |
  s |
  s\> |
  \barNumberCheck 121
  s2 |
  s\! |
  s2 |
  s2\< |
  s |
  s\> |
  s |
  s2\! |
  s2 |
  s2 |
  s2 |
  s2 |
  s2 |
  s2 |
  s |
  \barNumberCheck 136
  s2 |
  s2 |
  \bar "||"
  \barNumberCheck 138
  \key d\major |
  s2*4 |
  \barNumberCheck 142
  s2*7 |
  \barNumberCheck 149
  s2 |
  \bar "||"
  \key c\major
  s2*4 |
  \barNumberCheck 154
  s2*5 |
  \barNumberCheck 159
  s2*5 |
  \barNumberCheck 164
  s2*4 |
  \bar "||"
  \key d\major
  s2 |
  \barNumberCheck 169
  s2*7 |
  s2*8 |
  s2*6 |
  s8 s4.-\POSMarkup |
  s2-\markup { cresc. }
  s2-\markup { poco a poco }
  s4 s8\f s8-\GOMarkup
  \bar "||"
  \key g\major
  s2-\POSMarkup |
  s |
  s2*4 |
  s2 |
  s2 |
  s2 |
  s4 s |
  s2 |
  s2 |
  s2 |
  s2 |
  s2 |
  s2 |
  s2
}


ablaufzeileDuboisToccata = {
  \globalDuboisToccata
  s8 |
  \repeat volta 2 {
    s2
    s2*3 | \mBreak
    s2*5 | \mBreak
    s2*5 | \mBreak
    s2*5 | \mBreak
    s2 |
    s2 |
    s2 |
    s2 |
  }
  \alternative {
    { s2 | \mBreak }
    { s2 }
  }
  s2*5 | \mBreak
  s2*5 | \mBreak
  s2*4 | \mBreak
  s2*5 | \mBreak
  s2*5 | \mBreak
  s2*5 | \mBreak
  s2*5 | \mBreak
  s2*5 | \mBreak
  s2*4 | \mBreak
  s2*4 | \mBreak
  s2*4 | \mBreak
  s2*5 | \mBreak
  s2*4 |
  s2*5 | \mBreak
  s2*7 |
  \bar "||"
  \key b\major
  s2*8 | \mBreak
  s2*8 | \mBreak
  s2*7 | \mBreak
  s2*9 | \mBreak
  s2 |
  s2 |
  s2 |
  s2 |
  s2 |
  s2 | \mBreak
  s2 |
  s2 |
  \bar "||"
  \key d\major |
  s2*4 | \mBreak
  s2*7 | \mBreak
  s2 |
  \bar "||"
  \key c\major
  s2*4 | \mBreak
  s2*5 | \mBreak
  s2*5 | \mBreak
  s2*4 |
  \bar "||"
  \key d\major
  s2 | \mBreak
  s2*7 | \mBreak
  s2*8 | \mBreak
  s2*6 | \mBreak
  s2*4 |
  \bar "||"
  \key g\major
  s2*2 | \mBreak
  s2*9 | \mBreak
  s2*11 | \bar "|."
}



stimmeIMittelteilDuboisToccata = \relative dis'' {
  \voiceOne dis4 ( e4 | %\barNumberCheck #110
  fis4 b,4 |
  cis4 ) dis8 e8 |
  dis4 fis4 |
  b4 fis4 |
  dis4 ais'4 |
  gis4.. fis16 |
  fis2 \mBreak |
  dis4\( e4 |
  fis4 b,4 |
  cis4 dis8 e8 |
  dis4 b4 |
  gis4 b4 |
  dis,4 fis8 e8 |
  cis4.. b16 |
  b2\) \mBreak |
  cis'4 ( dis4 |
  e4 gis4 |
  fis4. e8 |
  e4 dis4 ) |
  fis4 ( gis4 |
  a4 cis4 |
  b4. a8 ) \mBreak |
  a4 ( gis4 ) |
  b4 ( fis4 |
  fis4 e4 ) |
  b'4 ( e,4 |
  e4 dis4 ) |
  gis4 ( b,4 |
  ais4 b4 |
  dis4. cis8 |
  \oneVoice fis2 ) \mBreak |
}

rHMittelteilDuboisToccata = \relative a'' {
  b16^\atempoMarkup b,16 fis'16 b,16 g'16
  b,16 e16 b16 |
  b'16 b,16 fis'16 b,16 g'16 b,16 e16 b16 |
  b'8 r8 r4 |
  R2 |
  b16 b,16 fis'16 b,16 g'16 b,16 e16 b16 |
  b'16 b,16 fis'16 b,16 g'16 b,16 e16 b16  |
  b'8 r8 r4 |
  R2

  d16 d,16 a'16 d,16 b'16 d,16 g16 d16 |
  a' d, fis \voiceTwo d~
  <<
    {
      d8 cis |
      \voiceOne fis8 r8 d4 ( |
      e4 fis8 g8 ) \mBreak |
      fis8
    }
    \new Voice \relative g'' {
      \voiceOne
      g16 fis e g |
      \voiceTwo a,8 s8 a4 |
      b4 a4 ~  |
      a8
    }
  >>
  \relative a' {
    a16[ d,16] b'16 d,16 g16 d16 |
    a'16 d,16 fis16 \tieDown d16~
    <<
      {
        \voiceTwo
        d8 cis8 |
        a8 s8 e'4 |
        fis4 e4 |
        d2 ~ |
        d2 |
        cis8
      }
      \new Voice \relative g' {
        \voiceOne
        g16 fis16 e16 g16 |
        fis8 r8 a4 |
        d4 a4 |
        fis4 cis'4 |
        b4.. a16 |
        a8
      }
    >>
    \oneVoice e'16[ a,16] f'16 a,16 d16 a16 \mBreak |
    a'16 a,16 e'16 a,16 f'16 a,16 d16 a16 \bar "||"
    c'16 c,16 g'16 c,16 a'16 c,16 f16 c16  |
    g'16 c,16 e16 \voiceTwo c16~
    <<
      {
        c8 b8
      }
      \new Voice \relative f'' {
        \voiceOne
        f16 e16
        d16 f16
      }
    >>
    \oneVoice
    <e c>8-. <d bes>-. <c a>-. <d bes>-. |
    <e c>-. <d bes>-. <c a>-. <d bes>-. |
    \mBreak |
    <e c>8-. r <g d bes>4~ |
    q <c bes g c,>~
    <<
      {
        \voiceOne
        c2~ |
        c~ |
        c8
      }
      \new Voice \relative a'' {
        \voiceTwo
        <a f>8_. <e g>8_. <d f>8_. <g e>8_. |
        <a f>8_. <e g>8_. <d f>8_. <g e>8_. |
        <a f>8
      }
    >>
    \oneVoice r8 <c es, g>4~  |
    \mBreak

    <c g e>4 <f ees c f,>~ |
    <f d bes f>8

    r16 d,16^. bes16^. c16^. d16^. es16^. |
    f8. ( d16 ) bes16^. c16^. d16^. es16^. |
    f16^\markup { \italic { simile } } d16 bes16 d16 f16 d16
    bes16 f'16 |
    e16 d16 b16 d16 e16 d16 b16 d16 \mBreak |
    e8. c16 a16 b16 c16 d16 |
    e8. ( c16 ) a16 b16 c16 a16 |
    b'8. ( g16 ) e16 fis16 g16 a16 |
    b8. ( g16 ) e16 fis16 g16 \! e16
    %\bar "||"
    e'8. ( d16 ) cis16 b16 ais16 b16 \mBreak |
    cis16 ais16 g16 fis16 g16 fis16 e16 d16 |
    cis16 b16 ais16 g16 fis16 e16 cis16 b16
    R2 |
    \voiceOne
    <<
      {
        dis'4 ( e4 |
        fis4 b,4 |
        cis4 ) dis8 e8 |
        dis2^\fermata \mBreak |
      }
      \new Voice \relative b' {
        \voiceTwo b2 ~ |
        b4 b4 |
        b4 ais4  |
        b2 \mBreak |
      }
    >>
    \clef "bass"
    \oneVoice
    <b, dis>8-._\atempoMarkup <ais cis>8-. <gis b>8-. <cis ais>-. |
    <dis b>8 <ais cis>8-. <gis b>8-. <ais cis>-. |
    <b dis>8 r8 r4 |
    R2 |
    \clef "treble"
    <<
      {
        \voiceOne
        d'4(_\markup{ \italic {poco più lento} } e4 |
        fis4 b,4 |
        cis4 ) d8 e8 |
        d2\fermata  |
      }
      \new Voice \relative b' {
        \voiceTwo
        b2 ~ |
        b4 b4 |
        b4 ais4 |
        b2  |
      }
    >>
    \clef "bass"
    \mBreak
    \oneVoice
    <b, d>8-._\atempoMarkup <ais cis>8^. <gis b>8^. <cis ais>8 |
    <d b>8 <ais cis>^. <gis b>8^. <ais cis>8^. |
    <d b>8 r8 \clef "treble" <cis' ais>4( |
    <b fis'>4 ) <cis e>4( |
    <d b>8)-. <ais cis>8^. <gis b>8^. <ais cis>8^. |
    <d b>8-. <ais cis>8^. <gis b>^. <ais cis>8^. \mBreak |
    \clef "treble" <b d>8 r8 <cis ais>4( |
    <fis b,>8) r8 <cis ais>4( <fis b,>8)
    <cis ais>8([ <fis b,>8]) <cis ais>8( <fis b,>8)
    <ais, cis>8( \autoBeamOff <fis' b,>8 )
    d8 \laissezVibrer

    \autoBeamOn
    <g b>8-. <fis a>8-. <e g>8-. <a fis>8-. |
    <b g>8-. <fis a>8^. <e g>8^. <fis a>8^. \mBreak |

    <g b>8 r8 <g e' c e,>4\f |
    <<
      {
        \voiceOne <a d, d'>2 |
        \oneVoice <g b>8^. <a fis>8-. <g e>8-. <a fis>8-. | %\barNumberCheck #210
        <g b>8^. <a fis>8-. <g e>8-. <a fis>8-.
        <b g>8 r8 <g e' c e,>4\f |
        \voiceOne <a d, d'>2 |
        b4\ff c4 |
        d2 |
        b4 c4 \mBreak |
        d4 g,4 |
        a2 |
        a4 b8 c8 |
        \oneVoice
        <g d  a'>2 ~ | %\barNumberCheck #220
        <a fis d>4.. g16 |
        <d b g'>2 ~  |
        <f d g> ~ |
        <g es c>2 |
        <d b f'>4 <es c a> |
        <b' g d b >2 ~ |
        q^\fermata \bar "|."
      }
      \new Voice \relative g'' {
        \voiceTwo g4( fis4 )
        s2*3 |
        g4 ( fis4 ) |
        <d g>2 ~ |
        g2 |
        <g e>2 \mBreak |
        <a d,>4 d, |
        <e g>2 ~ |
        <g e>2
      }
    >>
  }
}

stimmeIIMittelteilDuboisToccata = \relative b' {
  \voiceTwo
  b2 ~ | %\barNumberCheck #110
  b4 b4 |
  b4 ais4  |
  b4 cis4 |
  dis4 cis4 |
  b2 ~ |
  b2 |
  ais4 b8 cis8 \mBreak |
  b2 ~ |
  b4 gis4 ~ |
  gis4 fisis4 |
  gis4 dis4 ~ |
  dis4 cisis4 |
  b2 |
  b4^. ais8. b16 |
  fis2 \mBreak |
  ais'4 b4 |
  cis4 d4 |
  cis4 b8 cis8 |
  cis4 b4 |
  dis4 e4 | %\barNumberCheck #130
  fis4 g4 |
  fis4 e8 fis8 \mBreak |
  fis4 e4 |
  b2 ~ |
  b2 |
  b2 |
  a2 |
  gis2 |
  fis2 |
  e2 |
}

stimmeITeilIADuboisToccata =  \relative d'' {
  \partial 8
  \oneVoice
  \key g \major \time 2/4 d8 (
  \repeat volta 2 {
    g16 )^. g,16 d'16 g,16 e'16 g,16 c16 g16 |
    d'16 g,16 b16 g16~
    <<
      {
        \voiceTwo g8 fis8  |
        \voiceOne b16 a16 g16 b16 a16 g16 fis16 a16 |
      }
      \new Voice \relative c'' {
        \voiceOne c16 b16 a16 c16 |
        \voiceTwo d,4 e8
      }
    >>
    \oneVoice g16 d16 cis16 e16 d16 fis16 e16 g16 \mBreak |
    fis16 d16 cis16 e16 d16 fis16 e16 g16 |
    fis16 a16 d,16 fis16 e16 g16 cis,16 e16 |
    d16 fis16 a16 d16 fis16 e16 d16 d16( |
    g16) g,16 d'16 g,16 e'16 g,16 c16 g16 |
    d'16 g,16 b16 g16~
    <<
      {
        \voiceTwo g8 fis8 \mBreak |
        \voiceOne b16 a16 g16 b16 a16 g16 fis16 a16 |
      }
      \new Voice \relative c'' {
        \voiceOne c16 b16 a16 c16 \mBreak |
        \voiceTwo d,4 e8
      }
    >>
    \oneVoice g16 d16 b16 d16 c16 e16 d16 f16 |
    e16 d16 cis16 e16 d16 fis16 e16 g16 |
    fis16 e16 dis16 fis16 e16 g16 fis16 a16 |
    g16 b16 e16 g16 b16 g16 e16 d16 \mBreak |
    cis16 fis16 e16 fis16 d16 fis16 cis16 fis16 |
    b,16 fis'16 e16 fis16 d16 fis16 cis16 fis16 |
    b,16 d16 fis16 b,16 b'16 a16 g16 fis16 |
    g16 fis16 g16 e16 a16 g16 fis16 e16 | %\barNumberCheck #30
    fis16 e16 fis16 d16 g16 fis16 e16 d16 \mBreak |
    e16 d16 e16 cis16 fis16 e16 d16 cis16 |
    d16 cis16 d16 b16 d16 cis16 d16 b16 |
    d16 cis16 d16 b16 d16 cis16 d16 b16 |
    fis'16 d16 cis16 b16 d16 cis16 b16 ais16 |

  }
  \alternative {
    { b8  <b d fis b>8 r8 d8\laissezVibrer }
    { b8 <b d b' fis>8 r8 b8^. | }
  }
  <e c a>8.( c16 ) a16 b16 c16 d16 |
  <<
    {
      \voiceOne
      e16 g16 fis16 e16 fis8^. d8^. |
    }
    \new Voice \relative ees'' {
      \voiceTwo
      r8 c4_> a8
    }
  >>
  \oneVoice <b g>8_. <fis a>8_. <e g>8_. <fis a>8_. |
  <b g>8_. <fis a>8_. <e g>8_. <fis a>8_. |
  <g b>8_. r8 <d' f, a>4 ~ ~ ~ \mBreak |
  <f, a d>4 <f g' g, d'>4 |
  <g' es c>8. ( es16 ) c16 d16 es16 f16 |
  <<
    {
      \voiceOne
      g16 bes16 a16 g16 a8^. f8^. |
    }
    \new Voice \relative ees'' {
      \voiceTwo
      r8 es4_> c8
    }
  >>
  \oneVoice <d bes>8^. <a c>8^. <g bes>8^. <a c>8^. |
  <d bes>8^. <a c>8^. <g bes>8^. <a c>8^. \mBreak |
  <bes d>8^. r8 <c f as,>4~ |
  <f c as>4 <as, bes' bes, f'>4 |
  <bes' g es>8. ( g16 ) es16 f16 g16 as16 |
  bes8. ( g16 ) es16 f16 g16 as16 \mBreak |
  bes16 g16 es16 g16 bes16 g16 es16 bes'16 |
  as16 f16 es16 f16 as16 f16 es16 f16 |
  as16 f16 d16 f16 as16 f16 d16 as'16 |
  g16 es16 d16 es16 g16 es16 d16 es16 |
  g16 es16 c16 es16 g16 es16 c16 g'16 \mBreak |
  fis16 d16 cis16 d16 fis16 d16 g16 d16 |
  a'16 d,16 bes'16 d,16 c'16 d,16 a'16 d,16 |
  bes'16 d,16 g16 d16 bes'16 d,16 g16 d16 |
  bes'16 cis,16 g'16 cis,16 bes'16 a16 bes16 g16 |
  fis16 d16 cis16 d16 fis16 d16 g16 d16  |
  a'16 d,16 bes'16 d,16 c'16 d,16 a'16 d,16 |
  bes'16 d,16 g16 d16 bes'16 d,16 g16 d16 |
  bes'16 cis,16 g'16 cis,16 bes'16 a16 bes16 g16 |
  d'16 d,16 e'16 d16 c16 b16 a16 g16 |
  fis16 ( d16 ) a'16 g16 fis16 e16 d16 cis16 \mBreak |
  c16 ( a16 ) a'16 g16 fis16 e16 d16 cis16 |
  c16 ( b16 ) c16 a16 fis'16 ( e16 ) fis16 d16 ( |
  g16 )^. g,16 d'16 g,16 e'16 g,16 c16 g16 |
  d'16 g,16 b16 g16~
  <<
    {
      \voiceTwo g8 fis | %\barNumberCheck #70
      \voiceOne b16 a16 g16 b16 a16 g16 fis16 a16
    }
    \new Voice \relative c'' {
      \voiceOne c16 b16 a16 c16 |
      \voiceTwo d,4 e8
    }
  >>
  \mBreak |
  \oneVoice g16 d16 cis16 e16 d16 fis16 e16 g16 |
  fis16 d16 cis16 e16 d16 fis16 e16 g16 |
  fis16 a16 d,16 fis16 e16 g16 cis,16 e16 |
  d16 fis16 a16 d16 fis16 e16 d16 d16( |
  g16 ) g,16 d'16 g,16 es'16 g,16 c16 g16 \mBreak |
  d'16 g,16 bes16 g16~
  <<
    {
      \voiceTwo g8 fis8 |
      \voiceOne bes16 a16 g16 bes16 as16 g16 f16 as16
    }
    \new Voice \relative c'' {
      \voiceOne c16  bes16 a16 c16 |
      \voiceTwo d,4 es8
    }
  >>|
  \oneVoice g8 \clef "bass" fis,16[ a16] g16 bes16 a16 c16 |
  bes16 bes16 a16 c16 bes16 d16 c16 es16 \mBreak |

  \clef "bass" d16 c16 b16 d16 \clef "treble" c16 es16 d16 f16
  |
  es16 g16 c16 es16 g16 es16 c16 bes16 |
  a16 d16 c16 d16 bes16 d16 a16 d16 |
  g,16 d'16 c16 d16 bes16 d16 a16 d16  |
  \clef "treble" g,16 bes16 d16 g,16 g'16 f16 es16 d16 |
  es16 d16 es16 c16 f16 es16 d16 c16 |
  d16 c16 d16 bes16 es16 d16 c16 bes16 |
  c16 bes16 c16 a16 d16 c16 bes16 a16 \mBreak |
  bes16 a16 bes16 g16 bes16 a16 bes16 g16 |
  bes16 a16 bes16 g16 bes16 a16 bes16 g16 |
  d'16 bes16 a16 g16 bes16 a16 g16 fis16 |
  d'16 bes16 a16 g16 bes16 a16 g16 fis16 |
  d'16 b!16 a16 g16 e'!16 c16 a16 g16 \mBreak |
  d'16 b16 a16 g16 f'16 d16 b16 gis16 |
  e'16 c16 b16 a16 f'16 d16 b16 gis16 |
  e'16 c16 b16 a16 g'16 e16 cis16 ais16 |
  fis'16 d16 cis16 b16 g'16 e16 cis16 ais16 \mBreak |
  fis'16 d16 cis16 b16 a'16 e16 d16 c16 |
  c'16 g16 fis16 e16 b'16 fis16 e16 d16 |
  a'16 e16 d16 c16 g'16 d16 c16 b16 |
  fis'16 c16 b16 a16 e'16 c16 b16 a16 |
  d16 c16 b16 a16 e'16 c16 b16 a16 \mBreak |
  d16 c16 b16 a16 e'16 c16 b16 a16 |
  d16 c16 b16 a16 <g c g'>4 ~  |
  q <e'' e, c' g> |
  <g, a d, d'>2 |
  <a fis d d'> |
  <b g d d'>  |
  <b g d d'>^\fermata

  \mBreak
  |

}

rHDuboisToccata = {
  \globalDuboisToccata
  \stimmeITeilIADuboisToccata
  <<
    \stimmeIMittelteilDuboisToccata
    \new Voice \stimmeIIMittelteilDuboisToccata
  >>
  \rHMittelteilDuboisToccata
}

stimmeIIIMittelteilDuboisToccata = \relative fis' {
  \clef "bass"
  \voiceOne
  fis2 ~ |
  fis4 gis4 |
  gis4 fis4 ~ |
  fis2 ~ |
  fis2 ~ |
  fis2 ~ |
  fis4 eis4 |
  fis2 \mBreak |
  fis2\( ~ |
  fis4 e4 |
  e4 cis4 |
  b2 ~ |
  b2 |
  fis4 gis4 |
  e2 |
  dis2\) \mBreak |
  \clef "treble"
  \oneVoice
  r8 <gis' e>4 <dis fis>8 ~ |
  <dis fis>8 <e cis>4 <b eis>8 ~ |
  q \voiceOne fis'4. |
  r8 g4 fis8 |
  \oneVoice r8 <cis' a>4 ( <gis b>8 ~ |
  q <a fis>4 <ais e>8 ~ |
  <ais e> \voiceOne b4. \mBreak |
  r8 c4 b8 ) |
  r8 fis4 ( fisis8 ) |
  gis2 \clef "bass" |
  r8 e4 ( b8 |
  bis2 ) |
  r8 cis4 dis8 ~ |
  dis8 cis4 b8 ~ |
  b8 gis8 ais4 %\mBreak |
  R2 |
  \clef "treble" b8 _. dis8_. e8_. cis8_. |
  b8_. dis8_. e8_. cis8_. |
  <dis b>4( <e cis>4 |
  <fis dis>2) |
  b,8 _. d8_. e8_. cis8_. |
  b8_. d8_. e8_. cis8_.  |
  <b d>4 ( <e cis>4 |
  <fis d>2) |


  r8  fis8^. g8^. e8^. |
  fis8^. d8^. e8^. a,8^. |
  \oneVoice d8_. r8  \clef "bass" <d fis,>4(~ |
  <d g,> <cis a>4 \mBreak |
  <d d,>8 ) fis,8^.[ g8^. e8^.] |
  fis8_. d8_. e8_. a,8_.
  d8 r
  <<
    {
      \voiceOne a'4  \< ~ |
      a2 \! \> ~ |
      a2 \! ~ |
      a4 gis4 |
      a8
    }
    \new Voice \relative cis {
      \voiceTwo
      cis4 ( |
      b4 cis4 |
      d4 b4 |
      e2 |
      a,8 )
    }
  >>
  cis8^.[ d8^. b8^.]  |
  a-. c-. d-. b-. \bar "||"
  \key c \major
  <<
    {
      r8 e8^. f8^. d8^. |
      e8^. c8^. \autoBeamOff d8^. g,8^.
    }
    \new Voice \relative g {
      \voiceTwo
      g2 ~ |
      g4. g8
    }
  >>\clef "treble" |
  \autoBeamOn
  \oneVoice c16 g'16 f16 g16 e16 g16 d16 g16 |
  c,16 g'16 f16 g16 e16 g16 d16 g16 \mBreak |
  \clef "treble" c,16 g'16 e16 g16 c,16 g'16 e16 g16 |
  c,16 g'16 e16 g16 c,16 g'16 e16 g16 |
  f16 c'16 bes16 c16 a16 c16 g16 c16 |
  f,16 c'16 bes16 c16 a16 c16 g16 c16 |
  f,16 c'16 a16 c16 f,16 c'16 a16 c16  |

  f,16 c'16 a16 c16 f,16 c'16 a16 c16 |
  bes8 <f d bes>8 \clef "bass" r8 q |
  <f d bes>8 q r q |
  <f d bes g>8 q r q |
  <e d b gis> q r q | \mBreak
  <e c a> q r q |
  q q r q |
  <e b g>8 q r q |
  q q r q |
  \bar "||"
  \key d \major |
  <e cis ais fis>8 q r4 |
  R2*2 |
  ais,16 g16 fis16 eis16 fis8  r8
  \clef "treble" |
  <<
    {
      \voiceOne fis'2 ~ |
      fis4 gis4 |
      g4 fis4 ~ |
      fis2^\fermata \mBreak |
    }
    \new Voice \relative b {
      \voiceTwo
      b4 ( cis4 |
      dis4 gis4 |
      e4 ) cis4 |
      b2 \mBreak |
    }
  >>
  \clef "bass" |
  \oneVoice
  b,,16  fis'16 e16 fis16 dis16 fis16
  cis16 fis16 |
  b,16 fis'16 e16 fis16 dis16 fis16 cis16 fis16 |
  b,8 r8 r4 |
  R2 |
  \clef "treble"
  <<
    {
      \voiceOne
      fis''2  ~ |
      fis4 g4 |
      g4 fis4 ~ |
      fis2^\fermata  |
    }
    \new Voice \relative b {
      \voiceTwo
      b4 ( cis4 |
      d4 g4 |
      e4 ) cis4 |
      b2  |
    }
  >>
  \oneVoice
  \clef "bass" |
  b,,16  fis'16 e16 fis16 d16 fis16 cis16
  fis16 |
  b,16 fis'16 e16 fis16 d16 fis16 cis16 fis16 \clef "treble"
  g'8 r8 <fis e>4~( |
  <fis d>4 ) <fis ais,>4 ( |
  b,16 ) fis'16 e16 fis16 d16 fis16 cis16 fis16 |

  b,16 fis'16 e16 fis16 d16 fis16 cis16 fis16 \mBreak |
  \clef "treble"
  \tieUp
  \oneVoice b,8 r8  <fis' e>4(~ |
  <d fis>8) r8  <e fis>4( ~ |
  <d fis>8) <e fis>8([ ~ <d fis>8])  <e fis>8( ~ |
  <d fis>8) <e fis>8( ~ \autoBeamOff <fis d>8) \clef "bass" d,8\laissezVibrer \bar "||"
  \key g \major \clef "treble" |
  \autoBeamOn
  g'16  d'16 c16 d16 b16 d16 a16 d16 |
  g,16 d'16 c16 d16 b16 d16 a16 d16 \mBreak |
  g,8  r8 <c g e>4 |
  <<
    {
      \voiceOne
      <a d,>2 |
      \oneVoice g16  d'16 c16 d16 b16 d16 a16 d16 |
      g,16 d'16 c16 d16 b16 d16 a16 d16 |
      g,8  r8 <c g e>4 |
      \voiceOne <a d,>2 |
      b4 c4 |
      d2 |
      b4 c4 \mBreak |
      a4 b4 |
      a2 |
      a4 b8 c8 |
      a2 |
      a4.. g16 |
      <g d>2 |
      <g, b>4 ( <a c>8 <b d>8 ) |
      <es c>4( <d f>8 <es g>8 ) |
      <f as>4 fis4 |
      <g d g,>2 |
      q\fermata \bar "|."
    }
    \new Voice \relative g' {
      \voiceTwo
      g4 ( fis4 ) |
      s2*3 |
      g4 ( fis4 ) |
      <d g>2 ~ |
      g2 |
      <e g>2 \mBreak |
      d4 <g d>4 |
      <g e>2 ( ~ ~ |
      <e g>2 |
      <d g>2 ~ |
      <d fis>4.. ) g16 |
      g,2~ |
      g2 ~ |
      g2 ~ |
      g2 s1 \bar "|." %}
    }
  >>
}

stimmeIVMittelteilDuboisToccata = \relative fis {
  \clef "bass"
  \voiceTwo
  b4\(
  cis4 |
  dis4 gis4 |
  e4 cis4 |
  b4 ais4 |
  gis4 ais4 |
  b4 gis4 |
  cis2 |
  fis,4 gis8 ais8\) \mBreak |
  b4\( cis4 |
  dis4 e4 |
  ais,4  dis,4 |
  gis4 fis4 |
  e4 eis4 |
  fis4 cis4 |
  fis,2 |
  b2\) \mBreak |
  \clef "treble" s2*2 |
  s8 ais'8 gis8 ais8 |
  b2 \! |
  s2*2 |
  s8 dis8 cis8 dis8  |
  e2 |
  dis2 ( |
  cis2 ) \clef "bass" |
  gis2 ( |
  fis2 ) |
  e2 ( ~ |
  e4 dis4 |
  cis4 fis4 ) s2 \mBreak |
  \clef "treble" s1 |
  b2 ~ |
  b2 |
  s1  |
  b2 ~ |
  b2 \bar "||"

  a2 ~ |
  a4. a8
}

lHTeilIADuboisToccata = \relative d {
  \partial 8
  \clef "bass"
  d8(-.
  \repeat volta 2 {
    \oneVoice
    <g g,>)-. b8^.  c8^. a8^. |
    \slurNeutral
    b8  g8 a8 d,8 |
    g8 b,8 c8 <c' d,>8 |
    <b g>8 <a g>8[ <a fis>8 <a cis,>8] \mBreak |
    <a d,>8 <a g>8[ <a fis>8 <a cis,>8] |
    <a d,>8 <a fis>8 <b g>8 <g a,>8 |
    <fis d>8 r r8 d8 ( |
    <g g,>)-. b8^.  c8^. a8^. |
    \slurNeutral
    b8  g8 a8 d,8 |
    g8 b,8 c8 <c' d,>8 |
    <b g>8 <g f>[ <g e> <g b,>] |
    <g c,> <a g>[ <a fis> <a cis,>] |
    <a d,> <b a>[ <b g> <b dis,>] |
    <b e,> <b g> r <b e,> | \mBreak
    <ais fis> <fis' ais,>[ <fis b,> <fis e>] |
    <fis d> <fis ais,>[ <fis b,> <fis e>] |
    <fis d> q r \clef "treble" <b d,>8 |
    <b e,> <b d,> r <a cis> |
    <a d,> <a cis,> r <g b,> | \mBreak
    <g cis,>8 <g b,> r <fis ais> |
    <fis b,> q r \clef "bass" <fis b, a> |
    r <fis b, gis> r <eis b g> |
    <fis d b fis> r <e cis fis,> r |
  }
  \alternative {
    { <d b fis> <fis d b fis> r d8\laissezVibrer \mBreak }
    { <d b fis> <fis d b fis> r4 }
  }

  \clef "bass" %d'8 b8 fis8 b8 fis8 fis'8 d8 r4 |
  <c e a,>4 ~ q8 r8 |
  r8 <d a d,>4^> <d a fis>8 |
  g,16 d'16 c16 d16 b16 d16 a16 d16 |
  g,16 d'16 c16 d16 b16 d16 a16 d16 |
  g,16 d'16 b16 d16 g,16 d'16 b16 d16 \mBreak |
  g,16 d'16 b16 d16 g,16 d'16 b16 d16 \clef "treble" |
  <es g c,>4 ~ q8 r8 |
  r8 <f c f,>4 <f c a>8 |
  bes,16 f'16 es16 f16 d16 f16 c16 f16 |
  bes,16 f'16 es16 f16 d16 f16 c16 f16 \mBreak |
  \clef "treble" bes,16 f'16 d16 f16 bes,16 f'16 d16 f16 |
  bes,16 f'16 d16 f16 bes,16 f'16 d16 f16 |
  <bes g ees>8 q8 r8 q8 |
  <bes g es d> q8 r8 q8 \mBreak |
  <bes g ees c>8 q r8 q |
  <as f>8 q8 r8 q |
  <aes f d bes>8 q r q |
  <g ees>8 q r q |
  <g ees c aes>8 q r q | \mBreak
  <fis d>8 r
  <<
    {
      \voiceOne
      d8-. e-. |
      fis8-. g8-. a8-. fis8-. |
      g8-. bes8-. f8-. bes8-. |
      e,8-. bes'8-. g8-. cis8-. |
      d,4-- d8 e8-.  |
      fis8-. g8-. a8-. fis8-. |
      g8-. bes8-. f8-. bes8-. |
      e,8-. bes'8-. g8-. cis8-. |
    }
    \new Voice \relative d' {
      \voiceTwo
      d4~ |
      d2~ |
      d~ |
      d |
      d4 d4 ~ | \mBreak
      d2~ |
      d~ |
      d |
    }
  >>
  \oneVoice
  <a fis d>8 r r4 |
  <c a d,>8 r r4 | \mBreak
  <fis, d>8 r r4 |
  r4 \clef "bass" r8 d,8 ( |
  <g g,>8 )^. b8^. c8^. a8^. |
  b8 g8 a8 d,8 |
  g8 b,8 c8 <c' d,>8 \mBreak |
  \clef "bass"
  <b g> <a g>8[ <a fis> <a cis,>] |
  <a d,> <a g>[ <a fis> <a cis,>] |
  <a d,> <a fis> <b g> <g a,> |
  <fis d>8 r8 r8 d8 ( |
  <g g,>8 ) bes8 c8 a8 \mBreak |
  bes8 g8 a8 d,8 |
  g8 bes,8 c8 <bes' d,>8 <bes es,>8 <d, c>[ <d bes> <d fis,>] |
  <d g,> <f ees>[ <f d> <f a,>] | \mBreak
  <f bes,> <g f>[ <g ees> <g b,>] |
  <g c,> <g ees> r <g c,> |
  <fis d> <d' fis,>8[ <d g,> <d c>] |
  <d bes> <d f,>8[ <d g,> <d c>] | \mBreak
  <d bes>8 q r <g bes,> |
  <g c,> <g bes,> r <f a,> |
  <f bes,> <f a,> r <ees g,> |
  <ees a,> <ees g,> r <d f,> | \mBreak
  <d g,> q r <d g, f> |
  r8 <d g, e> r <cis g ees> |
  <d bes g d>8 q r <ees c g> |
  <d bes g> q r <ees c g> |
  <d b g> q r <e c a g>8 | \mBreak
  <d b g> q r <f d b gis> |
  <e c a> q r <fis d b gis> |
  <e c a>8 q r \clef "treble" <g e cis ais> |
  <fis d b> q r <g e cis ais> | \mBreak
  <fis d b>8 q r <a e c> |
  <c g e> q r <b fis d> |
  <a e c> q r <g d b> |
  <fis c a> q r \clef "bass" <e c a g> |
  <d c a fis> q r <e c a g> | \mBreak
  <d c a fis> q r <e c a g> |
  <d c a fis> q <e c g e>4~ |
  q \clef "treble" <c' g e> |
  <a g d>2 |
  <a fis d> |
  <b g d>2~ |
  q\fermata |
  \bar "||"
}

lHDuboisToccata =  \relative d {
  \globalDuboisToccata
  \lHTeilIADuboisToccata
  <<
    \stimmeIIIMittelteilDuboisToccata
    \new Voice \stimmeIVMittelteilDuboisToccata
  >>
}

pedalDuboisToccata =  \relative d {
  \globalDuboisToccata
  \clef "bass"
  \partial 8
  d8 (
  \repeat volta 2 {
    |
    g,8)_. r8 r4 |
    R2*3 \mBreak |
    R2*2 |
    r4 r8 d'8( |
    g,8)_. r8 r4 |
    R2 \mBreak |
    R2*5 \mBreak
    R2*5 \mBreak |
    R2*3 |
    fis8 r8 fis8 s8 |
    b8 b8 r8 d8\laissezVibrer
  }
  |
  b8 b8 r4 |
  a4 ~ a8 r8 |
  r8 d,4_> fis8 |
  g4 r4 |
  g4 r4 |
  g4 r4 \mBreak |
  g4 r4 |
  c4 ~ c8 r8 |
  r8 f,4_> a8 |
  bes4 r4 |
  bes4 r4 \mBreak |
  bes4 r4 |
  bes4 r4 |
  es4 r4 |
  R2 \mBreak |
  R2*5 \mBreak
  R2*5
  R2*5 \mBreak |
  R2 |
  r4 r8 d8( |
  g,8 )_. r8 r4 |
  R2*2 \mBreak |
  R2*3 |
  r4 r8 d'8 ( |
  g,8 ) r8 r4 \mBreak |
  R1*2 \mBreak
  R1*2
  R1*2 \mBreak |
  R2*2 |
  d4 r4 |
  d4 r4 |
  d4 r4 \mBreak |
  d4 r4 |
  d4 r4 |
  d4 r4 |
  d4 r4 \mBreak |
  d4  s4 |
  d4  r4 |
  R2*3 |
  R2*2 |

  r4 a' |
  d2 |
  <d d,>2 |
  q~ |
  q\fermata \bar "||"
  \key b \major
  R2*4
  R2*8
  R2*7
  R2*9 |
  R2*4 |
  b8 \p_. r8 r4 |
  b8_. r8 s4 |
  R2*2 |
  b8 _. r8 s4 |
  b8_. r8 r4  |
  R2*2 |

  a8 r8 r4 |
  R2*3 \mBreak |
  d,8 r8 r4 |
  R2*5 |
  a'8 r8 r4 \mBreak |
  a8 r8 r4 |
  g8 r8 r4 |
  R2 |
  c8 r8 r4 |
  c8 r8 r4 \mBreak |
  R2*2 |
  f8 r8 s4 |
  f8  r8 s4 |
  R2  |
  R2 |
  bes,8 r8 r4 |
  R2*3 \mBreak |
  a8 r8 r4 |
  R2 |
  g8 r8 r4 |
  R2 |
  fis8 r8 r4 \mBreak |
  R2*2 |
  r4 r8 fis8_. |
  b8 _. r8 s4 |
  R2*3 \mBreak |
  b8 r8 r4 |
  R2 |
  r4 b4 ~ |
  b2  |

  b2 ~ |
  b8 r8 r4 |
  R2*2  |
  b8 r8 r4 |
  R2*3 |
  b'8 r8 r4 |
  R2 \mBreak |
  R2*3 |
  r4^\markup { Anches Péd. } r8 d,8\f\laissezVibrer |

  R2*2 \mBreak |

  r4 a4\f |
  d2 |
  R2*2 |
  r4 a4\f |
  d2 |
  g,4^\markup { Tirasse G.O. } \ff a4 |
  b4 c8 d8 |
  e2 \mBreak |
  fis4 g4 |
  c,4 b4 |
  c4 a4 |
  d2 |
  d,2 |
  g2 ~ |
  g2 ~ |
  g2 ~ |
  g2 ~ |
  <g' g,>2~ |
  q\fermata \bar "|."
}

\markup {
  \column {
    \line { Grand Chœur sans 16' et sans Tirasse }
    \line { Claviers accouplés }
  }
}

scoreDuboisToccata = {
  <<
    \new PianoStaff <<
      \new Staff = "sRH" <<
        \new Dynamics \with {
          alignAboveContext = "sRH"
        }
        { \registrierungszeileDuboisToccata }
        \new Voice { \rHDuboisToccata }
        \new Voice { \ablaufzeileDuboisToccata }
        \new Dynamics { \ausdruckszeileDuboisToccata }
        \new Dynamics { \werkzeileDuboisToccata }
      >>
      \new Staff = "2" \with {
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 7) (padding . 1) (stretchability . 5))
      } <<
        \new Voice { \lHDuboisToccata }
        \new Voice { \ablaufzeileDuboisToccata }
      >>
    >>
    \new Staff <<
      \new Voice { \pedalDuboisToccata }
      \new Voice { \ablaufzeileDuboisToccata }
    >>
  >>
}




metronomZeileDuboisToccata = \drummode {

}



%{Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "DuboisToccata-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreDuboisToccata
  }
}


Arbeitspartitur%}
