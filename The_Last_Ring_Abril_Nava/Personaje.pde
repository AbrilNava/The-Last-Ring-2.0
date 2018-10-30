class Personaje extends Entidad{

  int enemigos;

  Personaje(int i){ 
    super(width/2,height/2,i);
    this.v = 5;       
  }    
  void displayMundo(){
     ((Avatar)avatar).display(x,y,t);
     
     
     fill(color(0,155,0));
     rect(x,y-t*0.2f,t,t*0.2f);     
     fill(color(0,255,0));
     rect(x,y-t*0.2f,t * vida/vidamax,t*0.2f);
    
     fill(color(255));
     textFont(fuentemundo);       
     textAlign(RIGHT);    
     text(""+vida,x + t,y - t*0.05f);
     
  }

  void displayBatalla(float x,float y,float t){
     ((Avatar)avatar).display(x,y,t);
          
     fill(color(0,155,0));
     rect(x,y+t,t,t*0.2f);     
     fill(color(0,255,0));
     rect(x,y+t,t * vida/vidamax,t*0.2f);
     
     fill(color(255));
     textFont(fuentecombate);       
     textAlign(RIGHT);    
     text(""+vida,x + t,y+t+t*0.15f);
     
     
     fill(color(0,155,155));
     rect(x,y-t*0.2f,t,t*0.2f);     
     fill(color(0,255,255));
     rect(x,y-t*0.2f,t * ataque,t*0.2f);     
     
  }  
  
 
  

}