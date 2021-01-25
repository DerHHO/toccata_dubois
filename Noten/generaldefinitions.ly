\version "2.18.2"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))

stichnoten = #(define-music-function (parser location music)
                (ly:music?)
                (let* (
                        (bote (or (ly:get-option 'bote) 0))
                        )#{

                    \teeny \kurzhalsein  $music
                    \normalsize \kurzhalsaus
                  #}))

hptb = { \once \override Hairpin.to-barline = ##f }

partiturDynamik = {
  \tag #'partitur {
    \omit Voice.DynamicText
    \omit Voice.Hairpin
    \omit Voice.DynamicLineSpanner
    \omit Voice.TextScript
    \omit Voice.DynamicTextSpanner
  }

  %\override TextScript.stencil = ##f
}

cueDynWeg = {
  \omit Voice.DynamicText
  \omit Voice.Hairpin
  \omit Voice.DynamicLineSpanner
}

cueDynHer = {
  \undo \omit Voice.DynamicText
  \undo \omit Voice.Hairpin
  \undo \omit Voice.DynamicLineSpanner
}

partiturDynamikWeg = {
  \tag #'partitur {
    \omit Voice.DynamicText
    \omit Voice.DynamicLineSpanner
    \omit Voice.Hairpin
    \omit Voice.DynamicTextSpanner
    \omit Voice.TextScript
    \omit Voice.TextSpanner
  }
}

vorspielMark = { \mark \markup { \bold \caps Vorspiel } }

vorspielIMark = { \mark \markup { \bold \caps Vorspiel 1 } }


vorspielIIMark = { \mark \markup { \bold \caps Vorspiel 2 } }

choralMark = { \mark \markup { \bold \caps Choral } }