class battleSeq{
  //runs the battle sequence
  //incomplete
  void battleSeq(Monster a, Monster b){
    //randomly decides which Monster will move first
    if(Math.random() < .5){
      Monster temp = a;
      a = b;
      b = temp;
    }
      
  }
}
