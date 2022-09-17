"
I am a sudoku cell
I have a set of potential values or only one when fixed
"
Class {
	#name : #SudokuCell,
	#superclass : #SimpleButtonMorph,
	#instVars : [
		'row',
		'column',
		'possible',
		'cube',
		'position',
		'size'
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
	cube := nil.
	position := (row * size)@(column * size).
	self color: (row even ifTrue: Color red ifFalse: Color blue)

]

{ #category : #initialization }
SudokuCell >> initialize [ 
	"initialization of the cell with an array from 1 to 9"
	super initialize .
	possible := OrderedCollection newFrom: (1 to: 9).
	size := 50
]
