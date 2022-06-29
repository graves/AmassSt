Class {
	#name : #AmassCmd,
	#superclass : #Object,
	#instVars : [
		'transcript',
		'result',
		'stdout',
		'stderr'
	],
	#category : #Amass
}

{ #category : #accessing }
AmassCmd >> enumDomain: aByteString [
	"perform DNS enumeration and mapping"

	[
		OSSUnixSubprocess new
		command: '/usr/local/bin/amass';
		arguments: { 'enum' . '-passive' . '-src' . '-d' . aByteString };
		redirectStdout;
		redirectStderr;
		runAndWaitPollingEvery: (Delay forMilliseconds: 200)
		doing: [ :process :outStream :errStream |  
			| readOut readErr |
			readOut := outStream upToEnd.
			readErr := errStream upToEnd.

			transcript nextPutAll: readOut.
			transcript nextPutAll: readErr.
			stdout nextPutAll: readOut.
			stderr nextPutAll: readErr.
		]
		onExitDo: [ :process :outStream :errStream  |
			process closeAndCleanStreams.
			result := (EnumResult fromOutput: stdout contents).
			]
	] fork.
	
	^ self
]

{ #category : #accessing }
AmassCmd >> gtLiveFor: aView [
	<gtView>

	^ transcript asElement gtLiveFor: aView
]

{ #category : #accessing }
AmassCmd >> gtStderrFor: aView [
	<gtView>

	^ aView textEditor
		title: 'stderr';
		text: [ stderr contents ]
]

{ #category : #accessing }
AmassCmd >> gtStdoutFor: aView [
	<gtView>

	^ aView textEditor
		title: 'stdout';
		text: [ stdout contents ]
]

{ #category : #accessing }
AmassCmd >> initialize [
	super initialize.
	
	transcript := GtTranscript new.
	stdout := String new writeStream.
	stderr := String new writeStream.
]

{ #category : #accessing }
AmassCmd >> result [
	^ result
]
