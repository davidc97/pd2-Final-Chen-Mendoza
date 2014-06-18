class World1 extends World {
  World1(PostOffice po, HCamera cam){
    super(po,cam);
  }
  
  void setup(){
    player = new Player (0,60);
    println("player created");
    currentWorld.register(player,true);
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> be1e265c5623fdb15988227e8c494b15d34e434d
