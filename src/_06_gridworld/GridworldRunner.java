package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class GridworldRunner {
	public static void main(String[] args) {
		Random r = new Random();
		
	World w = new World();
	Bug b1 = new Bug();
	Bug b2 = new Bug(Color.BLUE);
	Location l1 = new Location(4,7);
	Location l2 = new Location(r.nextInt(10),r.nextInt(10));
	Location l3 = new Location(4,6);
	Location l4 = new Location(4,8);
	for(int row=0; row<10; row++ ) {
	for(int col = 0; col<10; col++) {
		Location l5 = new Location(row,col);
		w.add(l5, new Flower());
	}
	}
	Flower f1 = new Flower();
	Flower f2 = new Flower();
	w.add(l1, b1);
	w.add(l2, b2);
	w.add(l3, f1);
	w.add(l4, f2);
	b2.turn();
	b2.turn();
	w.show();
	}
}


