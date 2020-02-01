Class {
	#name : #StringMetricsTest,
	#superclass : #TestCase,
	#category : #'StringMetrics-Tests'
}

{ #category : #tests }
StringMetricsTest >> testLevenshteinDistanceAB [
	| firstString secondString expected actual |
	
	firstString := 'A'.
	secondString := 'B'.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 1.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testLevenshteinDistanceEmptyStrings [
	| firstString secondString expected actual |
	
	firstString := ''.
	secondString := ''.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 0.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testLevenshteinDistanceHondaHondaCaseSensitive [
	| firstString secondString expected actual |
	
	firstString := 'HONDA'.
	secondString := 'honda'.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 5.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testLevenshteinDistanceHondaHyundai [
	| firstString secondString expected actual |
	
	firstString := 'HONDA'.
	secondString := 'HYUNDAI'.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testLevenshteinDistanceKittenSitting [
	| firstString secondString expected actual |
	
	firstString := 'KITTEN'.
	secondString := 'SITTING'.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testLevenshteinDistanceOneEmpty [
	| firstString secondString expected actual |
	
	firstString := 'HONDA'.
	secondString := ''.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 5.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testLevenshteinDistanceSittingKitten [
	| firstString secondString expected actual |
	
	firstString := 'SITTING'.
	secondString := 'KITTEN'.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenshteinDistanceAB [
	| firstString secondString expected actual |
	
	firstString := 'A'.
	secondString := 'B'.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 1.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenshteinDistanceEmptyStrings [
	| firstString secondString expected actual |
	
	firstString := ''.
	secondString := ''.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 0.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenshteinDistanceHondaHondaCaseSensitive [
	| firstString secondString expected actual |
	
	firstString := 'HONDA'.
	secondString := 'honda'.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 5.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenshteinDistanceHondaHyundai [
	| firstString secondString expected actual |
	
	firstString := 'HONDA'.
	secondString := 'HYUNDAI'.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenshteinDistanceKittenSitting [
	| firstString secondString expected actual |
	
	firstString := 'KITTEN'.
	secondString := 'SITTING'.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenshteinDistanceOneEmpty [
	| firstString secondString expected actual |
	
	firstString := 'HONDA'.
	secondString := ''.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 5.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenshteinDistanceSittingKitten [
	| firstString secondString expected actual |
	
	firstString := 'SITTING'.
	secondString := 'KITTEN'.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]
