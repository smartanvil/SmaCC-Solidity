generated
scan45X5X1X1X1
	self recordMatch: #(114).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $0
		ifTrue: [ ^ self scan39 ].
	currentCharacter == $1
		ifTrue: [ ^ self scan41 ].
	currentCharacter == $6
		ifTrue: [ ^ self scan40 ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $2 and: $5)
				or: [ (currentCharacter between: $7 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch