\version "2.18.2"

trommelwirbel = \drummode {
  kltr16 kltr kltr kltr
}

trommelwirbelViertel = \drummode {
  \tag #'partitur {
    kltr4:32
  }
  \tag #'einzelstimme {
    kltr4:32
  }
  \tag #'midiausgabe {
    \trommelwirbel
  }
}

trommelwirbelViertelFermate = \drummode {
  \tag #'partitur {
    kltr4:32\fermata
  }
  \tag #'einzelstimme {
    kltr4:32\fermata
  }
  \tag #'midiausgabe {
    \trommelwirbel
  }
}

trommelwirbelHalbe = \drummode {
  \tag #'partitur {
    kltr 2:32
  }
  \tag #'einzelstimme {
    kltr 2:32
  }
  \tag #'midiausgabe {
    \trommelwirbel \trommelwirbel
  }
}

trommelwirbelDreiviertel = \drummode {
  \tag #'partitur {
    kltr2.:32
  }
  \tag #'einzelstimme {
    kltr2.:32
  }
  \tag #'midiausgabe {
    \trommelwirbel \trommelwirbel \trommelwirbel
  }
}
