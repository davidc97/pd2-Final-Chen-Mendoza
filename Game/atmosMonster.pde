//flying type monster
class atmosMonster extends Monster{
  String type;
  
  //constructor  
  atmosMonster(float x, float y, int a, int d, int h, int l, int e, String n, String t){
    super(x, y, a, d, h, l, e, n);
    type = t;
  }
}
  
