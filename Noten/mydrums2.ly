\version "2.18.2"

% http://lilypond.org/doc/v2.19/Documentation/snippets/percussion

drumPitchNames.grtr      = #'grtr
drumPitchNames.bd      = #'grtr
drumPitchNames.dba        = #'dbass  % 'db is in use already
drumPitchNames.dbassmute  = #'dbassmute
drumPitchNames.dbm        = #'dbassmute
drumPitchNames.do         = #'dopen
drumPitchNames.kltr  = #'kltr
drumPitchNames.sn        = #'kltr
drumPitchNames.dslap      = #'dslap
drumPitchNames.becken         = #'becken
drumPitchNames.dslapmute  = #'dslapmute
drumPitchNames.dsm        = #'dslapmute

#(define schlagwerk
  '((grtr      default  #f         -3)
    (dbassmute  default  "stopped"  -2)
    (kltr      default  #f          1)
    (dopenmute  default  "stopped"   0)
    (becken      default  #f          -1)
    (dslapmute  default  "stopped"   2)))

midiDrumPitches.kltr = #(ly:make-pitch -2 1 NATURAL)
midiDrumPitches.becken = #(ly:make-pitch -1 1 FLAT) %#(ly:make-pitch -1 0 SHARP)
midiDrumPitches.dopen =  a
midiDrumPitches.dopenmute = gis
midiDrumPitches.dslap =  b
midiDrumPitches.dslapmute = ais
