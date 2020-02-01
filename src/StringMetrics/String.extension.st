Extension { #name : #String }

{ #category : #'*StringMetrics' }
String >> levenshteinDistanceTo: anotherString [
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
