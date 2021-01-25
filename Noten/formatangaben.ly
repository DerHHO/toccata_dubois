\version "2.18.2"

%{taktstil = {
  \override TextScript.outside-staff-priority = 61
  %\override TextSpanner.outside-staff-priority = 70
  \override Staff.DynamicLineSpanner.outside-staff-priority = #60
  \override BarNumber.outside-staff-priority = #260
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)
  \override Score.BarNumber.font-size = #2

  % Draw a box round the following bar number(s)
  \override Score.BarNumber.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  \override Score.BarNumber.self-alignment-X = #LEFT
}%}

taktstil = {
  \override TextScript.outside-staff-priority = 61
  %\override TextSpanner.outside-staff-priority = 70
  \override Staff.DynamicLineSpanner.outside-staff-priority = #60
  \override BarNumber.outside-staff-priority = #260
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 3)
  %\override Score.BarNumber.font-size = #2

  % Draw a box round the following bar number(s)
  
  %\override Score.BarNumber.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  \override Score.BarNumber.self-alignment-X = #LEFT
}

kurzhalsein = {
  \override Stem.length-fraction = #(magstep -3)
}

kurzhalsaus = {
  \revert Stem.length-fraction
}

continuostichnotenEin = {
  \teeny
  \override Stem.length-fraction = #(magstep -4)
}

continuostichnotenAus = {
  \normalsize
  \revert Stem.length-fraction
}

graueStichnoten = {
  %\override NoteHead.color = #grey
  %\override Stem.color = #grey
  %\override Beam.color = #grey
  %\override Accidental.color = #grey
  %\override Slur.color = #grey
}

stichnotenLyrics = {
  \override LyricText.font-size = #-2
  %\override LyricText.color = #grey
  %\override LyricHyphen.color = #grey
}

soloMarkup = \markup { \rounded-box { \bold Solo } }
tuttiMarkup = \markup { \rounded-box { \bold Tutti } }
tastSoloMarkup = \markup { \italic { tasto solo } }
tastSoloBMarkup = \markup { \italic { [tasto solo] } }

cantabileMarkup = \markup { \italic { cantabile } }
simileMarkup = \markup { \italic { simile } }
risolutoMarkup = \markup { \italic { risoluto } }
espressivoMarkup = \markup { \italic { espressivo } }
piuForteMarkup = \markup { \italic più \dynamic f }
dolceMarkup = \markup { \italic dolce }
crescPocoAPoco = \markup { \italic { cresc. poco a poco } }
crescMarkup = \markup { \italic { cresc. } }
dimMarkup = \markup { \italic { dim. } }
sempreCrescMarkup = \markup { \italic { sempre cresc. } }

ritMarkup = \markup { \italic rit. }
moltoRitMarkup = \markup { \italic { molto rit. } }
atempoMarkup = \markup { \italic { a tempo } }
atempoBMarkup = \markup { \italic { [a tempo] } }
accMarkup = \markup { \italic acc. }
pocoAccMarkup = \markup { \italic { poco acc. } }



sopranSoloMarkup = \markup { \rounded-box { \bold Sopransolo } }
altSoloMarkup = \markup { \rounded-box { \bold Altsolo } }
tenorSoloMarkup = \markup { \rounded-box { \bold Tenorsolo } }
bassSoloMarkup = \markup { \rounded-box { \bold Basssolo } }
chorMarkup = \markup { \rounded-box { \bold Chor } }
sopranMarkup = \markup { \rounded-box { \bold Sopran } }
altMarkup = \markup { \rounded-box { \bold Alt } }
tenorMarkup = \markup { \rounded-box { \bold Tenor } }
bassMarkup = \markup { \rounded-box { \bold Bass } }
violinenMarkup = \markup { \rounded-box { \bold Violinen } }
violineEinsMarkup = \markup { \rounded-box { \concat { \bold { "Violine 1" } } } }
violineZweiMarkup = \markup { \rounded-box { \concat { \bold { "Violine 2" } } } }
vckbMarkup = \markup { \rounded-box { \bold Vc./Kb. } }
trompetenMarkup = \markup { \rounded-box { \bold Trp. } }
gpMarkup = \markup { \bold G.P. }

mStemUp = {
  \tag #'klavierauszug { }
  \tag #'partitur { }
  \tag #'einzelstimme { \stemUp }
}

mStemDown = {
  \tag #'klavierauszug { }
  \tag #'partitur { }
  \tag #'einzelstimme { \stemDown }
}

mStemNeutral = {
  \tag #'klavierauszug { }
  \tag #'partitur {  }
  \tag #'einzelstimme { \stemNeutral }
}

senzaBassi = \markup { \italic { s.b. } }
conBassi = \markup { \italic { c.b. } }
vcMarkup = \markup {
  \italic { Vc. }
}
kbMarkup = \markup { \italic { Kb. } }
unisonoMarkup = \markup { \italic { unisono } }

wendefrei = \markup {
  %\markup { hi }
  \vspace #25
  %\markup { \column { \vcenter { { Diese Seite bleibt aus wendetechnischen Gründen frei. } } } }

  \fill-line {
    \box {
      \pad-markup #5
      \fontsize #2
      "Diese Seite bleibt aus wendetechnischen Gründen frei."
    }
  }
}