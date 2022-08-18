"
I am a sudoku cell
I have a set of potential values or only one when fixed
"
Class {
	#name : #SudokuCell,
	#superclass : #Object,
	#instVars : [
		'row',
		'column',
		'poss',
		'cube'
	],
	#classInstVars : [
		'initArray'
	],
	#category : #MySudoku
}

{ #category : #accessing }
SudokuCell class >> initArray [
	
	^ initArray 
]

{ #category : #accessing }
SudokuCell class >> newAt: aRow At: aColumn [
	| cs |
	cs := SudokuCell new.
	cs At: aRow At: aColumn .
	^cs
]

{ #category : #initalize }
SudokuCell >> At: aRow At: aColumn [ 
	row := aRow.
	column := aColumn.
	cube := nil

]

{ #category : #initialization }
SudokuCell >> initialize [ 
	"initialization of the cell with an array from 1 to 9"
	super initialize .
	poss := OrderedCollection newFrom: (1 to: 9)
]
