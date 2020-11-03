class Persona{
	var edad
	
	var suenios = []
	
	var carrerasCompletadas = []
	var carrerasQueQuiereEstudiar = []
	
	var plataSoniada
	
	var lugaresVisitados = []
	
	var cantidadHijos
	
	var nivelFelicidad
	
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
}
