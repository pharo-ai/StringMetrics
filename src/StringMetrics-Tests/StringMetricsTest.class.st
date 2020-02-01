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
StringMetricsTest >> testLevenstineDistanceSittingKitten [
	| firstString secondString expected actual |
	
	firstString := 'SITTING'.
	secondString := 'KITTEN'.
	
	actual := firstString levenshteinDistanceTo: secondString.
	expected := 3.
	
	self assert: actual equals: expected.
]
