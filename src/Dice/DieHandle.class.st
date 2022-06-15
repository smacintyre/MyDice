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

{ #category : #'as yet unclassified' }
DieHandle >> maxValue [

	| res | 
	res := 0.
	dice do: [ :each | res := res + each faces ].
	^ res 
]

{ #category : #'as yet unclassified' }
DieHandle >> roll [

	| res |
	res := 0.
	dice do: [ :each | res := res + each roll ].
	^ res
]
