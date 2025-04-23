!classDefinition: #PenalesTest category: #'IS1-2025-1C-1erParcial'!
TestCase subclass: #PenalesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test01DelanteroNoPuedeApuntarHaciaAfueraDelPaloIzquierdo
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: -1@0 arqueroSeLanzaEnDirección: 0@0.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penal direccionTiroFueraDeRango equals: error messageText.
			self deny: juegoPenales varEsGol			 ]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test02DelanteroNoPuedeApuntarHaciaAfueraDelPaloDerecho
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 3@0 arqueroSeLanzaEnDirección: 0@0.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penal direccionTiroFueraDeRango equals: error messageText.
			self deny: juegoPenales varEsGol ]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test03DelanteroNoPuedeApuntarHaciaAbajoDelArco
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@-1 arqueroSeLanzaEnDirección: 0@0.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penal direccionTiroFueraDeRango equals: error messageText.
			self deny: juegoPenales varEsGol ]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test04DelanteroNoPuedeApuntarHaciaArribaDelTravesaño
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@3 arqueroSeLanzaEnDirección: 0@0.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penal direccionTiroFueraDeRango equals: error messageText.
			self deny: juegoPenales varEsGol ]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test05ArqueroNoPuedePasarseDelPaloIzquierdo
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: -1@0.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penal direccionArqueroFueraDeRango equals: error messageText.
			self deny: juegoPenales varEsGol ]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test06ArqueroNoPuedePasarseDelPaloDerecho
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 3@0.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penal direccionArqueroFueraDeRango equals: error messageText.
			self deny: juegoPenales varEsGol ]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test07ArqueroNoPuedeMeterseAbajoDeLaTierra
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 0@-1.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penal direccionArqueroFueraDeRango equals: error messageText.
			self deny: juegoPenales varEsGol ]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test08ArqueroNoPuedeSaltarPorEncimaDelTravesaño
	
	| arquero delantero juegoPenales pelota |
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	self 
		should: [ juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 0@3.] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Penal direccionArqueroFueraDeRango equals: error messageText.
			self deny: juegoPenales varEsGol ]
	! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test09DireccionesDiferentesGolDelantero
	
	| arquero delantero juegoPenales pelota |
	
	"Caso general del juego..."
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 0@1.
	
	self assert: juegoPenales varEsGol.
	self assert: 2@2 equals: juegoPenales varDireccionRemateResultante
	"varXXXX es por VAR, de 'Video Assistant Referee'"! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test10MismasDireccionesInsuficienteFuerzaGolDelantero
	
	| arquero delantero juegoPenales pelota |
	
	"Caso general del juego..."
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 10.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 2@2.
	
	self assert: juegoPenales varEsGol.
	self assert: 2@2 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test11MismasDireccionesSuficienteFuerzaAtajaArquero
	
	| arquero delantero juegoPenales pelota |
	
	"Caso general del juego..."
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 100.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 2@2.
	
	self deny: juegoPenales varEsGol.
	self assert: 2@2 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test12DelanteroQueTiraAColocarPierde50PorcFuerza
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"(delantero sacrificia potencia para ganar mayor precisión)"
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 50.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 2@2.
	
	self deny: juegoPenales varEsGol.
	self assert: 2@2 equals: juegoPenales varDireccionRemateResultante.
	self assert: 50 equals: juegoPenales varFuerzaResultanteDeTiro.! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test13ArqueroQueEligeAntesDeTiroVsJabulaniAColocarSuma50PorcFuerzaExtra
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"El Arquero que elige donde tirarse antes de un tiro a colocar de jabulani gana 50% de su fuerza extra..."
	"(el arquero llega más cómodo y aprovecha mejor su fuerza)"
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 34.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@2 arqueroSeLanzaEnDirección: 0@2.
	
	self deny: juegoPenales varEsGol.
	self assert: 0@2 equals: juegoPenales varDireccionRemateResultante.
	self assert: 50 equals: juegoPenales varFuerzaResultanteDeTiro.
	self assert: 51 equals: juegoPenales varFuerzaResultanteDeAtajada.! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test14FuerzaInsuficienteDeArqueroQueEligeAntesDeTiroVsJabulaniAColocar
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"El Arquero que elige adonde tirarse antes de un tiro a colocar de jabulani gana 50% de su fuerza extra..."
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 32.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@2 arqueroSeLanzaEnDirección: 0@2.
	
	self assert: juegoPenales varEsGol.
	self assert: 0@2 equals: juegoPenales varDireccionRemateResultante.
	self assert: 50 equals: juegoPenales varFuerzaResultanteDeTiro.
	self assert: 48 equals: juegoPenales varFuerzaResultanteDeAtajada.! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test15ArqueroQueEsperaPorTiroYSeAdelantaVsJabulaniAColocarIgnoraAlturaTiro
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"El Arquero que espera y se adelanta ante un tiro de jabulani a colocar ignora la 2da coordenada (altura) al atajar..."	
	"(al adelanterse encara la pelota antes de que su elevación se transforme en un problema)"
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero  esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 50.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@2 arqueroSeLanzaEnDirección: 0@0.
	
	self deny: juegoPenales varEsGol.
	self assert: 0@2 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test16PelotaPlayeraUsadaAColocarLeHacePerder20PorcFuerzaExtraAlDelantero
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"La humilde pelota playera le hace perder un 20% de fuerza adicional al delantero que la use para colocar... (no importa el arquero)"
	"(no debería ser reglamentaria... al menos no es de trapo, nos responden)"
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 1.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 1@2 arqueroSeLanzaEnDirección: 1@2.
	
	self assert: juegoPenales varEsGol.
	self assert: 1@2 equals: juegoPenales varDireccionRemateResultante.
	self assert: 40 equals: juegoPenales varFuerzaResultanteDeTiro! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test17ArqueroQueEligeAntesDeTiroVsPlayeraAColocarSuma100PorcFuerzaExtra
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"La humilde pelota playera le hace perder un 20% adicional de fuerza al delantero que la use para colocar... (no importa el arquero)"
	"Arquero que elige donde lanzarse antes de un remate de una pelota playera lenta a colocar, gana un 100% de su fuerza extra..."
	"(a quien madruga...)"
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 20.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 0@0.
	
	self deny: juegoPenales varEsGol.
	self assert: 0@0 equals: juegoPenales varDireccionRemateResultante.
	self assert: 40 equals: juegoPenales varFuerzaResultanteDeTiro.
	self assert: 40 equals: juegoPenales varFuerzaResultanteDeAtajada! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test18FuerzaInsuficienteDeArqueroQueEligeAntesDeTiroVsPlayeraAColocar
	
	| arquero delantero juegoPenales pelota |
	
	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	"La humilde pelota playera le hace perder un 20% adicional de fuerza al delantero que la use para colocar... (no importa el arquero)"
	"Arquero que elige donde lanzarse antes de un remate de una pelota playera lenta a colocar, gana un 100% de su fuerza extra..."
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 19.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 0@0.
	
	self assert: juegoPenales varEsGol.
	self assert: 0@0 equals: juegoPenales varDireccionRemateResultante.
	self assert: 40 equals: juegoPenales varFuerzaResultanteDeTiro.
	self assert: 38 equals: juegoPenales varFuerzaResultanteDeAtajada! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test19ArqueroQueEsperaPorTiroYSeAdelantaVsPlayeraAColocarEsDescubiertoYPuntoParaDelantero
	
	| arquero delantero juegoPenales pelota |
	
	"Arquero que espera y se adelanta ante tiro con la lenta pelota playera, siempre es descubierto por el Árbitro, y el punto se le otorga al Delantero..."
	"(lo que servía de ventaja ante la Jabulani rápida, acá es tan obvio por lo que tarda en llegar la pelota al arco, que marchás preso...)"
	
	delantero := Delantero decideTirarAColocarSuFuerzaBaseEs: 100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero  esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 200.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 0@0.
	
	self assert: juegoPenales varEsGol.
	self assert: 0@0 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test20DelanteroTiraAMatarAlAnguloInferiorIzquierdoLaAlturaDelTiroPasaAMedio
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"(tirar a matar no es tan preciso como tirar a colocar, hay desvios de altura. Sin embargo se usa el 100% de fuerza del jugador)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 0@0.
	
	self assert: 0@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test21DelanteroTiraAMatarAlAnguloSuperiorIzquierdoLaAlturaDelTiroPasaAMedio
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"(tirar a matar no es tan preciso como tirar a colocar, hay desvios de altura. Sin embargo se usa el 100% de fuerza del jugador)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@2 arqueroSeLanzaEnDirección: 0@2.
	
	self assert: 0@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test22DelanteroTiraAMatarAlAnguloInferiorDerechoLaAlturaDelTiroPasaAMedio
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"(tirar a matar no es tan preciso como tirar a colocar, hay desvios de altura. Sin embargo se usa el 100% de fuerza del jugador)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@0 arqueroSeLanzaEnDirección: 2@0.
	
	self assert: 2@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test23DelanteroTiraAMatarAlAnguloSuperiorDerechoLaAlturaDelTiroPasaAMedio
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"(tirar a matar no es tan preciso como tirar a colocar, hay desvios de altura. Sin embargo se usa el 100% de fuerza del jugador)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 2@2.
	
	self assert: 2@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test24DelanteroTiraAMatarNoAlAnguloMantieneDireccionTiro
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"(tirar a matar no es tan preciso como tirar a colocar, hay desvios de altura. Sin embargo se usa el 100% de fuerza del jugador)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 1@2 arqueroSeLanzaEnDirección: 1@1.

	self assert: 1@2 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test25DelanteroTiraAMatarUsa100PorcFuerzaBase
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"(tirar a matar no es tan preciso como tirar a colocar, hay desvios de altura. Sin embargo se usa el 100% de fuerza del jugador)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:150.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@0 arqueroSeLanzaEnDirección: 2@0.
	
	self assert: juegoPenales varEsGol.
	self assert: 2@1 equals: juegoPenales varDireccionRemateResultante.
	self assert: 150 equals: juegoPenales varFuerzaResultanteDeTiro! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test26DelanteroTiraAMatarConJabulaniGana20PorcFuerzaExtra
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' el Delantero usa el 100% de su fuerza... (no importa pelota, ni arquero)"
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"Si se tira 'a matar' usando la jabulani rápida, el Delantero gana un 20% de fuerza extra... (no importa arquero)"
	"(Jabulani a matar es la elección de los guerreros Z)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 120.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 2@1.
	
	self deny: juegoPenales varEsGol.
	self assert: 2@1 equals: juegoPenales varDireccionRemateResultante.
	self assert: 120 equals: juegoPenales varFuerzaResultanteDeTiro.! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test27FuerzaInsuficienteDeArqueroQueEligeAntesDeTiroVsJabulaniAMatar
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' el Delantero usa el 100% de su fuerza... (no importa pelota, ni arquero)"
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"Si se tira 'a matar' usando la jabulani rápida, el Delantero gana un 20% de fuerza extra... (no importa arquero)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 119.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 2@1.
	
	self assert: juegoPenales varEsGol.
	self assert: 2@1 equals: juegoPenales varDireccionRemateResultante.
	self assert: 120 equals: juegoPenales varFuerzaResultanteDeTiro.! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test28ArqueroQueEligeAntesDeTiroVsJabulaniAMatarIgnoraAlturaTiro
	
	| arquero delantero juegoPenales pelota |
	
	"El Arquero que elige donde tirarse antes de un tiro de jabulani a matar, ignora la 2da coordenada (altura) al atajar..."		
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@2 arqueroSeLanzaEnDirección: 0@0.
	
	self deny: juegoPenales varEsGol.
	self assert: 0@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test29ArqueroQueEsperaPorTiroYSeAdelantaVsJabulaniAMatarNuncaAtaja
	
	| arquero delantero juegoPenales pelota |
	
	"El Arquero que espera a ver la dirección del remate de una pelota jabulani rápida a matar antes de lanzarse, nunca la ataja sin importar nada, siquiera que se adelantó..."	
	"(su poder era de más de 9000!! era impresionante, no podía moverme, sólo la ví pasar... f )"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota jabulaniSudafricanaRapida.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 200.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 1@1 arqueroSeLanzaEnDirección: 1@1.
	
	self assert: juegoPenales varEsGol.
	self assert: 1@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test30DelanteroQueNoPateaAlAnguloConPlayeraAMatarSuma2AAlturaDeDireccionPelotaAdentro
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' el Delantero usa el 100% de su fuerza... (no importa pelota, ni arquero)"
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"Si se tira 'a matar' usando una pelota playera a una dirección que no es un ángulo, la 2da coordenada del remate (altura) suma 2, es decir sale volando producto de su liviandez (y que quiere retornar al mar). Si la pelota se va fuera del arco, el puntaje va al arquero... (no importa arquero)"
	"(y voló.. y me hizo volar... y yo volé de él...  pero acá por la arbolada... y el voló.. y se estrelló por acá por la pared...)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 1@0 arqueroSeLanzaEnDirección: 1@0.
	
	self assert: juegoPenales varEsGol.
	self assert: 1@2 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test31DelanteroQueNoPateaAlAnguloConPlayeraAMatarSuma2AAlturaDeDireccionPelotaAfuera
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' el Delantero usa el 100% de su fuerza... (no importa pelota, ni arquero)"
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"Si se tira 'a matar' usando una pelota playera a una dirección que no es un ángulo, la 2da coordenada del remate (altura) suma 2, es decir sale volando producto de su liviandez (y que quiere retornar al mar). Si la pelota se va fuera del arco, el puntaje va al arquero... (no importa arquero)"
	"(El caso auspiciado por el Pipita...)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 200.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@1 arqueroSeLanzaEnDirección: 0@0.
	
	self deny: juegoPenales varEsGol.
	self assert: 0@3 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test32ArqueroQueEligeAntesDeTiroVsPlayeraAMatarAlAnguloIgnoraAnchoTiro
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' el Delantero usa el 100% de su fuerza... (no importa pelota, ni arquero)"
	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"	
	"Si el arquero elige donde tirarse antes del tiro a matar de la pelota playera, ignora la 1ra coordenada del remate (ancho) al atajar..."
	"(con agacharse, quedarse parado, o saltar le alcanza...)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 100.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 0@0 arqueroSeLanzaEnDirección: 2@1.
	
	self deny: juegoPenales varEsGol.
	self assert: 0@1 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test33ArqueroQueEligeAntesDeTiroVsPlayeraAMatarNoAlAnguloIgnoraAnchoTiro
	
	| arquero delantero juegoPenales pelota |
	
	"Si se tira 'a matar' el Delantero usa el 100% de su fuerza... (no importa pelota, ni arquero)"
	"Si se tira 'a matar' usando una pelota playera a una dirección que no es un ángulo, la 2da coordenada del remate (altura) suma 2, es decir sale volando producto de su liviandez (y que quiere retornar al mar). Si la pelota se va fuera del arco, el puntaje va al arquero... (no importa arquero)"
	"Si el arquero elige donde tirarse antes del tiro a matar de la pelota playera, ignora la 1ra coordenada del remate (ancho) al atajar..."
	"(con agacharse, quedarse parado, o saltar le alcanza...)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs: 100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero eligeDireccionAntesDeTiroSuFuerzaBaseEs: 100.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 1@0 arqueroSeLanzaEnDirección: 0@2.
	
	self deny: juegoPenales varEsGol.
	self assert: 1@2 equals: juegoPenales varDireccionRemateResultante! !

