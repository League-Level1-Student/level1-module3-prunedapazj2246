package _02_backpack;

public class BackpackRunner {
	public static void main(String[] args) {
		new Backpack().packAndCheck();
		Backpack b = new Backpack();
		Pencil p = new Pencil();
		Ruler r = new Ruler();
		Textbook t = new Textbook();
		b.putInBackpack(p);
		b.putInBackpack(r);
		b.putInBackpack(t);
		b.goToSchool();
		p.write("YOUR MOOOOOOOOOM");
		r.measure();
		t.read();
		
	}
}
