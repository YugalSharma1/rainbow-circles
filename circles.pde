Button plus,minus;
float dia[]={0,0,0,0,0,0,0};
float inc=2;
float acc=0;
float maxdia=0;
float hue[]={0,0,0,0,0,0,0};
float border=50;
int i;
float bcorrection=40;
int num=7;
void setup()
{ 
  size(700,700);
  colorMode(HSB,360,100,100,10); 
  maxdia=sqrt(pow(width,2)+pow(height,2))+bcorrection;
  for(i=0;i<num-1;i++){
    dia[i]=maxdia*(num-(i+1))/num;
  }
  dia[num-1]=0;
 
  plus=new Button(40,40,5,"+");
  minus=new Button(40,40,5,"-");

  
}
void draw()
{ 
  background(360);

  strokeWeight(border);
  for(i=0;i<num;i++){
  hue[i]=(dia[i]-5)*360/maxdia;
  stroke(hue[i],81,78,9); noFill();  
  if(dia[i]<=maxdia) circle(width/2,height/2,dia[i]);  else dia[i]=0;
  dia[i]+=inc;
  }
  inc+=acc;
  noStroke();  
  minus.display(width/2-plus.wid-10,600,0);
  plus.display(width/2+10,600,0);
  if(plus.clickUpdate()){inc+=0.1;}
  if(minus.clickUpdate()){inc-=0.1;}
}
