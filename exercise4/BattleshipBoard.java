package objectstructures;

public class BattleshipBoard {
	
	private int rows = 10;
	private int columns = 10;
	private int Counter = 1;
	
	private Cell[][] cells;
	private Cell[][] cells2;
	private char[][] hiddenCells;
	private char[][] hiddenCells2;
	public BattleshipBoard(){
		this.hiddenCells = hiddenBoard();
		this.hiddenCells2 = hiddenBoard();
		cells = new Cell[rows][columns];
		cells2 = new Cell[rows][columns];
		int x=0;
		for (int i=0; i<rows; i++){
			for (int j=0; j<columns; j++){
				String boardImput = Levels.SAMPLE_LEVEL1;
				String boardImput2 = Levels.SAMPLE_LEVEL2;
				char cellValue=boardImput.charAt(x);
				char cellValue2=boardImput2.charAt(x);
				cells[i][j] = new Cell(cellValue);
				cells2[i][j] = new Cell(cellValue2);
				x++;
			}
		}
	}
	public char[][] hiddenBoard(){
		char [][] hidden_board = new char[rows][columns];
		for (int i=0; i<rows; i++){
			for(int j=0; j<columns; j++){
				hidden_board[i][j]='~';
			}
		}
		return hidden_board;
	}
	
	private Cell getCell(int player, int row, int column){
		if (player==1){
		return cells[row][column];
		}else{
			return cells2[row][column];
		}
	}
	private char getHiddenCell(int player, int row, int column){
		if (player==1){
		return hiddenCells[row][column];
		}else{
			return hiddenCells2[row][column];
		}
	}
	public void change_hiddenCells(int player, int row,int column){
		if (player==1){
			if (getCell(player,row,column).isEmpty()){
				hiddenCells[row][column] = '.';
			}else{
				hiddenCells[row][column] = 'X';
			}
		}else{
			if (getCell(player,row,column).isEmpty()){
				hiddenCells2[row][column] = '.';
			}else{
				hiddenCells2[row][column] = 'X';
			}
		}
	}
	
	
	public String toString() {
		int player = 0;
		if(Counter%2==1){
			player+=1;
		}else{
			player+=2;
		}
		if (isFinished(player)){
			return ("Game over Spiller"+player+"vant.");
		}
		String outStr = "";
		if (player==1){
			for (int i=0; i<rows; i++){
				outStr +=i;
				outStr += "|";
				for (int j=0; j<columns; j++){
					outStr += getHiddenCell(2,i,j);
					outStr += "|";
				}
				outStr += "\n"; //nyLinje
		}}else{
			for (int i=0; i<rows; i++){
				outStr +=i;
				outStr += "|";
				for (int j=0; j<columns; j++){
					outStr += getHiddenCell(1,i,j);
					outStr += "|";
				}
				outStr += "\n"; //nyLinje
		}}
		return outStr;
	}
	//teller antall tomme ruter på en gitt rad
	public boolean isFinished(int player){
		for (int i=0; i<rows; i++){
			for (int j=0; j<columns; j++){
				if (getCell(player,i,j).getValue()=='X'&&getHiddenCell(player,i,j)!='X'){
					return false;
				}
			}
		}return true;
	}
		
	boolean checkInput(String S){
		if (S.length()!=2){
			return false;
		}
		for (int i=0; i<2; i++){
			if(! Character.isDigit(S.charAt(i))){
				return false;
			}
		}return true;
	}
		
	void getInput(String in){
		int player = 0;
		if(Counter%2==1){
			player+=1;
		}else{
			player+=2;
		}
		toString();
		if (! checkInput(in)){
			throw new IllegalArgumentException("Illegal input, plz restart game.");
		}
		int row = Character.getNumericValue(in.charAt(0));
		int column = Character.getNumericValue(in.charAt(1));
		if (player == 1){
			if(getHiddenCell(2, row, column)!='~'){
				throw new IllegalArgumentException("Invalid target row/column.");
			}
		}else{
			if(getHiddenCell(1, row, column)!='~'){
				throw new IllegalArgumentException("Invalid target row/column.");
			}
		}
		change_hiddenCells(player,row,column);
		if (isFinished(player)){
			toString();
		}
		Counter++;
	}
	
	
	public static void main(String[] args) {
		BattleshipBoard bb = new BattleshipBoard();
		System.out.println(bb);
	}
}
