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
	"initialzation of th esudoku board"
	super initialize .
	bounds := (900@350 extent: 500@500).
	color := Color lightGray .
	"cells := Array2D new: 9 tabulate: [  :i :j | self newCellAt: i At: j ]"
]
