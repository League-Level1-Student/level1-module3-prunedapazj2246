package _05_netflix;

public class MovieRunner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Movie m1 = new Movie("Joaquin's Mom",500000000);
Movie m2 = new Movie("Twilight", 3);
Movie m3 = new Movie("Messi: birth of a legend", 100);
Movie m4 = new Movie("Rami", -1);
Movie m5 = new Movie("The Lemon: A Documentary About Lemons",20);
NetflixQueue nq1 = new NetflixQueue();

System.out.println(m1.getTicketPrice());
System.out.println(m2.getTicketPrice());
System.out.println(m3.getTicketPrice());
System.out.println(m4.getTicketPrice());
System.out.println(m5.getTicketPrice());
nq1.addMovie(m1);
nq1.addMovie(m2);
nq1.addMovie(m3);
nq1.addMovie(m4);
nq1.addMovie(m5);
nq1.getBestMovie();
nq1.printMovies();
System.out.println("The best movie is" + nq1.getMovie(0));
System.out.println("The second best movie is" + nq1.getMovie(1));
	}

}
