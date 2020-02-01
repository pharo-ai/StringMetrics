Class {
	#name : #BaselineOfStringMetrics,
	#superclass : #BaselineOf,
	#category : #BaselineOfStringMetrics
}

{ #category : #baselines }
BaselineOfStringMetrics >> baseline: spec [
	<baseline>
	spec for: #common do: [	
							
		"Packages"
		spec
			package: 'StringMetrics'; 
			package: 'StringMetrics-Tests' with: [ spec requires: #('StringMetrics') ] ].
]
