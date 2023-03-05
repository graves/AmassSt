Class {
	#name : #AmassConfig,
	#superclass : #Object,
	#instVars : [
		'mode',
		'outputDirectory',
		'scriptsDirectory',
		'maximumDnsQueries',
		'resolvers',
		'scope'
	],
	#category : #'Amass-Amass'
}

{ #category : #accessing }
AmassConfig >> initialize [
	super initialize.
	
	mode := 'passive'.
	outputDirectory := '$HOME/.config/amass'.
	scriptsDirectory := ''.
	maximumDnsQueries := 20000.
	resolvers := #().
	scope := AmassConfigScope new.
]