!PenalesTest methodsFor: 'tests' stamp: 'LL 4/16/2025 16:49:15'!
test34ArqueroQueEsperaPorTiroYSeAdelantaVsPlayeraAMatarSiempreAtaja
	
	| arquero delantero juegoPenales pelota |
	
	"El Arquero que espera y se adelanta ante una pelota playera lenta a matar, siempre la ataja sin importar nada..."	
	"(como la pelota es taaaan lentaaa, el arquero se puede ir a tomar un cafe, verse una serie, volver y aún atajar la pelota habiendose tirado a cualquier lado. Pero igual es más rapida que cuando se la tira a colocar, donde indefectiblemente el arbitro lo detecta...)"
	
	delantero := Delantero decideTirarAMatarSuFuerzaBaseEs:100.
	pelota := Pelota playeraLentaCostaAzul.
	arquero := Arquero esperaPorTiroYSeAdelantaSuFuerzaBaseEs: 1.
	
	juegoPenales := Penal conDelantero: delantero yArquero: arquero.
	
	juegoPenales arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: 2@2 arqueroSeLanzaEnDirección: 0@0.
	
	self deny: juegoPenales varEsGol.
	self assert: 2@1 equals: juegoPenales varDireccionRemateResultante! !


!classDefinition: #Arquero category: #'IS1-2025-1C-1erParcial'!
Object subclass: #Arquero
	instanceVariableNames: 'fuerzaBase direccion'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Arquero methodsFor: 'caracteristicasBase' stamp: 'FNP 4/22/2025 21:36:29'!
