Extension { #name : #String }

{ #category : #'*StringMetrics' }
String >> levenshteinDistanceTo: anotherString [

	"return the Levenshtein distance between two words"

	| stab cost |
	"if a string is empty, answer the length of the another string"
	self isEmpty
		ifTrue: [ ^ anotherString size ].
	anotherString isEmpty
		ifTrue: [ ^ self size ].
	stab := Array2D rows: anotherString size + 1 columns: self size + 1.
	1 to: stab columnCount do: [ :i | stab at: 1 at: i put: i - 1 ].
	1 to: stab rowCount do: [ :i | stab at: i at: 1 put: i - 1 ].
	2 to: stab columnCount do: [ :i | 
		2 to: stab rowCount do: [ :j | 
			(self at: i - 1) = (anotherString at: j - 1)
				ifTrue: [ cost := 0 ]
				ifFalse: [ cost := 1 ].
			stab
				at: j
				at: i
				put:
					({((stab at: j at: i - 1) + 1).
					((stab at: j - 1 at: i) + 1).
					((stab at: j - 1 at: i - 1) + cost)}
						asSortedCollection: [ :a :b | a < b ]) first ] ].
	^ stab at: stab rowCount at: stab columnCount
]

{ #category : #'*StringMetrics' }
String >> recursiveLevenshteinDistanceTo: anotherString [
	"Recursive implementation of the levenstine distance between two strings"
	| cost |

	self ifEmpty: [ ^ anotherString size ].
	anotherString ifEmpty: [ ^ self size ].

	"test if last characters of the strings match"
	cost := self last = anotherString last
		ifTrue: [ 0 ]
		ifFalse: [ 1 ].

	"return minimum of delete char from self, delete char from anotherString,
	and delete char from both"
	^ { 
		(self allButLast levenshteinDistanceTo: anotherString) + 1 .
		(self levenshteinDistanceTo: anotherString allButLast) + 1 .
		(self allButLast levenshteinDistanceTo: anotherString allButLast) + cost
	 } min.
]
