object registroAbatidosCOD {
	
	const registro = [[43, 20221231], [18, 20230101], [49, 20230105], [62, 20230106], [33, 20230107], [39, 20230108]]
	
	method registroAbatidos(abatidos, dia){
		
		registro.add([abatidos, dia])
	}
	
	method cantidadDeDiasRegistrados(){
		
		registro.size()
	}
	
	method estaVacioElRegistro(){
		
		registro.isEmpty()
	}
	
	method algunDiaAbatio(cantidad){
		
		return registro.any({x => x.get(0) == cantidad})
		
	}
	
	method primerValorDeAbatidos(){
		
		return registro.first({x => x.get(0)})
	}
	
	method ultimoValorDeAbatidos(){
		
		return registro.last({x => x.get(0)})
	}
	
	method maximoValorDeAbatidos(){
		
		return registro.max({x => x.get(0)}).get(0)
	}
	
	method totalAbatidos(){
		
		return registro.sum({x => x.get(0)})
	}
	
	method cantidadDeAbatidosElDia(dia){
		
		return registro.find({x => x.get(1) == dia}).get(0)
	}
	
	// method ultimoValorDeAbatidosConSize(){ no entendi lo que pide
	
	method diasConAbatidosSuperioresA(cuanto){
		
		return registro.count({x => x.get(0) > cuanto})
	}
	
	method valoresDeAbatidosPares(){
		
		return registro.map({x => x.get(0)}).filter({x => x.even()})
	}
	
	method abatidosSumando(cantidad){
		
		return registro.map({x => x.get(0) + cantidad})
	}
	
	method abatidosEsAcotada(n1,n2){
		
		return registro.all({x => x.get(0).beetween(n1,n2)})
	}
	
	method algunDiaAbatioMasDe(cantidad){
		
		return registro.any({x => x.get(0) > cantidad})
	}
	
	method todosLosDiasAbatioMasDe(cantidad){
		
		return registro.all({x => x.get(0) > cantidad })
	}
	
	method cantidadAbatidosMayorALaPrimera(){
		
		return registro.count({x => x.get(0) > self.primerValorDeAbatidos()})
	}
	
		
}