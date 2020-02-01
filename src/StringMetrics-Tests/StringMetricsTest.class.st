Class {
	#name : #StringMetricsTest,
	#superclass : #TestCase,
	#category : #'StringMetrics-Tests'
}

{ #category : #tests }
StringMetricsTest >> testLevenstineDistanceAB [
	| firstString secondString expected actual |
	
	firstString := 'A'.
	secondString := 'B'.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 1.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testLevenstineDistanceEmptyStrings [
	| firstString secondString expected actual |
	
	firstString := ''.
	secondString := ''.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 0.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testLevenstineDistanceHondaHondaCaseSensitive [
	| firstString secondString expected actual |
	
	firstString := 'HONDA'.
	secondString := 'honda'.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 5.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testLevenstineDistanceHondaHyundai [
	| firstString secondString expected actual |
	
	firstString := 'HONDA'.
	secondString := 'HYUNDAI'.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testLevenstineDistanceKittenSitting [
	| firstString secondString expected actual |
	
	firstString := 'KITTEN'.
	secondString := 'SITTING'.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testLevenstineDistanceOneEmpty [
	| firstString secondString expected actual |
	
	firstString := 'HONDA'.
	secondString := ''.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 5.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testLevenstineDistanceSittingKitten [
	| firstString secondString expected actual |
	
	firstString := 'SITTING'.
	secondString := 'KITTEN'.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenstineDistanceAB [
	| firstString secondString expected actual |
	
	firstString := 'A'.
	secondString := 'B'.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 1.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenstineDistanceEmptyStrings [
	| firstString secondString expected actual |
	
	firstString := ''.
	secondString := ''.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 0.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenstineDistanceHondaHondaCaseSensitive [
	| firstString secondString expected actual |
	
	firstString := 'HONDA'.
	secondString := 'honda'.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 5.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenstineDistanceHondaHyundai [
	| firstString secondString expected actual |
	
	firstString := 'HONDA'.
	secondString := 'HYUNDAI'.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenstineDistanceKittenSitting [
	| firstString secondString expected actual |
	
	firstString := 'KITTEN'.
	secondString := 'SITTING'.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenstineDistanceOneEmpty [
	| firstString secondString expected actual |
	
	firstString := 'HONDA'.
	secondString := ''.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 5.
	
	self assert: actual equals: expected.
]

{ #category : #tests }
StringMetricsTest >> testRecursiveLevenstineDistanceSittingKitten [
	| firstString secondString expected actual |
	
	firstString := 'SITTING'.
	secondString := 'KITTEN'.
	
	actual := firstString recursiveLevenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]
