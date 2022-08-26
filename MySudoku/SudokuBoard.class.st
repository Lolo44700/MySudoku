"
I am a sudoku board.
I have 9 x 9 cells in which standard sudoku rules apply
"
Class {
	#name : #SudokuBoard,
	#superclass : #BorderedMorph,
	#instVars : [
		'cells'
	],
	#category : #MySudoku
}

{ #category : #initialization }
SudokuBoard >> initialize [ 
	"initialization of the sudoku board"
	| l b |
	super initialize .
	bounds := (900@350 extent: 500@500).
	color := Color lightGray .
	"cells := Array2D new: 9 tabulate: [  :i :j | self newCellAt: i At: j ]"
	
	self layoutPolicy: TableLayout new.
	b := true.
	9 timesRepeat: [ l :=  Morph new layoutPolicy: RowLayout new; hResizing: #spaceFill; yourself.
		9 timesRepeat: [ l addMorph: (Morph new color: (b ifTrue: [Color yellow] ifFalse: Color green ) ).
			b := b not].
		self addMorph: l].
	self openInWorld.

]
