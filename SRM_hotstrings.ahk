; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; 		SRM hotstrings
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
^+q::
	send, ^a^c
	sleep, 100
	send, !{tab}
	return
::rt::
	send, \sqrt
	sleep, 100
	send {tab}
	return
::frac::
	send, \frac
	sleep, 100
	send {tab}
	return
::sxx::\sxx
::sxy::\sxy
::syy::\syy
::sx::\sx
::sy::\sy
::b1::\boneh
::b0::\bzeroh
::nm1::+9n-1+0
::nm2::+9n-2+0




; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; 		Temp Stuff for SRM
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
^#!s::
	send, ^s
	reload
	Return 
