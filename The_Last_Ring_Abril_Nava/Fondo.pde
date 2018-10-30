class Fondo extends Imagen{

    Fondo(int seleccion){
    super(seleccion);
  }
  protected void crearImagen(){
  
    float w = width,
          h = height;
    imagen = createGraphics((int)w,(int)h);      
    imagen.beginDraw();
    imagen.noStroke();
    cargarimagen(fondoarchivos[seleccion]);    
    imagen.endDraw();    
    
  }
  public void setseleccion(int seleccion){
    this.seleccion = seleccion;
    crearImagen();
  }
  public void display(){
    super.display(0,0);
  }


}