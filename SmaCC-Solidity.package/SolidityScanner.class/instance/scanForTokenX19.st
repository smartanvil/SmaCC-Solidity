generated
scanForTokenX19
	currentCharacter == $f
		ifTrue: [ ^ self scan12 ].
	currentCharacter == $h
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan34 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(96) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(89) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ ^ self scan10 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX13 ].
	(currentCharacter isSafeForHTTP or: [ currentCharacter == $$ ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch