object agrupacionSuperheroica {
	var integrantes = #{}

	method agregarSuperheroe(unSuperheroe) { 
		integrantes.add(unSuperheroe) 
	}

	method echarSuperheroe(unSuperheroe) { 
		integrantes.remove(unSuperheroe) 
	}

	method cantidadDeIntegrantes() = integrantes.size()

	method integrantesPoderosos() =
    	integrantes.filter({ integrante => integrante.esPoderoso() })
 
	method identidadesSecretas() =
   		integrantes.map({ integrante => integrante.identidadSecreta() })

	method equipoMediocre() {
	    var noPoderosos = integrantes.filter({ integrante => !integrante.esPoderoso() })
	    return noPoderosos.size() > (integrantes.size() / 2)
	}	
	
	method integrantes() {
		return integrantes
	}
}

object batman {
   var identidadSecreta = "Bruce Wayne"

   method identidadSecreta() = identidadSecreta

   method identidadSecreta(unaIdentidadSecreta) {
		identidadSecreta = unaIdentidadSecreta
   }

   method esPoderoso() = true
}

object superman {
    var identidadSecreta = "Clark Kent"
    var celulasSolares = 30000

    method identidadSecreta() {
    	identidadSecreta = "TU VIEJA"
    	return identidadSecreta
    }
		
    method identidadSecreta(unaIdentidadSecreta) {
		identidadSecreta = unaIdentidadSecreta    	
    }

    method esPoderoso() {
    	return celulasSolares > 20000
    } 
	
	method celulasSolares() = celulasSolares
}

object elZorro {

	var identidadSecreta = "don Diego de la Vega"
	
	var habilidades = ["Ser un capo de la espada", "Tenerla clara con el latigo", "Andar piola a caballo", "Entender a un mudo sin usar signos"]

	method identidadSecreta() =
		identidadSecreta

	method identidadSecreta(unaIdentidadSecreta){
		identidadSecreta = unaIdentidadSecreta		
	}


	method esPoderoso() {
		var habilidadesPoderosas = ["volar", "super fuerza", "super rapido"]
		return habilidades.any({habilidad => habilidadesPoderosas.contains(habilidad)})
	}

	method aprenderHabilidad(unaHabilidad) {
		habilidades.add(unaHabilidad)
	}
}
    