direccion
	
	^ direccion.! !

!Arquero methodsFor: 'caracteristicasBase' stamp: 'NR 9/21/2023 23:39:15'!
fuerza
	
	^fuerzaBase! !


!Arquero methodsFor: 'initialization' stamp: 'FNP 4/22/2025 21:17:40'!
elegirDireccion: direccionDeAtajada 

	direccion := direccionDeAtajada.! !

!Arquero methodsFor: 'initialization' stamp: 'FNP 4/22/2025 21:02:04'!
initializeConFuerza: fuerzaBaseDelArquero 

	fuerzaBase := fuerzaBaseDelArquero.! !


!Arquero methodsFor: 'dd-pelota' stamp: 'FNP 4/22/2025 20:58:42'!
atajarJabulaniDeColocador: unaJabulani

	self subclassResponsibility.! !

!Arquero methodsFor: 'dd-pelota' stamp: 'FNP 4/22/2025 20:58:50'!
atajarJabulaniDeMatador: unaJabulani

	self subclassResponsibility.! !

!Arquero methodsFor: 'dd-pelota' stamp: 'FNP 4/22/2025 20:59:06'!
atajarPlayeraDeColocador: unaPlayera

	self subclassResponsibility.! !

!Arquero methodsFor: 'dd-pelota' stamp: 'FNP 4/22/2025 20:59:00'!
atajarPlayeraDeMatador: unaPlayera

	self subclassResponsibility.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Arquero class' category: #'IS1-2025-1C-1erParcial'!
