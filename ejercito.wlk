import humanos.*

class Ejercito {
  const guerreros = []

  method guerreros() = guerreros

  method agregarPersonaje(personaje) {
    guerreros.add(personaje)
  }

  method invadir(localidad) {
    if(guerreros.sum({g => g.poderOfensivo() > localidad.poderDefensivo() })) {localidad.ciudadano().clearAll() localidad.ciudadano().addAll(guerreros) }
    
  }
}