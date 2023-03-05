Class {
	#name : #AmassConfigDb,
	#superclass : #Object,
	#instVars : [
		'db'
	],
	#category : #'Amass-Amass'
}

{ #category : #accessing }
AmassConfigDb >> options [
	^ NotYetImplemented new signal: '#options can be implemented in the subclass'
]

{ #category : #accessing }
AmassConfigDb >> primary [
	^ NotYetImplemented new signal: '#primary can be implemented in the subclass'
]

{ #category : #accessing }
AmassConfigDb >> url [
	^ ShouldBeImplemented new signal: '#url is should be implemented in subclass'
]
