class Personaje{
  const fuerza
  const inteligencia 
  var mascota = null
  var rol 

  method rol() = rol
  method fuerza() = fuerza
  method inteligencia() = inteligencia
  method mascota() = mascota

  
  method nuevaMascota(animal) {
   mascota = animal 
  }

  method cambiarRol(nuevoRol) {
    rol = nuevoRol  
    } 
  method poderOfensivo() = fuerza* 10 + rol.poderOfensivo(self)

  method esInteligente() = false
  method esGroso() = self.esInteligente() || rol.condicionGroso(self)
}


class Mascota {
  const fuerza 
  const edad 
  const garras

  method fuerza() = fuerza 
  method garras() = garras
  method edad() = edad

  method potencialOfensivo() = if(garras) fuerza*2 else fuerza
  method esLongevo() = edad > 10
  
}

class Humano inherits Personaje {
  override  method esInteligente() = inteligencia > 50

}
class Orcos inherits Personaje {
  override method poderOfensivo() = if(rol == brujo)(fuerza* 10)*1.10 else fuerza* 10
}

object guerrero {
  method poderOfensivo(personaje) = 100
  method condicionGroso(personaje) = personaje.fuerza() > 50
}
object cazador {

  method poderOfensivo(personaje) = personaje.Mascota().potencialOfensivo()
  method condicionGroso(personaje) = personaje.mascota().esLongevo()
}
object brujo {
  method poderOfensivo(personaje) = 0
  method condicionGroso(personaje) = true


}