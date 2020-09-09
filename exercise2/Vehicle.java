package encapsulation;
import java.util.List;
import java.util.Arrays;

public class Vehicle {
	
	char vehicleType;
	char fuelType;
	String regnr;
	String alfa = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	List<String> ABC=Arrays.asList("EK","EL","HY");
	
	String te;
	public Vehicle(char vehicleType, char fuelType, String regnr){
		if (fuelType!='H'&&fuelType!='E'&& fuelType!='D'&&fuelType!='G'){
			throw new IllegalArgumentException("Illegal registrationplate input...");
		}
		this.fuelType=fuelType;
		if (vehicleType!='C'&&vehicleType!='M'){
			throw new IllegalArgumentException("Illegal registrationplate input...");
		}
		if (! check_vehicleType()){
			throw new IllegalArgumentException("Illegal registrationplate input...");
		}
		this.vehicleType=vehicleType;
		if (! check_regnr(regnr)){
			throw new IllegalArgumentException("Illegal registrationplate input...");
		}
		this.regnr=regnr; 
	}
	public boolean check_vehicleType(){
		if (fuelType=='H' && vehicleType=='C'){
			return false;
		}return true;
	}
	public boolean check_regnr(String regnr){
		for (int i=0; i<regnr.length();i++){
			if (! alfa.contains(String.valueOf(regnr.charAt(i)))){
				return false;
			}
		}
		for (int i=0; i<2;i++){
			if (Character.isDigit(regnr.charAt(i))){
				return false;
			}
		}
		if (fuelType=='E' && regnr.charAt(0)!='E'){
			return false;
		}
		if (fuelType=='E' && regnr.charAt(1)!='L' && regnr.charAt(1)!='K'){
			return false;
		}
		if (fuelType=='H' && vehicleType!='C'){
			return false;
		}
		if (fuelType=='H' && (regnr.charAt(0)!='H' && regnr.charAt(1)!='Y')){
			return false;
		}
		if (fuelType=='G' || fuelType=='D'){
			te = regnr.substring(0,2);
			
			if (ABC.contains(regnr.substring(0,2))){
				return false;
			}
		}
		if (vehicleType=='C'){
			if (regnr.length()!=7){
				return false;
			}
			for (int i=2; i<7;i++){
				if (Character.isLetter(regnr.charAt(i))){
					return false;
				}
			}
		}
		if (vehicleType=='M'){
			if (regnr.length()!=6){
				return false;
			}
			for (int i=2; i<6; i++){
				if(Character.isLetter(regnr.charAt(i))){
					return false;
				}
			}
		}
		return true;
	}
	
	public char getFuelType(){
		return fuelType;
	}
	
	public String getRegistrationNumber(){
		return regnr;
	}
	public void setRegistrationNumber(String new_regnr){
		if (! check_regnr(new_regnr)){
			throw new IllegalArgumentException("Illegal plate input");
		}
		regnr=new_regnr;
	}
	public char getVehicleType(){
		return vehicleType;
	}
	public static void main(String[] args) {
		Vehicle test = new Vehicle('M','E',"EK1234");
	}
		
}