Arquero class
	instanceVariableNames: ''!

!Arquero class methodsFor: 'instance creation' stamp: 'FNP 4/22/2025 21:01:20'!
eligeDireccionAntesDeTiroSuFuerzaBaseEs: fuerzaBaseDelArquero
	
	"^self new initializeCon: #EligeDireccionAntesTiro conFuerza: fuerzaBaseDelArquero."
	^ EligeDireccionAntes new initializeConFuerza: fuerzaBaseDelArquero.! !

!Arquero class methodsFor: 'instance creation' stamp: 'FNP 4/22/2025 21:01:49'!
esperaPorTiroYSeAdelantaSuFuerzaBaseEs: fuerzaBaseDelArquero

	"^self new initializeCon: #EsperaTiroYSeAdelanta conFuerza: fuerzaBaseDelArquero."
	^ EsperaYSeAdelanta new initializeConFuerza: fuerzaBaseDelArquero.! !


!classDefinition: #EligeDireccionAntes category: #'IS1-2025-1C-1erParcial'!
Arquero subclass: #EligeDireccionAntes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!EligeDireccionAntes methodsFor: 'dd-pelota' stamp: 'FNP 4/22/2025 20:59:30'!
atajarJabulaniDeColocador: unaJabulani

	"El Arquero que elige donde tirarse antes de un tiro a colocar de jabulani gana 50% de su fuerza extra..."
	fuerzaBase := fuerzaBase * 1.5.! !

