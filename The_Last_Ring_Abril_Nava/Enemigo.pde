class Enemigo extends Entidad{

  public float []tiempos = {1,10}; 
  public float tiempo,t0;
  
  Enemigo(float x,float y,int i){
    super(x,y,i);    
    this.v = 8;       
  }    
  void movimiento(){
  
    super.movimiento();
    
    if((millis()-t0)/1000 > tiempo){
        int rnx = int(random(0,3)),
            rny = int(random(0,3));
    
        if(rnx == 0){
          detenerse(0);
          detenerse(1);
        }
        else if(rnx == 1)
          moverse(0);
        else if(rnx == 2)
          moverse(1);

        if(rny == 0){
          detenerse(2);
          detenerse(3);
        }
        else if(rny == 1)
          moverse(2);
        else if(rny == 2)
          moverse(3);
          
        t0 = millis();
        tiempo = random(tiempos[0],tiempos[1]);
    
    }
  
  }
  
   
  void displayMundo(){
      ((Avatar)avatar).display(x,y,t);
     
     
     fill(color(155,0,0));
     rect(x,y-t*0.2f,t,t*0.2f);     
     fill(color(255,0,0));
     rect(x,y-t*0.2f,t * vida/vidamax,t*0.2f);
     
     fill(color(255));
     textFont(fuentemundo);       
     textAlign(RIGHT);    
     text(""+vida,x + t,y - t*0.05f);
     
  }  
  
  void displayBatalla(float x,float y,float t){
      ((Avatar)avatar).display(x,y,t);
         
     fill(color(155,0,0));
     rect(x,y+t,t,t*0.2f);     
     fill(color(255,0,0));
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