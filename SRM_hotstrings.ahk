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
::lfeq::
	sendinput, \begin+[eq+]+[+]{enter 2}
	sendinput, \end+[eq+]{up 2}{end}{left}
	return

::eqnext::
	sendinput {down}+{4 4}{left 2}{space 2}{left}
::sxx::\sxx
::sxy::\sxy
::syy::\syy
::sx::\sx
::sy::\sy
::b1::\boneh
::b0::\bzeroh
::bjhat::\hat+[\beta+]_j
::betahat::\hat+[\beta+]
::tmlr::t+-+[n-(k+=1), \alpha/2+]
::times::\cdot
::stderr::\textnormal+[SE+]
::textnorm::
	send \textnormal
	sleep 100
	send {tab}
	return
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
