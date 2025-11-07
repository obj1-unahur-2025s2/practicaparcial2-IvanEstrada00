class Localidad {
    const ciudadano = []  
    

    method ciudadano() =ciudadano


    method agregarCiudadano(personaje) {
      ciudadano.add(personaje)
    }
    method retirarCiudadano(personaje) {
      ciudadano.remove(personaje)
    }

    method poderDefensivo() = ciudadano.sum({c=> c.poderOfensivo()})
}

class Aldea inherits Localidad{
    const guerrerosMasFuertes = [] 
    const guuerreros = [] 
    const tamaño  
      

    override method agregarCiudadano(personaje) {
        if(ciudadano.size()<tamaño) super(personaje)
        else self.losDiezGuerrerosMasFuertes()
    }
    method losDiezGuerrerosMasFuertes() {
    guerrerosMasFuertes.addAll(ciudadano.sortBy({p => p.poderOfensivo()}).take(10)) 
    }
    
  
}
class Ciudad inherits Localidad{
    override method poderDefensivo() = super() + 300
    
  
}