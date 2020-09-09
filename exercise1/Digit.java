package stateandbehavior;

public class Digit {
	
	public int tallsystem;
	public int sifferverdi;
	
	public Digit(int tallsystem){
		this.tallsystem=tallsystem;
		sifferverdi=0;
	}
	
	public int getValue(){
		return sifferverdi;
	}
	public boolean increment(){
		sifferverdi++;
		if (sifferverdi >= tallsystem){
			sifferverdi = 0;
			return true;
		}else{
			return false;
		}
	}
	public int getBase(){
		return tallsystem;
	}
	public String alfabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	
	public String toString(){
		if (sifferverdi <= 9){
			return String.valueOf(getValue());
		}else{
			return String.valueOf(alfabet.charAt(sifferverdi-10));			
		}
	}

	public static void main(String[] args) {
		Digit test = new Digit(10);
		test.increment();
		test.increment();
		test.increment();
		test.increment();
		test.increment();
		test.increment();
		test.increment();
		test.increment();
		test.increment();
		test.increment();
		test.increment();
		System.out.println(test.toString());
	}
}
