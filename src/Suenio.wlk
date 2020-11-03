class Suenio {
	 var cumplido = false 
	 var property felicidonios
	 
	 method estaPendiente() = !cumplido
	 
	 method cumplirseA(unaPersona){
	 	self.validar(unaPersona)
	 	self.realizar(unaPersona)
	 	self.cumplir()
	 	unaPersona.sumarNivelFelicidad(felicidonios)
	 }
	 
	 method cumplir(){
	 	cumplido = true
	 }
	method realizar(unaPersona) {
		 
	}
	method validar(unaPersona) {
		
	}	
	
	method esAmbicioso() = return felicidonios > 100
}

class AdoptarHijo inherits Suenio{
	const hijosAdoptados
	
	override method validar(unaPersona){
		if(unaPersona.tieneHijos()){
			throw new Exception(message = "No se puede adoptar si se tiene un hijo")
		}
	}
	
	override method realizar(unaPersona){
		unaPersona.sumarHijos(hijosAdoptados)
	}
}

class Viajar inherits Suenio{
	var destino
	
	override method realizar(unaPersona){
		unaPersona.viajarA(destino)
	}
}

class Recibirse inherits Suenio{
	var carrera
	
	override method validar(unaPersona){
		if(!unaPersona.puedeRecibirseDe(carrera)){
			throw new Exception(message = "No se puede recibir de esta carrera")
		}
	}
	
	override method realizar(unaPersona){
		unaPersona.seRecibio(carrera)
	}
}

//PUNTO 2
class SuenioMultiple inherits Suenio{
	var suenios = []
	
	override method felicidonios() = suenios.sum { suenio => suenio.felicidonios() } 
	// los sueños múltiples deben sumar los felicidonios de sus sueños

	override method validar(persona) {
		suenios.forEach( {suenio => suenio.validar(persona)} )
	}
	
	override method realizar(persona) {
		suenios.forEach( {suenio => suenio.realizar(persona)} )
	}
}
