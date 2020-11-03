class Persona{
	var edad
	
	var suenios = []
	
	var carrerasCompletadas = []
	var carrerasQueQuiereEstudiar = []
	
	var plataSoniada
	
	var lugaresVisitados = []
	
	var cantidadHijos
	
	var nivelFelicidad
	
	var tipoPersona
	
	//PUNTO 3
	method cumplirSuenioMasPreciado(){
		const suenioACumplir = tipoPersona.elSuenioMasPreciado(self.sueniosPendientes())
		self.cumplir(suenioACumplir)
	}
	
	//PUNTO 1
	method cumplir(unSuenio){		
		if(!self.sueniosPendientes().contains(unSuenio)){
			throw new Exception(message = "El sueño no se puede cumplir")
		}
		unSuenio.cumplirseA(self)
	}
	
	method sueniosPendientes(){
		return suenios.filter( {suenio => suenio.estaPendiente()} )
	}
	
	method subirNivelFelicidad(unaCantidad){
		nivelFelicidad += unaCantidad
	}
	
	method tieneHijos() = return cantidadHijos > 0
	
	method sumarHijos(unaCant){
		cantidadHijos += unaCant
	}
	
	method viajarA(unDestino){
		lugaresVisitados.add(unDestino)
	}
	
	method puedeRecibirseDe(unaCarrera){
		return !carrerasCompletadas.contains(unaCarrera) && carrerasQueQuiereEstudiar.contains(unaCarrera)
	}
	
	method seRecibio(unaCarrera){
		carrerasCompletadas.add(unaCarrera)
	}
	
	//PUNTO 4
	method esFeliz(){
		return nivelFelicidad > self.sueniosPendientes().sum( {suenio => suenio.felicidonios()} )
	}
	
	//PUNTO 5
	method esAmbiciosa(){
		return self.sueniosAmbiciosos().size() > 3
	}
	
	method sueniosAmbiciosos(){
		return suenios.filter( {suenio => suenio.esAmbicioso()} )
	}
}
