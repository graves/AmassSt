Class {
	#name : #AmassParser,
	#superclass : #Object,
	#category : #Amass
}

{ #category : #accessing }
AmassParser class >> parseOutput: aByteString [
	| lines aDictionary|
	
	lines := aByteString findTokens: String cr, String lf.
	aDictionary := lines
		inject: Dictionary new
		into: [ :acc :each | 
			| arr |
			arr := each splitOn: ('\s' asRegex).
			acc at: (arr last) put: (arr first).
			acc
		].
		
	^ aDictionary
]
