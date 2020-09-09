package stateandbehavior;

public class Account {

	public double balance;
	public double interestRate;
	
	public void deposit(double Amount){
		if (Amount >= 0){
			balance+=Amount;
		}
	}
	public void addInterest(){
		double Interest = balance*interestRate;
		balance+=Interest;
	}
	
	public double getBalance(){
		return balance;
	}
	
	public double getInterestRate(){
		return interestRate;
	}
	public void setInterestRate(double newInterestRate){
		interestRate = newInterestRate;	
	}
	
	public static void main(String[] args) {
		Account test = new Account();
		test.deposit(20);
		System.out.println(String.valueOf(test.getBalance()));
	}
}
