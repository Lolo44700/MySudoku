"
I am a sudoku board.
I have 9 x 9 cells in which standard sudoku rules apply
"
Class {
	#name : #SudokuBoard,
	#superclass : #BorderedMorph,
	#instVars : [
		'cells',
		'blocks'
	],
	#category : #MySudoku
}

{ #category : #initialization }
SudokuBoard >> initialize [ 
	"initialization of the sudoku board"
	| c cCounter largeurC marge |
	super initialize .
	bounds := (900@350 extent: 500@500).
	color := Color lightGray .

	cCounter := 0.
	marge := 8 .
	largeurC := ( self width - (2 * marge) ) / 9.

"	Construct the 81 cells "	
	81 timesRepeat: [ 
			c := SudokuCell newAt: (cCounter % 9)  At: (cCounter // 9).
			c labelString: cCounter printString .
			c bounds: ((bounds topLeft + (marge@marge)  extent: largeurC@largeurC )) .
			c topLeft: (c topLeft) + ((largeurC * (cCounter % 9))@(largeurC  * (cCounter // 9))).
			c color: ((( cCounter // 3 ) + (cCounter // 9 ) + (cCounter // 27)) odd ifTrue: Color lightBlue ifFalse: Color lightGreen ) .
			self addMorph: c.
			cCounter := cCounter + 1.
		 ].

	self openInWorld.

]
