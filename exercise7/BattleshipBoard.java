package interfaces;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class BattleshipBoard implements BattleshipInterface{
	
	private int Counter = 1;
	private int size;
	private int rows = size;
	private int columns = size;
	
	//private String startString = "....................................................................................................";
	private String hitString1;
	private String hitString2;
	private String shipString1;
	private String shipString2;
	private String shipTypeString1;
	private String shipTypeString2;
	
	private Cell[][] cells;
	private Cell[][] cells2;
	private char[][] hiddenCells;
	private char[][] hiddenCells2;
	private Cell[][] hitsBoard1;
	private Cell[][] hitsBoard2;
	
	private String fileName;
	
	//private String[] testShipString1;
	//private ArrayList<Ship> testShipList; 
	
	public BattleshipBoard(){
		/*size = 10;
		hitString1 = startString;
		shipString1 = "H20,U63";
		shipTypeString1 = "H32,U13";
		hitString2 = startString;
		shipString2 = "H20,U63";
		shipTypeString2 = "H32,U13";*/
		fileName = "NewBoard";
		load(fileName);
		rows = size;
		columns = size;
		this.hiddenCells=clean_waves();
		this.hiddenCells2=clean_waves();
		this.hitsBoard1 = hitsBoard(hitString1);//Input loadfil 
		this.hitsBoard2 = hitsBoard(hitString2);//Input loadfil2
		this.cells = generateBoard(shipListGenerator(stringToList(shipString1),stringToList(shipTypeString1)));
		this.cells2 = generateBoard(shipListGenerator(stringToList(shipString2),stringToList(shipTypeString2)));
		//System.out.println(getCell(1,2,0));
		hiddenBoard(hitsBoard1,1);
		hiddenBoard(hitsBoard2,2);
		//System.out.println(Counter);
	}

	public char[][] clean_waves(){
		char [][] hidden_board = new char[rows][columns];
		for (int i = 0; i < rows; i++) {
			for (int j = 0; j < columns; j++) {
				hidden_board[i][j]='~';
			}
		}
		return hidden_board;
	}
	public void hiddenBoard(Cell[][] inputBoard,int player){ //Feil innlasting av board.
		for (int i=0; i<10; i++){
			for(int j=0; j<10; j++){
				if (! inputBoard[i][j].isEmpty()){
					//hidden_board[i][j]='~';
					change_hiddenCells(player,i,j);
					Counter++;
				}
				/*else{
					change_hiddenCells(player,i,j);
					//Counter++;
				}*/
			}
		}

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
	
	public void change_hiddenCells(int player, int row,int column){//Må endres, kanskje
		if (player!=1){
			//System.out.println("p1");
			if (getCell(player,row,column).isEmpty()){
				hiddenCells[row][column] = '.';
			}else{
				hiddenCells[row][column] = 'X';
			}
		}else{
			//System.out.println("p2");
			if (getCell(player,row,column).isEmpty()){
				hiddenCells2[row][column] = '.';
			}else{
				hiddenCells2[row][column] = 'X';
			}
		}
	}
	
	
	public String toString() {
		int player;
		if(Counter%2==1){
			player=1;
		}else{
			player=2;
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
		}
		return true;
	}
		
	void getInput(String in){

			//save(file);
		int player;
		if(Counter%2==1){
			player=1;
		}else{
			player=2;
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
		if (isFinished(1)||isFinished(2)){
			toString();
		}
		Counter++;
	}
	
	public Cell[][] generateBoard(ArrayList<Ship> shipList){//Virker ikke
		List<List<Integer>> xy = new ArrayList<List<Integer>>(); 
		Cell[][] board = new Cell[rows][columns];
		for (int i = 0; i < shipList.size(); i++) {
			List<List<Integer>> ship_xy = shipList.get(i).coordinates();
			for (int j = 0; j < ship_xy.size(); j++) {
				xy.add(ship_xy.get(j));
			}
		}
		/*for (int i = 0; i < xy.size(); i++) {
			System.out.println(xy.get(i));
		}*/
		for (int i = 0; i < rows; i++) {
			for (int j = 0; j < columns; j++) {
				for (int j2 = 0; j2 < xy.size(); j2++) {
					if(xy.get(j2).get(0)==i && xy.get(j2).get(1)==j){
						char cellValue = 'X';
						//System.out.println("inni første if");
						board[i][j]=new Cell(cellValue);
						break;
						//System.out.println(board[i][j]);
					}else{
						char cellValue = '.';
						//System.out.println("inni andre if");
						board[i][j]=new Cell(cellValue);
						//System.out.println(board[i][j]);
					}
				}
			}
		}
		//System.out.println(board[6][3]);
		return board;
	}
	
	public String[] stringToList(String shipString){ //virker
		String[] shiplist;
		shiplist = shipString.split(",");
		return shiplist;
	}
	
	public ArrayList<Ship> shipListGenerator(String[] ships, String[] shiptypes){//Ser ut til å virke, kan testes med main i ship-klassen.
		ArrayList<Ship> shipList = new ArrayList<>();
		ArrayList<ShipType> shipTypeList = new ArrayList<>();
		for (int i = 0; i < shiptypes.length; i++) {
			ShipType newShipType = new ShipType();
			newShipType.setType(shiptypes[i].charAt(0));
			newShipType.setWidth(Character.getNumericValue(shiptypes[i].charAt(1)));;
			newShipType.setHeight(Character.getNumericValue(shiptypes[i].charAt(2)));
			shipTypeList.add(newShipType);
		}
		for (int i = 0; i < ships.length; i++) {
			Ship newShip = new Ship();
			newShip.setShipType(shipTypeList.get(i)); 
			newShip.setX(Character.getNumericValue(ships[i].charAt(1)));
			newShip.setY(Character.getNumericValue(ships[i].charAt(2)));
			shipList.add(newShip);
		}
		return shipList;
	}	
	
	public Cell[][] hitsBoard(String inputString){ //virker.
		//inputString=startString; //skal endres på, i debugging.
		if (inputString.length()!=100){
			int l = 100-inputString.length();
			System.out.println(String.valueOf(l));
			for (int i = 0; i < l; i++) {
				inputString+=".";
		}}
		//System.out.println(inputString);
		Cell[][] hitCells = new Cell[rows][columns];
		int x=0;
		for (int i=0; i<rows; i++){
			for (int j=0; j<columns; j++){
				char cellValue = inputString.charAt(x);
				hitCells[i][j] = new Cell(cellValue);
				//System.out.println(hitCells[i][j]);
				x++;
			}
		}
		return hitCells;
	}
	public String hiddenBoardToString(char [][] hiddenBoard){
		String mergeString = "";
		for (int i = 0; i < hiddenBoard.length; i++) {
			for (int j = 0; j < hiddenBoard.length; j++) {
				if (hiddenBoard[i][j]== '~'){
					mergeString+=".";
				}else{
					mergeString+="X";
				}
			}
		}
		return mergeString;
	}
	
	public void save(String fileName){
		try
	        {
	            PrintWriter outFile = new PrintWriter(fileName);
	            outFile.println(size);
	            outFile.println(hiddenBoardToString(hiddenCells));
	            outFile.println(shipTypeString1);
	            outFile.println(shipString1);
	            outFile.println(hiddenBoardToString(hiddenCells2));
	            outFile.println(shipTypeString2);
	            outFile.println(shipString2);
	            outFile.close();
	        }
	        catch (FileNotFoundException e)
	        {
	            System.err.println("Error: file 'test.txt' could not be opened for writing.");
	            System.exit(1);
	        }
	}
	public void load(String fileName){
		Scanner in;
		String line="";
		try
        {
            in = new Scanner(new FileReader(fileName));

            
            while(in.hasNext()){
                line += in.nextLine()+";";
            }
            in.close();
            String[] stringList;
            stringList = line.split(";");
            size = Integer.parseInt(stringList[0]);
            hitString1 = stringList[1];
            shipTypeString1 = stringList[2];
            shipString1 = stringList[3];
            hitString2 = stringList[4];
            shipTypeString2 = stringList[5];
            shipString2 = stringList[6];
    		rows = size;
    		columns = size;
    		Counter = 1;
    		this.hiddenCells=clean_waves();
    		this.hiddenCells2=clean_waves();
    		this.hitsBoard1 = hitsBoard(hitString1);//Input loadfil 
    		this.hitsBoard2 = hitsBoard(hitString2);//Input loadfil2
    		this.cells = generateBoard(shipListGenerator(stringToList(shipString1),stringToList(shipTypeString1)));
    		this.cells2 = generateBoard(shipListGenerator(stringToList(shipString2),stringToList(shipTypeString2)));
    		hiddenBoard(hitsBoard1,1);
    		hiddenBoard(hitsBoard2,2);
        }
        catch (FileNotFoundException e)
        {
            System.err.println("Error: file: "+fileName+" could not be opened. Does it exist?");
            System.exit(1);
        }
		
	}
	
	public static void main(String[] args) {
		BattleshipBoard bb = new BattleshipBoard();
		/*System.out.println(bb.testShipString1[1]);
		System.out.println(String.valueOf(bb.testShipList.get(1).getShipType().getHeight()));
		System.out.println(String.valueOf(bb.testShipList.get(1).getShipType().getWidth()));
		List<List<Integer>> testliste = bb.testShipList.get(0).coordinates();
		for (int i = 0; i < testliste.size(); i++) {
			System.out.println("<"+String.valueOf(testliste.get(i).get(0))+","+String.valueOf(testliste.get(i).get(1))+">");
		}*/

		//System.out.println(bb.cells[0][0]);
		//System.out.println(String.valueOf(bb.hiddenCells[0][0]));
		//System.out.println(bb.cells2);
		System.out.println(bb);
	}
}
