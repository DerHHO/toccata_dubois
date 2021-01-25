\version "2.18.2"
#(ly:set-option 'relative-includes #t)

#(set! paper-alist (cons '("Marschbuch" . (cons (* 148.5 mm) (* 120 mm)) ) paper-alist))

#(set-global-staff-size 16.5)
#(set-default-paper-size "a4")

\include "../Noten/DuboisToccata_Noten.ly"


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




\header {
  title = \titel
  subtitle = \untertitel
  dedication = \widmung
  composer = \komponist
  poet = \herausgeber
  arranger = \arrangeur
  tagline = \schlusszeile
  archivnummer = \archivNummerDuboisToccata
  qrcode = \orgelQRDuboisToccata
  beistrichkomponist = \beistrichKomponistDuboisToccata
  beistrichuntertitel = \beistrichUntertitelDuboisToccata
  copyright = \copyrightDuboisToccata
}

\book {
  \bookOutputName "Orgel"
  \header {
    instrument = "Orgel"
  }
  

\score {
  \header {
    
  }
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'partitur
  \removeWithTag #'einzelstimme
  \removeWithTag #'klavierauszug
  \removeWithTag #'midiausgabe
  \optionalTranspose { 
    \compressFullBarRests
    \transpose c c \orgelsystemDuboisToccata 
  }
}
  \paper {  
    	indent = 0\cm
	short-indent = 0\cm

    ragged-right = ##f
    ragged-last-bottom = ##f
    left-margin = 1.3\cm
right-margin = 1\cm
first-page-number = 2
indent = 0\cm
#(include-special-characters)
#(define page-breaking ly:page-turn-breaking)

	
}
}