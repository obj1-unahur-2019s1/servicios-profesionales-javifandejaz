import universidad.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


class ProfesionalVinculado {
	var universidad
	
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{universidad.provincia()} }
	
	method honorariosPorHora() { return universidad.honorarios() }
}


class ProfesionalLibre {
	var universidad
	var provincias = #{}
	var honorarios
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return provincias }
	method agregarProvincias(provincia){ provincias.add(provincia) }
	
	method honorariosPorHora() { return honorarios }
	method honorarios(cuanto) { honorarios = cuanto }
}









