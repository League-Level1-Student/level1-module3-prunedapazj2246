package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
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
	w.add(l1, b1);
	w.add(l2, b2);
	b2.turn();
	b2.turn();
	w.show();
	}
}


