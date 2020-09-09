package stateandbehavior;

public class Location {

	public int x;
	public int y;
	
	public void up(){
		y--;
	}
	public void down(){
		y++;
	}
	public void right(){
		x++;
	}
	public void left(){
		x--;
	}
	public int getX(){
		return x;
	}
	public int getY(){
		return y;
	}
	public String toString(){
		return String.valueOf(getX())+String.valueOf(getY());
	}
	public static void main(String[] args) {
		Location test = new Location();
		test.right();
		test.up();
		test.right();
		test.down();
		test.down();
		test.left();
		System.out.println(test.toString());
	}
}
	