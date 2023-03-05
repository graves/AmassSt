Class {
	#name : #AmassEnumResult,
	#superclass : #Object,
	#instVars : [
		'contents'
	],
	#classInstVars : [
		'result'
	],
	#category : #Amass
}

{ #category : #accessing }
AmassEnumResult class >> fromOutput: aByteString [
	| enumResult |
	
	enumResult := self new.
	enumResult contents: (AmassParser parseOutput: aByteString).
	
	^ enumResult
]

{ #category : #accessing }
AmassEnumResult >> contents: aCollection [
	contents := aCollection
]

{ #category : #accessing }
AmassEnumResult >> domains [
	^ contents keys
]
