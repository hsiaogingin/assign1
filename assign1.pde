/* please implement your assign1 code in this file. */
PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;
int x1=0;//bg
int x2;//enemy
int y2=floor(random(100,400));//enemy
int x3=floor(random(0,560));//treasure
int y3=floor(random(0,400));//treasure
int w=floor(random(10,200));//blood


void setup () {
  size(640,480) ; 
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  enemy=loadImage("img/enemy.png");
  fighter=loadImage("img/fighter.png");
  treasure=loadImage("img/treasure.png");
  hp=loadImage("img/hp.png");

}




void draw() {
  image(bg1,x1,0);
  image(bg2,x1-640,0);
  if(x1<=640){
    image(bg1,x1,0);
    image(bg2,x1-640,0);
  }
  if(x1>640){
    x1=-640;
  }
  if(x1<0){
    image(bg1,x1,0);
    image(bg2,x1+640,0);
  }
  x1++;  

  //background
  
  image(fighter,580,240);
  //fighter
  
  x2=x2+5;
  x2%=640;
  image(enemy,x2,y2);
  //enemy
  
  image(treasure,x3,y3);
  //tresure
  
  fill(255,0,0);
  rect(23,15,w,23);
  //blood
  
  image(hp,10,10);
  //hp
}