!EligeDireccionAntes methodsFor: 'dd-pelota' stamp: 'FNP 4/22/2025 21:09:51'!
atajarJabulaniDeMatador: unaJabulani

	"El Arquero que elige donde tirarse antes de un tiro de jabulani a matar, ignora la 2da coordenada (altura) al atajar..."
	" -- no se como implementar esto -- rompe el test28"! !

!EligeDireccionAntes methodsFor: 'dd-pelota' stamp: 'FNP 4/22/2025 21:05:51'!
atajarPlayeraDeColocador: unaPlayera

	"Arquero que elige donde lanzarse antes de un remate de una pelota playera lenta a colocar, gana un 100% de su fuerza extra..."
	fuerzaBase := fuerzaBase *2.! !

!EligeDireccionAntes methodsFor: 'dd-pelota' stamp: 'FNP 4/22/2025 21:11:55'!
atajarPlayeraDeMatador: unaPlayera

	"Si el arquero elige donde tirarse antes del tiro a matar de la pelota playera, ignora la 1ra coordenada del remate (ancho) al atajar..."
	"(con agacharse, quedarse parado, o saltar le alcanza...)"
				
	"-- no se como implementar esto -- hacer fallar test 32 y 33"! !


!classDefinition: #EsperaYSeAdelanta category: #'IS1-2025-1C-1erParcial'!
Arquero subclass: #EsperaYSeAdelanta
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!EsperaYSeAdelanta methodsFor: 'dd-pelota' stamp: 'FNP 4/22/2025 21:04:49'!
atajarJabulaniDeColocador: unaJabulani

	"El Arquero que espera y se adelanta ante un tiro de jabulani a colocar ignora la 2da coordenada (altura) al atajar..."	
	"(al adelanterse encara la pelota antes de que su elevación se transforme en un problema)"
				
	"--- no se como implementar esto todavia --- hace fallar test15"! !

!EsperaYSeAdelanta methodsFor: 'dd-pelota' stamp: 'FNP 4/22/2025 21:10:21'!
atajarJabulaniDeMatador: unaJabulani

	"El Arquero que espera a ver la dirección del remate de una pelota jabulani rápida a matar antes de lanzarse, nunca la ataja sin importar nada, siquiera que se adelantó..."	
				
	"-- no se todavia como implementar esto -- hace fallar test29"! !

!EsperaYSeAdelanta methodsFor: 'dd-pelota' stamp: 'FNP 4/22/2025 21:07:53'!
atajarPlayeraDeColocador: unaPlayera

	"Arquero que espera y se adelanta ante tiro con la lenta pelota playera, siempre es descubierto por el Árbitro, y el punto se le otorga al Delantero..."			
	
	"-- no se todavia como implementar esto -- hace fallar test19"! !

!EsperaYSeAdelanta methodsFor: 'dd-pelota' stamp: 'FNP 4/22/2025 21:12:08'!
atajarPlayeraDeMatador: unaPlayera

	"El Arquero que espera y se adelanta ante una pelota playera lenta a matar, siempre la ataja sin importar nada..."
				
	"hice esta truchada"! !


!classDefinition: #Delantero category: #'IS1-2025-1C-1erParcial'!
Object subclass: #Delantero
	instanceVariableNames: 'fuerzaBase'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Delantero methodsFor: 'caracteristicasBase' stamp: 'NR 9/17/2023 17:21:36'!
fuerza
	^fuerzaBase ! !


!Delantero methodsFor: 'initialization' stamp: 'FNP 4/22/2025 19:42:48'!
initializeConFuerza: fuerzaBaseDelDelantero 
	
	self subclassResponsibility.! !



