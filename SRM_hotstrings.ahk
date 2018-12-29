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
::SAT::\textnormal+[SAT+]
::aic::\textnormal+[AIC+]
::bic::\textnormal+[BIC+]
::logit::\textnormal+[logit+]
::sonen::\sonen
::pi::\pi
:*:pihat::\hat+[\pi+]
::ln::\ln
::muhat::\hat+[\mu+]
:*:betahat::\hat+[\beta+]
:*:shat::\hat+[s+]
:*:yhat::\hat+[y+]
:*?:gamma::\gamma
:*?:epsilon::\epsilon
:*?:sigma::\sigma
:*?:squared::+62
:*?:lfsub::+-+[+]{left}
:*?:lfsup::+6+[+]{left}
::thetahat::\hat+[\theta+]
:*?:bft::\mathbf+[T+]
:*:leafeq::
	SendInput, \begin+[eq+]{enter 2}\end+[eq+]
	SendInput, {up}{home}+4+4{space 2}+4+4
	SendInput, {up}{end}+[+]{left}
	Return
:*:textn::
	Send, \textnormal
	Sleep, 200
	Send, {tab}
	Return




; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; 		Temp Stuff for SRM
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
^#!s::
	send, ^s
	reload
	Return 
