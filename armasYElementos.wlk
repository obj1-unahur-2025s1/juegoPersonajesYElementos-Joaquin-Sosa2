object ballesta {
    var flechas = 10

    method disparar(){
        flechas -= 1
    }
    method estaCargada() {
        flechas > 0
    }

    method potencia() = 4
}

object jabalina {
    var estaCargada = true

    method disparar(){
        estaCargada = false
    }
    method estaCargada() = estaCargada

    method potencia() = 30
}



object castillo {
    var defensa = 150

    method recibirAtaque(unAtaque){
        defensa -= unAtaque 
    }

    method recibirTrabajo() {
        defensa = (defensa + 20).min(200)
    }

    method compensar() = defensa / 5

    method altura() = 20
}

object aurora {
    var estaViva = true

    method recibirAtaque(unAtaque){
        if(unAtaque >= 10) estaViva = false
    }

    method recibirTrabajo(){}

    method compensar() = 15

    method altura() = 1
}

object tipa {
    var altura = 8
    
    method recibirAtaque(){}

    method recibirTrabajo() {
        altura += 1
    }
    
    method compensar() = altura * 2

    method altura() = altura
}