!Delantero methodsFor: 'as yet unclassified' stamp: 'FNP 4/22/2025 21:15:23'!
patea: unaPelota enDireccion: unaDireccion alArquero: unArquero 

	self subclassResponsibility.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Delantero class' category: #'IS1-2025-1C-1erParcial'!
Delantero class
	instanceVariableNames: ''!

!Delantero class methodsFor: 'instance creation' stamp: 'FNP 4/22/2025 20:35:45'!
decideTirarAColocarSuFuerzaBaseEs: fuerzaBaseDelDelantero
	
	"^self new initializeCon: #AColocar conFuerza: fuerzaBaseDelDelantero."
	
	^ Colocador new initializeConFuerza: fuerzaBaseDelDelantero.! !

!Delantero class methodsFor: 'instance creation' stamp: 'FNP 4/22/2025 20:36:01'!
decideTirarAMatarSuFuerzaBaseEs: fuerzaBaseDelDelantero
	
	"^self new initializeCon: #AMatar conFuerza: fuerzaBaseDelDelantero."
	
	^ Matador new initializeConFuerza: fuerzaBaseDelDelantero.! !


!classDefinition: #Colocador category: #'IS1-2025-1C-1erParcial'!
Delantero subclass: #Colocador
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Colocador methodsFor: 'as yet unclassified' stamp: 'FNP 4/22/2025 21:15:23'!
patea: unaPelota enDireccion: unaDireccion alArquero: unArquero 

	unaPelota sosPateadaPorColocador: self conFuerza: fuerzaBase hacia: unaDireccion arquero: unArquero.! !


!Colocador methodsFor: 'initialization' stamp: 'FNP 4/22/2025 19:43:41'!
initializeConFuerza: fuerzaBaseDelDelantero

	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"
	 fuerzaBase := fuerzaBaseDelDelantero * 0.5.! !



!classDefinition: #Matador category: #'IS1-2025-1C-1erParcial'!
Delantero subclass: #Matador
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Matador methodsFor: 'as yet unclassified' stamp: 'FNP 4/22/2025 21:15:23'!
patea: unaPelota enDireccion: unaDireccion alArquero: unArquero 

	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)"
	| nuevaDireccion |
	nuevaDireccion := unaDireccion x @ 1.
	
	unaPelota sosPateadaPorMatador: self conFuerza: fuerzaBase hacia: nuevaDireccion arquero: unArquero.! !


!Matador methodsFor: 'initialization' stamp: 'FNP 4/22/2025 19:44:28'!
initializeConFuerza: fuerzaBaseDelDelantero

	fuerzaBase  := fuerzaBaseDelDelantero.! !



!classDefinition: #Direccion category: #'IS1-2025-1C-1erParcial'!
Object subclass: #Direccion
	instanceVariableNames: 'valor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Direccion methodsFor: 'as yet unclassified' stamp: 'FNP 4/22/2025 21:29:34'!
chequearSiEsValidaEntre: puntoInicial y: puntoFinal

	( self value between: puntoInicial and: puntoFinal ) ifFalse: [
		self error: 'Direccion invalida en el rango indicado'.
	].! !

!Direccion methodsFor: 'as yet unclassified' stamp: 'FNP 4/22/2025 21:29:45'!
fueAlAngulo: otraDireccion

	| coordenadasDeAngulos i |
	coordenadasDeAngulos := {0@0. 0@2. 2@0. 2@2}.
	i := 1.
	[ i <= coordenadasDeAngulos size ] whileTrue: [ 
		(coordenadasDeAngulos at: i) = otraDireccion value ifTrue: [^true].
		i := i+1.
	].
	^false! !

!Direccion methodsFor: 'as yet unclassified' stamp: 'FNP 4/22/2025 21:26:23'!
initializeWith: unPunto

	valor := unPunto.! !

!Direccion methodsFor: 'as yet unclassified' stamp: 'FNP 4/22/2025 21:31:57'!
value

	^ valor.! !

!Direccion methodsFor: 'as yet unclassified' stamp: 'FNP 4/22/2025 20:56:19'!
x

	^ valor x.! !

!Direccion methodsFor: 'as yet unclassified' stamp: 'FNP 4/22/2025 20:56:25'!
y

	^ valor y.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Direccion class' category: #'IS1-2025-1C-1erParcial'!
Direccion class
	instanceVariableNames: ''!

!Direccion class methodsFor: 'as yet unclassified' stamp: 'FNP 4/22/2025 21:23:38'!
newWith: unPunto

	^ self new initializeWith: unPunto.! !


!classDefinition: #Pelota category: #'IS1-2025-1C-1erParcial'!
Object subclass: #Pelota
	instanceVariableNames: 'direccion fuerza'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Pelota methodsFor: 'initialize' stamp: 'FNP 4/22/2025 21:34:56'!
initialize

	direccion := nil.
	fuerza := 0.! !


