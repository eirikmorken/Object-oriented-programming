package encapsulation;

public class Account {
	
	double balance;
	double interestRate;
	
	public Account(double balance, double interestRate){
		if (balance<0){
			throw new IllegalArgumentException("The number must be positive, you entered:"+balance);
		}
		if (interestRate<0){
			throw new IllegalArgumentException("The number must be positive, you entered:"+interestRate);
		}
		this.balance=balance;
		this.interestRate=interestRate;
		
	}
	public double getBalance(){
		return balance;
	}
	public double getInterestRate(){
		return interestRate;
	}
	public void setInterestRate(double newInterestRate){
		if (newInterestRate<0){
			throw new IllegalArgumentException("The number must be positive, you entered:"+newInterestRate);
		}
		interestRate=newInterestRate;
	}
	public void deposit(double Amount){
		if (Amount < 0){
			throw new IllegalArgumentException("The number must be positiv, you entered"+Amount);
		}balance+=Amount;
	}
	public void withdraw(double Amount){
		if (Amount < 0){
			throw new IllegalArgumentException("The number must be positiv, you entered"+Amount);
		}
		if (Amount > balance){
			throw new IllegalStateException("You cannot withdraw mor than balance amount: "+balance);
		}
		balance-=Amount;
	}
	public void addInterest(){
		balance+=balance*interestRate;
	}
}
