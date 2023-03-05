Class {
	#name : #AmassConfigScope,
	#superclass : #Object,
	#instVars : [
		'address',
		'cidr',
		'asn',
		'ports',
		'domains',
		'blacklistedSubdomains'
	],
	#category : #'Amass-Amass'
}

{ #category : #accessing }
AmassConfigScope >> initialize [
	super initialize.
	
	address := nil.
	cidr := nil.
	asn := nil.
	ports := #().
	domains := #().
	blacklistedSubdomains := #().
]
