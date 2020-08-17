class Button{
float wid=0,ht=0;
float round=0;
String name="Button";
float x,y;
float clr=0;
Button(float w,float h,float r,String nm){
  this.wid=w; this.ht=h; this.round=r; this.name=nm;
}
Button(float w,float h,float r){
  this.wid=w; this.ht=h; this.round=r;
}
Button(float w,float h){
  this.wid=w; this.ht=h;
}
void display(float x1,float y1,float c){
  this.x=x1; this.y=y1; this.clr=c;
  fill(this.clr); rect(this.x,this.y,this.wid,this.ht,this.round);
  fill(255); textSize(wid*0.25); textAlign(CENTER,CENTER); 
  text(name,x+wid/2,y+ht/2-wid*0.25/7); 
}
void display(float x1,float y1){
  this.x=x1; this.y=y1;
  fill(this.clr); rect(this.x,this.y,this.wid,this.ht,this.round);
  fill(255); textSize(wid*0.25); textAlign(CENTER,CENTER); 
  text(name,x+wid/2,y+ht/2-wid*0.25/7); 
 
}
boolean clickUpdate(){
  if((mouseX>this.x&&mouseX<this.x+wid&&mouseY>this.y&&mouseY<this.y+ht)&&(mousePressed==true)) {display(this.x,this.y,this.clr+100); return true;}
  else return false;
}

}
