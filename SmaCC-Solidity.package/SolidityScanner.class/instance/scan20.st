generated
scan20
	self recordMatch: #(111 114).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan4 ].
	('08' includes: currentCharacter)
		ifTrue: [ ^ self scan16 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $1 and: $7)
				or: [ currentCharacter == $9
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch