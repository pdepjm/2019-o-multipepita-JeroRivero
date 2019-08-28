object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz(){
		return  500 < energia && energia < 1000
	}
	
	method cuantoQuiereVolar(){
		var kilometros = energia/5
		if(300 < energia && energia < 400){
			kilometros += 10
		}
		
		if(energia%20==0){
			kilometros+= 15
		}
		return kilometros
	}
	
	method haceLoQueQuieras(){
		if(self.estaCansada()){
			self.come(alpiste)
		}
		else
		if(self.estaFeliz()){
			self.vola(8)
		}
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var mojado = true
	method energiaQueOtorga(){
		if (mojado){
			return 15
		}
		else
		return 20
	}
	
	method mojarse(){
		mojado = true
	}
	
	method secarse(){
		mojado = false
	}
}

object canelones {
	var energia = 20
	var tieneSalsa = false
	var tieneQueso = false
	method energiaQueOtorga(){
		if(tieneSalsa){
			energia += 5
		}
		
		if(tieneQueso){
			energia+=7
		}
		
		return energia
	}
	
	method ponerSalsa(){
		tieneSalsa = true
	}
	
	method sacarSalsa(){
		tieneSalsa = false
	}
	
	method ponerQueso(){
		tieneQueso = true
	}
	
	method sacarQueso(){
		tieneQueso = false
	}
}

object roque {
	method entrenar(ave){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
}