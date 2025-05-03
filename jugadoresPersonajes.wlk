import armasYElementos.*


object luisa {
    var personaActivo = floki
    
    method aparece(unElemento) {
        personaActivo.encontrarElemento(unElemento)
    }

    method cambiarDePersona(unPersonaje) {
      personaActivo = unPersonaje
    }
}

object floki {
    var armaActual = ballesta

    method cambiarDeArmaA_(unArma){
        armaActual = unArma
    }

    method encontrarElemento(unElemento) {
        if(armaActual.estaCargada()){
        unElemento.recibirAtaque(armaActual.potencia())
        armaActual.disparar()
        }
    }
}

object mario {
    var valorRecolectado = 0
    var ultimoElementoEncontrado = 0

    method aumentarValor(unValor) {
        valorRecolectado += unValor
    }

    method encontrarElemento(unElemento) {
        self.aumentarValor(unElemento.compensar())
        unElemento.recibirTrabajo()
        ultimoElementoEncontrado = unElemento
    }

    method esFeliz() {
        return valorRecolectado >= 50
        || ultimoElementoEncontrado.altura() >= 10
    }
}
        