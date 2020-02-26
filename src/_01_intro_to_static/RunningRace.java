package _01_intro_to_static;

public class RunningRace {

    static int nextBibNumber;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber;

RunningRace (String name, int speed,int bidNumber){
    this.name = name;
    this.speed = speed;
    this.bibNumber=bidNumber;
}

public static void main(String[] args) {
   RunningRace ym = new RunningRace("Your Mom",100,1);
   RunningRace bf = new RunningRace("Blob Fish",12,2);
   System.out.println(ym.name + ym.bibNumber + ym.raceLocation);
   System.out.println(bf.name+bf.bibNumber+bf.raceLocation);//create two athletes      //print their names, bibNumbers, and the location of their race. 
}
}

