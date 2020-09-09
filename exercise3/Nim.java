package encapsulation;

public class Nim {
	
	int pile0;
	int pile1;
	int pile2;
	
	public Nim (int pileSize){
		if (! start_amount(pileSize)){
			throw new IllegalArgumentException("Illegal pilenumber entry");
		}
		this.pile0 = pileSize;
		this.pile1 = pileSize;
		this.pile2 = pileSize;
	}
	public Nim (){
		pile0 = pile1 = pile2 = 10;
	}
	boolean start_amount(int pileSize){
		if (pileSize<0){
			return false;
		}return true;
		
	}
	void removePieces(int number,int targetPile){
		if (isGameOver()){
			throw new IllegalStateException("Game over");
		}
		if (! isValidMove(number,targetPile)){
			throw new IllegalArgumentException("Illegal move.");
		}
		if (targetPile==0){
			pile0-=number;
		}
		if (targetPile==1){
			pile1-=number;
		}
		if (targetPile==2){
			pile2-=number;
		}
		
	}
	boolean isValidMove(int number,int targetPile){
		if (targetPile!=0 && targetPile!=1 && targetPile!=2){
			return false;
		}
		if (number<1){
			return false;
		}
		if (targetPile==0){
			if (number>pile0){
				return false;
			}
		}
		if (targetPile==1){
			if (number>pile1){
				return false;
			}
		}
		if (targetPile==2){
			if (number>pile2){
				return false;
			}
		}
		if (isGameOver()){
			return false;
		}
		return true;
	}
	boolean isGameOver(){
		if (pile0==0||pile1==0||pile2==0){
			return true;
		}return false;
	}
	int getPile(int targetPile){
		if (targetPile==0){
			return pile0;
		}
		if (targetPile==1){
			return pile1;
		}return pile2;
	}
	public String toString(){
		return String.format("Pile0: %d,Pile1: %d, Pile2: %d", getPile(0),getPile(1),getPile(2));
	}
	

	public static void main(String[] args) {
		Nim test =  new Nim(5);
		System.out.println(test);

	}

}
