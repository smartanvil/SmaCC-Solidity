generated
scan24X7X1X1
	self recordMatch: #(122).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $3
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $4
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $8
		ifTrue: [ ^ self scan19 ].
	('15' includes: currentCharacter)
		ifTrue: [ ^ self scan22 ].
	('26' includes: currentCharacter)
		ifTrue: [ ^ self scan18 ].
	(('$079' includes: currentCharacter)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch