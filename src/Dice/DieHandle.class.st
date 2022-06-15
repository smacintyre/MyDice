Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

{ #category : #accessing }
DieHandle >> addDie: aDie [ 
	
	dice add: aDie
]

{ #category : #accessing }
DieHandle >> diceNumber [
	
	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [ 

	super initialize.
	dice := OrderedCollection new.
]
