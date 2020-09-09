package interfaces;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Ship {
	
	private ShipType shipType;
	private int x;
	private int y;
	

	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	public ShipType getShipType() {
		return shipType;
	}
	public void setShipType(ShipType shipType) {
		this.shipType = shipType;
	}
	public List<List<Integer>> coordinates(){
		int new_x=x;
		int new_y=y;
		List<List<Integer>> xy = new ArrayList<List<Integer>>();
		int width = getShipType().getWidth();
		int height =getShipType().getHeight();
		
		for (int i = 0; i < width; i++) {
			new_y=y;
			for (int j = 0; j < height; j++) {
				List<Integer> abc=Arrays.asList(new_x,new_y);
				xy.add(abc);
				new_y++;
			}
			new_x++;
			
		}
		return xy;
	}

}
