package objectstructures;

public class Partner {
	
	String navn;
	Partner partner;
	
	public Partner(String navn){
		this.navn=navn;
	}
	
	public String getName(){
		return navn;
	}
	public Partner getPartner(){
		if (partner==null){
			return null;
		}
		else{
			return partner;
		}
	}
	public void setPartner(Partner partner){
		if (partner==null){
			this.partner.partner=null;
			this.partner=null;
		}
		else if(partner.partner==null && this.partner==null){
			this.partner=partner;
			partner.partner=this;
		}
		else if(partner.partner==null && this.partner!=null){
			this.partner.partner=null;
			this.partner=partner;
			partner.partner=this;
		}
		else if(partner.partner!=null && this.partner!=null){
			this.partner.partner=null;
			partner.partner.partner=null;
			this.partner=partner;
			partner.partner=this;
		}
	}
	
	public String toString(){
		
		String outStr;
		if(partner==null){
			outStr="Navn;"+navn+"\nPartner; ingenPartner";
		}
		else{
			outStr="Navn:"+navn+"\nPartner:"+partner.navn;
			System.out.println("Hei");
		}
		
		return outStr;
	}
	
	public static void main(String[] args) {
		Partner p1 = new Partner("Mordi");
		Partner p2 = new Partner("lolsibob");
		p1.setPartner(p2);
		System.out.println(p1);
	}

}
