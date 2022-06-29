Class {
	#name : #EnumResult,
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
EnumResult class >> fromOutput: aByteString [
	| enumResult |
	
	enumResult := self new.
	enumResult contents: (AmassParser parseOutput: aByteString).
	
	^ enumResult
]

{ #category : #accessing }
EnumResult >> contents: aCollection [
	contents := aCollection
]

{ #category : #accessing }
EnumResult >> domains [
	^ contents keys
]