!Pelota methodsFor: 'dd-delantero' stamp: 'FNP 4/22/2025 20:52:33'!
sosPateadaPorColocador: unDelanteroColocador conFuerza: fuerzaTiro hacia: direccionTiro arquero: unArquero 

	self subclassResponsibility.! !

!Pelota methodsFor: 'dd-delantero' stamp: 'FNP 4/22/2025 20:53:19'!
sosPateadaPorMatador: unDelanteroMatador conFuerza: fuerzaTiro hacia: direccionTiro arquero: unArquero 

	self subclassResponsibility.! !


!Pelota methodsFor: 'as yet unclassified' stamp: 'FNP 4/22/2025 21:36:14'!
direccion

	^ direccion.! !

!Pelota methodsFor: 'as yet unclassified' stamp: 'FNP 4/22/2025 21:34:05'!
fuerza

	^ fuerza.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pelota class' category: #'IS1-2025-1C-1erParcial'!
Pelota class
	instanceVariableNames: ''!

!Pelota class methodsFor: 'instance creation' stamp: 'FNP 4/22/2025 21:34:35'!
jabulaniSudafricanaRapida
	
	^ Jabulani new.! !

!Pelota class methodsFor: 'instance creation' stamp: 'FNP 4/22/2025 21:34:44'!
playeraLentaCostaAzul
	
	^ Playera new.! !


!classDefinition: #Jabulani category: #'IS1-2025-1C-1erParcial'!
Pelota subclass: #Jabulani
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Jabulani methodsFor: 'dd-delantero' stamp: 'FNP 4/22/2025 20:54:08'!
sosPateadaPorColocador: unDelanteroColocador conFuerza: fuerzaTiro hacia: direccionTiro arquero: unArquero 

	"Una Jabulani de momento no genera ningun efecto extraño al interactuar con un Colocador"

	fuerza := fuerzaTiro.
	direccion := direccionTiro.
	
	unArquero atajarJabulaniDeColocador: self.! !

!Jabulani methodsFor: 'dd-delantero' stamp: 'FNP 4/22/2025 20:54:25'!
sosPateadaPorMatador: unDelanteroMatador conFuerza: fuerzaTiro hacia: direccionTiro arquero: unArquero 
	
	"Si se tira 'a matar' usando la jabulani rápida, el Delantero gana un 20% de fuerza extra... (no importa arquero)"
	fuerza := fuerzaTiro * 1.2.
	
	direccion := direccionTiro.
	
	unArquero atajarJabulaniDeMatador: self.! !


!classDefinition: #Playera category: #'IS1-2025-1C-1erParcial'!
Pelota subclass: #Playera
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Playera methodsFor: 'dd-delantero' stamp: 'FNP 4/22/2025 20:54:39'!
sosPateadaPorColocador: unDelanteroColocador conFuerza: fuerzaTiro hacia: direccionTiro arquero: unArquero 

	"La humilde pelota playera le hace perder un 20% de fuerza adicional al tiro del delantero que la use para colocar... (no importa el arquero)"
	fuerza := fuerzaTiro * 0.8.
	
	direccion := direccionTiro.
	
	unArquero atajarPlayeraDeColocador: self.! !

!Playera methodsFor: 'dd-delantero' stamp: 'FNP 4/22/2025 20:54:57'!
sosPateadaPorMatador: unDelanteroMatador conFuerza: fuerzaTiro hacia: direccionTiro arquero: unArquero 

	"Si se tira 'a matar' usando una pelota playera a una dirección que no es un ángulo, la 2da coordenada del remate (altura) suma 2, es decir sale volando producto de su liviandez (y que quiere retornar al mar). Si la pelota se va fuera del arco, el puntaje va al arquero... (no importa arquero)"

	| nuevaDireccion |
	
	nuevaDireccion := direccionTiro.

	(direccionTiro noEsUnAngulo) ifTrue: [
		nuevaDireccion := Direccion newWith: direccionTiro x @ (direccionTiro y + 2).
	].
	
	direccion := nuevaDireccion.
	fuerza := fuerzaTiro.
	
	unArquero atajarPlayeraDeMatador: self.! !


!classDefinition: #Penal category: #'IS1-2025-1C-1erParcial'!
Object subclass: #Penal
	instanceVariableNames: 'delantero arquero varDireccionRemate varFuerzaResultanteDeTiro varFuerzaResultanteDeAtajada varEsGol'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Penal methodsFor: 'initialization' stamp: 'LL 4/16/2025 16:45:24'!
initializeConDelantero: unDelantero yArquero: unArquero 
	
	delantero := unDelantero.
	arquero := unArquero.
	varEsGol := false.
	
	! !


