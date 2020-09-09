package interfaces;

public class Cell {
	
	private char value;
	public Cell(char value){
		this.value = value;
	}
	public boolean isEmpty(){
		return value == '.';
	}
	public int getValue(){
		return value;
	}
	@Override
	public String toString(){
		return "" + value;
	}
}
