import profesionales.*
import universidad.*


class Empresas {
	
	var property profesionales = []
	var property honorarioDeReferencia
	
	method cuantos(universidad){ return profesionales.count({p => p.universidad() == universidad}) }
	
	method caros(){ return profesionales.filter({ p => p.honorariosPorHora() > honorarioDeReferencia }) }
	
	method universidadesformadoras(){ return profesionales.map({p => p.universidad()}).asSet() }
	
	method profesionalMasBarato(){ return profesionales.min({ p => p.honorariosPorHora() }) }
	
	method esDeGenteAcotada(){ return profesionales.all({ p => p.provinciasDondePuedeTrabajar().size() <= 3}) }
}
