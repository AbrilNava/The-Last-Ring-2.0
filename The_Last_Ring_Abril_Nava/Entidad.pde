

class Entidad{

  float x , y,
        vx,vy;
  float v;        
  float t;
  float vida,vidamax;
  float ataque;
  Imagen avatar;  

  public float []tiempos = {1,10}; 
  public float tiempo,t0;
  
  Entidad(float x,float y,int i){    
    this.x = x;
    this.y = y;
    this.v = 8;   
    this.avatar = new Avatar(i);
    this.t = 96;
    ataque = 0;
    setseleccion(i);
  }    
  void movimiento(){
  
    x += vx;
    y += vy; 
  
    this.x = constrain(this.x,0,width  - this.t);
    this.y = constrain(this.y,0,height - this.t);
  
    vida = max(vida,0);
    vida = min(vida,vidamax);
  
 }
  
   void display(float x,float y,float t){
       ((Avatar)avatar).display(x,y,t);
  }
  void displayMundo(){
      display(x,y,t);
     
     
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
  
     display(x,y,t);     
     
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
     fill(color(79,23,105));
     rect(x,y-t*0.2f,t * ataque,t*0.2f);     
     
     
  } 
  
  void moverse(int n_){
    switch(n_){
      case 0:
        this.vy =- this.v;
      break;
      case 1:
        this.vx = this.v;
      break;
      case 2:
        this.vx = -this.v;
      break;
      case 3:
        this.vy = this.v;
      break;
    }
  }
  void detenerse(){
    this.vx=this.vy=0;
  }
  void detenerse(int n_){
    
    switch(n_){
      case 0:
        if(this.vy < 0)
          this.vy = 0;
      break;
      case 1:
        if(this.vx > 0)
          this.vx = 0;
      break;
      case 2:
        if(this.vx < 0)
          this.vx = 0;
      break;
      case 3:
        if(this.vy > 0)
          this.vy = 0;
      break;
    }
  }
  
  void setseleccion(int seleccion){
    avatar.setseleccion(seleccion);
 
    vidamax = ((Avatar)avatar).getvidamax();
    vida = vidamax;
    
  }
  boolean modataque(float mod){
    ataque+=mod*((Avatar)avatar).getganancia();
    boolean atacar = ataque >= 1;    
    if(atacar)
      ataque = 0;
    return atacar;
  }  
   boolean colision(float x,float y,float t){
     return ((x+t) > this.x) && (x < (this.x+this.t)) && ((y+t) > this.y) && (y < (this.y+this.t));
   } 
  
  
}