!Penal methodsFor: 'penal' stamp: 'FNP 4/22/2025 21:40:59'!
arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: direccionTiro arqueroSeLanzaEnDirección: direccionArquero
	
	| fuerzaResultanteDelTiro fuerzaResultanteDeAtajada coordenadasIgualadas fuerzaArqueroSuficiente direccionRemate arqueroConFuerzaSuficiente arqueroEnCoordenadasCorrectas direccionAtajada |
	
	"acá van las aserciones (tests 1-8)"
	direccionRemate := Direccion newWith: direccionTiro.
	direccionAtajada := Direccion newWith: direccionArquero.
	
	"Chequeo la direccion de tiro del delantero"
	[ direccionRemate chequearSiEsValidaEntre: 0@0 y: 2@2 ] 
	on: Error
	do: [ self error: self class direccionTiroFueraDeRango ].

	"Chequeo la direccion del Arquero"
	[ direccionAtajada chequearSiEsValidaEntre: 0@0 y: 2@2 ] 
	on: Error
	do: [ self error: self class direccionArqueroFueraDeRango ].
	

	"empieza el algoritmo principal - esto tendria que ver a lo ultimo para que se usa y quitarlo si no es necesario."
	fuerzaResultanteDelTiro := delantero fuerza.
	fuerzaResultanteDeAtajada := arquero fuerza.	

	"reglas básicas de los penales (tests 9-11)"
	
	" Este clousure indica si el arquero esta en las coordenadas del tiro."
	arqueroEnCoordenadasCorrectas := [ :coordTiro :coordAtajada | coordTiro = coordAtajada ].
	arqueroConFuerzaSuficiente := [ :fuerzaRemate :fuerzaAtajada | fuerzaRemate <= fuerzaAtajada ].
	
	"todo el resto de los casos (tests 12-34)"
	arquero elegirDireccion: direccionArquero.
	delantero patea: pelota enDireccion: direccionTiro alArquero: arquero.
	

	"Informacion que reporta el VAR. De acá en adelante no debería ser necesario cambiar nada para que pasen los tests."

	varDireccionRemate := pelota direccion.
	varFuerzaResultanteDeTiro := pelota fuerza.
	varFuerzaResultanteDeAtajada := arquero fuerza.

	coordenadasIgualadas := arqueroEnCoordenadasCorrectas value: direccionRemate value: direccionAtajada.
	fuerzaArqueroSuficiente := arqueroConFuerzaSuficiente value: fuerzaResultanteDelTiro value: fuerzaResultanteDeAtajada.
	
	(direccionRemate between: 0@0 and: 2@2) ifFalse: [
		varEsGol := false
	] ifTrue: [
		(coordenadasIgualadas and: [ fuerzaArqueroSuficiente ]) ifTrue: 			[ 
			varEsGol := false
		] ifFalse: [ 
			varEsGol := true
		]
	].! !

!Penal methodsFor: 'penal' stamp: 'LL 4/16/2025 17:42:36'!
fueAlAngulo: direccionTiro

	| coordenadasDeAngulos i |
	coordenadasDeAngulos := {0@0. 0@2. 2@0. 2@2}.
	i := 1.
	[ i <= coordenadasDeAngulos size ] whileTrue: [ 
		(coordenadasDeAngulos at: i) = direccionTiro ifTrue: [^true].
		i := i+1.
	].
	^false! !


!Penal methodsFor: 'VAR' stamp: 'FNP 4/22/2025 21:37:03'!
varDireccionRemateResultante
	
	^varDireccionRemate value.
	! !

!Penal methodsFor: 'VAR' stamp: 'LL 4/16/2025 16:39:40'!
varEsGol
	
	^varEsGol
	! !

!Penal methodsFor: 'VAR' stamp: 'NR 9/24/2023 08:12:18'!
varFuerzaResultanteDeAtajada
	
	^varFuerzaResultanteDeAtajada
	! !

!Penal methodsFor: 'VAR' stamp: 'NR 9/24/2023 08:12:37'!
varFuerzaResultanteDeTiro
	
	^varFuerzaResultanteDeTiro
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Penal class' category: #'IS1-2025-1C-1erParcial'!
Penal class
	instanceVariableNames: ''!

!Penal class methodsFor: 'instance creation' stamp: 'NR 5/2/2023 06:22:13'!
conDelantero: delantero yArquero: arquero 

	^self new initializeConDelantero: delantero yArquero: arquero ! !


!Penal class methodsFor: 'message errors' stamp: 'NR 9/19/2023 06:12:49'!
direccionArqueroFueraDeRango
	
	^'El arquero debe lanzarse a coordenadas válidas'! !

!Penal class methodsFor: 'message errors' stamp: 'NR 9/19/2023 06:12:32'!
direccionTiroFueraDeRango
	
	^'La pelota debe dirigirse a coordenadas válidas'! !


!classDefinition: #VAR category: #'IS1-2025-1C-1erParcial'!
Object subclass: #VAR
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!
