class ArmaDeFilo{
  const filo
  const longitud
  method valoerDeAtaque() = filo * longitud

}

class ArmaContundente{
  method valorDeAtaque() = peso
  const peso
}

object casco {
  method armadura(gladiador) = 10
}

object escudo {
  method armadura(gladiador) = 5 + gladiador.destreza()
}

class Gladiador{
  var vida = 100
  method atacar(atacado ){
    atacado.recibirDaño(self)
  }
  method recibirDaño(atacante){
    vida = vida - (atacante.poderDeAtaque() - self.defensa())
  }
  method defensa()
  method pelearCon(gladiador){
    self.atacar(gladiador)
    gladiador.atacar(self)
  }

}

class Mirmillones inherits Gladiador {
  var arma
  var armadura
  var property fuerza
  method armadura() = 15 
  method cambiarArmadura (otraArmadura){armadura = otraArmadura}
  method poderDeAtaque() = fuerza + arma.valorDeAtaque()
  override method defensa() = armadura.valorArmadura(self) + self.destreza
  method crearGrupo(gladiador){
    new Grupo(nombre ="algo", mienbros = [self.gladiador])
  }
}

class Dimachaerus inherits Gladiador{
  const arma = []
  var destreza
  method fuerza() = 10
  override method atacar(atacado){
    super(atacado)
    destreza += 1
  }
  override method defensa() = destreza / 2
  method creaGrupo() {
    const fuerzaGrupo = self.poderDeAtaque() + gladiador.poderDeAtaque()
    return new Grupo (nombre = "D2" + fuerzaGrupo, mienbros = [self.gladiador])
  }
} 

class Grupo{
  const nombre
  var peleas = 0 
  const miembros = []

  method agregarMienbro(gladiador){miembros.add(gladiador)}
  
}