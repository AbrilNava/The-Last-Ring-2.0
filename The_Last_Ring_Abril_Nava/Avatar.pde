class Avatar extends Imagen{
    
  PersonajeInformacion informacion;
  
  Avatar(int seleccion){
    super(seleccion);    
  }  
  protected void crearImagen(){  
    imagen = createGraphics(100,100);    
    imagen.beginDraw();
    imagen.noStroke();    
     cargarimagen(informacion.archivo);
    imagen.endDraw();
  }
  
  void display(float x,float y,float t){
      image(imagen,x,y,t,t);              
  }
  public void setseleccion(int seleccion){
    this.seleccion = seleccion;
    informacion = new PersonajeInformacion();
    switch(seleccion){
    
      case 0:
      informacion = new Aragorn();
      break;
      case 1:
      informacion = new Balrog();
      break;
      case 2:
      informacion = new Frodo();
      break;
      case 3:
      informacion = new Gandalf();
      break;
      case 4:
      informacion = new Nazgul();
      break;
      case 5:
      informacion = new Sauron();
      break;      
      
    }
    
    crearImagen();
  }
  float getvidamax(){
    return informacion.vidamax;
  }
  float getganancia(){
    return informacion.ganancia;
  }
  
}