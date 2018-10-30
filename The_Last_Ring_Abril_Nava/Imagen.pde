abstract class Imagen{
 
  PGraphics imagen;
  int seleccion = 0;

  Imagen(int seleccion){
    setseleccion(seleccion);
  }
  protected abstract void crearImagen();
  public abstract void setseleccion(int seleccion);
  
  protected void cargarimagen(String direccion){ 
      PImage tem = loadImage("data/"+direccion);
      imagen.image(tem,0,0,imagen.width,imagen.height); 
  }
  
  
  public void display(int x,int y){
    image(this.imagen,x,y);
  }

  
}