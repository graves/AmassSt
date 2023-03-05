Class {
	#name : #AmassPostgres,
	#superclass : #AmassConfigDb,
	#instVars : [
		'username',
		'password',
		'port',
		'primary',
		'options',
		'host'
	],
	#category : #'Amass-Amass'
}

{ #category : #accessing }
AmassPostgres class >> initializeWithUsername: aUsernameString password: aPasswordString host: aHostString port: aPortString [
	| postgres |
	
	postgres = AmassPostgres new.
	
	postgres username: aUsernameString.
	postgres password: aPasswordString.
	postgres host: aHostString.
	postgres port: aPortString.
	
	^ postgres
]

{ #category : #accessing }
AmassPostgres >> host: aHostString [
	host := aHostString.
]

{ #category : #accessing }
AmassPostgres >> options: anOptionsString [
	options := anOptionsString.
]

{ #category : #accessing }
AmassPostgres >> password: aPasswordString [
	password := aPasswordString.
]

{ #category : #accessing }
AmassPostgres >> port: aPortString [
	port := aPortString.
]

{ #category : #accessing }
AmassPostgres >> primary: aBoolean [
	primary := aBoolean.
]

{ #category : #accessing }
AmassPostgres >> username: aUsernameString [
	username := aUsernameString.
]
