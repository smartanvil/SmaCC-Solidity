generated
scanForTokenX20
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX15 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX8 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(70) ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX14 ].
	currentCharacter == $_
		ifTrue:
			[ ^ self scanForTokenX4 ].
	^ self scanForTokenX19