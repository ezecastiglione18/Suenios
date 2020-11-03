object realista{
	method elSuenioMasPreciado(suenios){
		return suenios.max( {suenio => suenio.felicidonios()} )
	}
}

object alocado{
	method elSuenioMasPreciado(suenios){
		return suenios.anyOne()
	}
}

object obsesivo{
	method elSuenioMasPreciado(suenios){
		return suenios.head()
	}
}