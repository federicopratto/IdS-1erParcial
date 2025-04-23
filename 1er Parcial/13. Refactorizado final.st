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

!PenalesTest methodsFor: 'tests' stamp: 'FNP 4/23/2025 14:38:25'!
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

!Arquero methodsFor: 'caracteristicasBase' stamp: 'FNP 4/23/2025 12:26:32'!
direccion

	^ direccion.! !

!Arquero methodsFor: 'caracteristicasBase' stamp: 'FNP 4/23/2025 13:12:24'!
elegirDireccion: unaDireccion

	^ direccion := unaDireccion.! !

!Arquero methodsFor: 'caracteristicasBase' stamp: 'NR 9/21/2023 23:39:15'!
fuerza
	
	^fuerzaBase! !


!Arquero methodsFor: 'initialization' stamp: 'FNP 4/23/2025 12:42:08'!
atajarJabulaniAColocar: unaPelotaJabulani controladoPor: unVAR 

	self subclassResponsibility.! !

!Arquero methodsFor: 'initialization' stamp: 'FNP 4/23/2025 12:42:19'!
atajarJabulaniAMatar: unaPelotaJabulani controladoPor: unVAR 

	self subclassResponsibility.! !

!Arquero methodsFor: 'initialization' stamp: 'FNP 4/23/2025 12:44:28'!
atajarPlayeraAColocar: unaPelotaPlayera controladoPor: unVAR 

	self subclassResponsibility.! !

!Arquero methodsFor: 'initialization' stamp: 'FNP 4/23/2025 12:44:48'!
atajarPlayeraAMatar: unaPelotaPlayera controladoPor: unVAR 

	self subclassResponsibility.! !

!Arquero methodsFor: 'initialization' stamp: 'FNP 4/23/2025 12:16:01'!
initializeConFuerza: fuerzaBaseDelArquero 
	
	fuerzaBase := fuerzaBaseDelArquero.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Arquero class' category: #'IS1-2025-1C-1erParcial'!
Arquero class
	instanceVariableNames: ''!

!Arquero class methodsFor: 'instance creation' stamp: 'FNP 4/23/2025 13:13:02'!
eligeDireccionAntesDeTiroSuFuerzaBaseEs: fuerzaBaseDelArquero
	
	"^self new initializeCon: #EligeDireccionAntesTiro conFuerza: fuerzaBaseDelArquero"
	^ ArqueroEligeDireccion new initializeConFuerza: fuerzaBaseDelArquero.! !

!Arquero class methodsFor: 'instance creation' stamp: 'FNP 4/23/2025 13:13:06'!
esperaPorTiroYSeAdelantaSuFuerzaBaseEs: fuerzaBaseDelArquero

	"^self new initializeCon: #EsperaTiroYSeAdelanta conFuerza: fuerzaBaseDelArquero."
	^ ArqueroEspera new initializeConFuerza: fuerzaBaseDelArquero.! !


!classDefinition: #ArqueroEligeDireccion category: #'IS1-2025-1C-1erParcial'!
Arquero subclass: #ArqueroEligeDireccion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!ArqueroEligeDireccion methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 12:46:04'!
atajarJabulaniAColocar: unaPelotaJabulani controladoPor: unVAR  

	"El Arquero que elige donde tirarse antes de un tiro a colocar de jabulani gana 50% de su fuerza extra..."
	fuerzaBase := fuerzaBase * 1.5.
	
	
	"aca el var deberia chequear si fue gol o no"
	unVAR chequearSi: self atajo: unaPelotaJabulani.! !

!ArqueroEligeDireccion methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 12:55:39'!
atajarJabulaniAMatar: unaPelotaJabulani controladoPor: unVAR 

	"El Arquero que elige donde tirarse antes de un tiro de jabulani a matar, ignora la 2da coordenada (altura) al atajar..."		
	direccion := direccion x @ unaPelotaJabulani direccion y.


	"aca el var deberia chequear si fue gol o no"
	unVAR chequearSi: self atajo: unaPelotaJabulani.! !

!ArqueroEligeDireccion methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 12:56:38'!
atajarPlayeraAColocar: unaPelotaPlayera controladoPor: unVAR 

	"Arquero que elige donde lanzarse antes de un remate de una pelota playera lenta a colocar, gana un 100% de su fuerza extra..."
	fuerzaBase := fuerzaBase * 2.


	"aca el var deberia chequear si fue gol o no"
	unVAR chequearSi: self atajo: unaPelotaPlayera.! !

!ArqueroEligeDireccion methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 12:56:52'!
atajarPlayeraAMatar: unaPelotaPlayera controladoPor: unVAR 

	"Si el arquero elige donde tirarse antes del tiro a matar de la pelota playera, ignora la 1ra coordenada del remate (ancho) al atajar..."
	"(con agacharse, quedarse parado, o saltar le alcanza...)"
	direccion := unaPelotaPlayera direccion x @ direccion y.


	"aca el var deberia chequear si fue gol o no"
	unVAR chequearSi: self atajo: unaPelotaPlayera.! !


!classDefinition: #ArqueroEspera category: #'IS1-2025-1C-1erParcial'!
Arquero subclass: #ArqueroEspera
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!ArqueroEspera methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 12:57:20'!
atajarJabulaniAColocar: unaPelotaJabulani controladoPor: unVAR 

	"El Arquero que espera y se adelanta ante un tiro de jabulani a colocar ignora la 2da coordenada (altura) al atajar..."	
	"(al adelanterse encara la pelota antes de que su elevación se transforme en un problema)"
	direccion := direccion x @ unaPelotaJabulani direccion y.
	
	"aca el var deberia chequear si fue gol"
	unVAR chequearSi: self atajo: unaPelotaJabulani.
	! !

!ArqueroEspera methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 13:49:27'!
atajarJabulaniAMatar: unaPelotaJabulani controladoPor: unVAR 

	"El Arquero que espera a ver la dirección del remate de una pelota jabulani rápida a matar antes de lanzarse, nunca la ataja sin importar nada, siquiera que se adelantó..."	

	"aca el var deberia garantizar el gol"
	unVAR declararGolA: self queNoAtajo: unaPelotaJabulani.! !

!ArqueroEspera methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 13:49:44'!
atajarPlayeraAColocar: unaPelotaPlayera controladoPor: unVAR 

	"Arquero que espera y se adelanta ante tiro con la lenta pelota playera, siempre es descubierto por el Árbitro, y el punto se le otorga al Delantero..."

	"aca el var deberia garantizar el gol"
	unVAR declararGolA: self queNoAtajo: unaPelotaPlayera.! !

!ArqueroEspera methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 13:43:38'!
atajarPlayeraAMatar: unaPelotaPlayera controladoPor: unVAR 

	"El Arquero que espera y se adelanta ante una pelota playera lenta a matar, siempre la ataja sin importar nada..."
	
	"aca el var deberia garantizar que no sea gol"
	unVAR declararAtajadaDe: self queAtajo: unaPelotaPlayera.! !


!classDefinition: #Delantero category: #'IS1-2025-1C-1erParcial'!
Object subclass: #Delantero
	instanceVariableNames: 'fuerzaBase'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Delantero methodsFor: 'caracteristicasBase' stamp: 'NR 9/17/2023 17:21:36'!
fuerza
	^fuerzaBase ! !


!Delantero methodsFor: 'initialization' stamp: 'FNP 4/23/2025 11:50:05'!
initializeConFuerza: fuerzaBaseDelDelantero 
	
	self subclassResponsibility.! !

!Delantero methodsFor: 'initialization' stamp: 'FNP 4/23/2025 12:40:28'!
patear: unaPelota en: unaDireccion hacia: unArquero controladoPor: unVAR 

	self subclassResponsibility.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Delantero class' category: #'IS1-2025-1C-1erParcial'!
Delantero class
	instanceVariableNames: ''!

!Delantero class methodsFor: 'instance creation' stamp: 'FNP 4/23/2025 11:49:14'!
decideTirarAColocarSuFuerzaBaseEs: fuerzaBaseDelDelantero
	
	"^self new initializeCon: #AColocar conFuerza: fuerzaBaseDelDelantero."
	^ DelanteroAColocar new initializeConFuerza: fuerzaBaseDelDelantero.! !

!Delantero class methodsFor: 'instance creation' stamp: 'FNP 4/23/2025 11:49:36'!
decideTirarAMatarSuFuerzaBaseEs: fuerzaBaseDelDelantero
	
	"^self new initializeCon: #AMatar conFuerza: fuerzaBaseDelDelantero."
	^ DelanteroAMatar new initializeConFuerza: fuerzaBaseDelDelantero.! !


!classDefinition: #DelanteroAColocar category: #'IS1-2025-1C-1erParcial'!
Delantero subclass: #DelanteroAColocar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!DelanteroAColocar methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 11:50:45'!
initializeConFuerza: fuerzaBaseDelDelantero 

	"La fuerza del Delantero se reduce en 50% siempre que tira a colocar... (no importa pelota, ni arquero)"	
	fuerzaBase := fuerzaBaseDelDelantero * 0.5.! !

!DelanteroAColocar methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 12:41:07'!
patear: unaPelota en: unaDireccion hacia: unArquero controladoPor: unVAR 

	unaPelota esPateadaAColocarEnDireccion: unaDireccion conFuerza: fuerzaBase hacia: unArquero controladoPor: unVAR.! !


!classDefinition: #DelanteroAMatar category: #'IS1-2025-1C-1erParcial'!
Delantero subclass: #DelanteroAMatar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!DelanteroAMatar methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 11:50:54'!
initializeConFuerza: fuerzaBaseDelDelantero 
	
	fuerzaBase := fuerzaBaseDelDelantero.! !

!DelanteroAMatar methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 13:26:10'!
patear: unaPelota en: unaDireccion hacia: unArquero controladoPor: unVAR 

	"Si se tira 'a matar' a los ángulos, la 2da coordenada (altura) del remate pasa a 1 (altura media)... (no importa pelota, ni arquero)" 
	| nuevaDireccion |
	
	nuevaDireccion := unaDireccion.
	
	( unVAR fueAlAngulo: unaDireccion ) ifTrue: [
		nuevaDireccion := unaDireccion x @ 1.
	].
	
	unaPelota esPateadaAMatarEnDireccion: nuevaDireccion conFuerza: fuerzaBase hacia: unArquero controladoPor: unVAR.! !


!classDefinition: #Pelota category: #'IS1-2025-1C-1erParcial'!
Object subclass: #Pelota
	instanceVariableNames: 'direccion fuerza'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Pelota methodsFor: 'initialize' stamp: 'FNP 4/23/2025 12:41:07'!
esPateadaAColocarEnDireccion: unaDireccion conFuerza: unaFuerza hacia: unArquero controladoPor: unVAR 

	self subclassResponsibility.! !

!Pelota methodsFor: 'initialize' stamp: 'FNP 4/23/2025 12:41:24'!
esPateadaAMatarEnDireccion: unaDireccion conFuerza: unaFuerza hacia: unArquero controladoPor: unVAR 

	self subclassResponsibility.! !

!Pelota methodsFor: 'initialize' stamp: 'FNP 4/23/2025 12:04:08'!
initialize

	direccion := nil.
	fuerza := 0.! !


!Pelota methodsFor: 'caracteristicasBase' stamp: 'FNP 4/23/2025 12:31:52'!
direccion

	^ direccion.! !

!Pelota methodsFor: 'caracteristicasBase' stamp: 'FNP 4/23/2025 12:32:00'!
fuerza

	^ fuerza.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pelota class' category: #'IS1-2025-1C-1erParcial'!
Pelota class
	instanceVariableNames: ''!

!Pelota class methodsFor: 'instance creation' stamp: 'FNP 4/23/2025 12:03:27'!
jabulaniSudafricanaRapida
	
	"^self new initializeCon: #Jabulani"
	^ Jabulani new.! !

!Pelota class methodsFor: 'instance creation' stamp: 'FNP 4/23/2025 12:03:39'!
playeraLentaCostaAzul
	
	"^self new initializeCon: #Playera"
	^ Playera new.! !


!classDefinition: #Jabulani category: #'IS1-2025-1C-1erParcial'!
Pelota subclass: #Jabulani
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Jabulani methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 12:42:08'!
esPateadaAColocarEnDireccion: unaDireccion conFuerza: unaFuerza hacia: unArquero controladoPor: unVAR .

	"Si la jabulani es pateada a colocar, no tiene ningun efecto en particular sobre la dirección o fuerza del lanzamiento"
	direccion := unaDireccion.
	fuerza := unaFuerza.	
	
	unArquero atajarJabulaniAColocar: self controladoPor: unVAR.! !

!Jabulani methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 12:42:19'!
esPateadaAMatarEnDireccion: unaDireccion conFuerza: unaFuerza hacia: unArquero controladoPor: unVAR .

	"Si se tira 'a matar' usando la jabulani rápida, el Delantero gana un 20% de fuerza extra... (no importa arquero)"
	direccion := unaDireccion.
	fuerza := unaFuerza * 1.2.
	
	unArquero atajarJabulaniAMatar: self controladoPor: unVAR.! !


!classDefinition: #Playera category: #'IS1-2025-1C-1erParcial'!
Pelota subclass: #Playera
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Playera methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 12:44:28'!
esPateadaAColocarEnDireccion: unaDireccion conFuerza: unaFuerza hacia: unArquero controladoPor: unVAR 

	"La humilde pelota playera le hace perder un 20% de fuerza adicional al delantero que la use para colocar... (no importa el arquero)"
	direccion := unaDireccion.
	fuerza := unaFuerza * 0.8.
	
	unArquero atajarPlayeraAColocar: self controladoPor: unVAR.! !

!Playera methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 14:01:55'!
esPateadaAMatarEnDireccion: unaDireccion conFuerza: unaFuerza hacia: unArquero controladoPor: unVAR 

	"Si se tira 'a matar' usando una pelota playera a una dirección que no es un ángulo, la 2da coordenada del remate (altura) suma 2, es decir sale volando producto de su liviandez (y que quiere retornar al mar). Si la pelota se va fuera del arco, el puntaje va al arquero... (no importa arquero)"
	
	( unVAR fueAlAngulo: unaDireccion ) ifFalse: [
		direccion := unaDireccion x @ (unaDireccion y + 2).
	].
	
	fuerza := unaFuerza.	
	
	"aca el var deberia chequear la altura antes de dejar atajar al arquero. Esta podria ser una solución"
	( unVAR tiroConPlayeraAMatarSalioVolando: self direccion y ) ifTrue: [
		unVAR declararAtajadaDe: unArquero queAtajo: self.
	] ifFalse: [
		unArquero atajarPlayeraAMatar: self controladoPor: unVAR.
	].! !


!classDefinition: #Penal category: #'IS1-2025-1C-1erParcial'!
Object subclass: #Penal
	instanceVariableNames: 'delantero arquero var'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!Penal methodsFor: 'initialization' stamp: 'FNP 4/23/2025 13:14:46'!
initializeConDelantero: unDelantero yArquero: unArquero 
	
	delantero := unDelantero.
	arquero := unArquero.
	var := VAR new.
	
	! !


!Penal methodsFor: 'penal' stamp: 'FNP 4/23/2025 14:40:56'!
arbitroPitaConPelota: pelota delanteroRemataAlArcoConDireccion: direccionTiro arqueroSeLanzaEnDirección: direccionArquero
	
	"Chequeo la direccion de tiro del delantero"
	self validarDireccionElegida: direccionTiro ySiEsInvalidaLanzarError: self class direccionTiroFueraDeRango.

	"Chequeo la direccion del Arquero"
	self validarDireccionElegida: direccionArquero ySiEsInvalidaLanzarError: self class direccionArqueroFueraDeRango.

	"Se realiza el tiro"
	arquero elegirDireccion: direccionArquero.
	delantero patear: pelota en: direccionTiro hacia: arquero controladoPor: var.! !

!Penal methodsFor: 'penal' stamp: 'FNP 4/23/2025 14:40:39'!
validarDireccionElegida: direccionElegida ySiEsInvalidaLanzarError: unError

	( direccionElegida between: 0@0 and: 2@2 ) ifFalse: [
		self error: unError
	].! !


!Penal methodsFor: 'VAR' stamp: 'FNP 4/23/2025 13:21:15'!
varDireccionRemateResultante
	
	^ var direccionRemate.
	! !

!Penal methodsFor: 'VAR' stamp: 'FNP 4/23/2025 13:15:14'!
varEsGol
	
	^ var fueGol.
	! !

!Penal methodsFor: 'VAR' stamp: 'FNP 4/23/2025 13:21:49'!
varFuerzaResultanteDeAtajada
	
	^ var fuerzaAtajada.
	! !

!Penal methodsFor: 'VAR' stamp: 'FNP 4/23/2025 13:21:52'!
varFuerzaResultanteDeTiro
	
	^ var fuerzaRemate.
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
	instanceVariableNames: 'direccionRemate fuerzaRemate direccionAtajada fuerzaAtajada esGol'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IS1-2025-1C-1erParcial'!

!VAR methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 13:47:22'!
chequearSi: unArquero atajo: unaPelota
	
	| coordenadasIgualadas fuerzaArqueroSuficiente |
	
	self tomarDatosDe: unaPelota queIntentaAtajar: unArquero.

	"Chequeo si coinciden las coordenadas del tiro con las del arquero"
	coordenadasIgualadas := direccionRemate = direccionAtajada.
	fuerzaArqueroSuficiente := fuerzaRemate <= fuerzaAtajada.
	
	(direccionRemate between: 0@0 and: 2@2) ifFalse: [
		esGol := false.
	] ifTrue: [
		(coordenadasIgualadas and: [ fuerzaArqueroSuficiente ]) ifTrue: 			[ 
			esGol := false.
		] ifFalse: [ 
			esGol := true.
		]
	].! !

!VAR methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 13:46:40'!
declararAtajadaDe: unArquero queAtajo: unaPelota

	self tomarDatosDe: unaPelota queIntentaAtajar: unArquero.
	esGol := false.! !

!VAR methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 13:49:05'!
declararGolA: unArquero queNoAtajo: unaPelota

	self tomarDatosDe: unaPelota queIntentaAtajar: unArquero.
	esGol := true.! !

!VAR methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 13:27:15'!
fueAlAngulo: unaDireccionDeRemate

	| coordenadasDeAngulos i |
	coordenadasDeAngulos := {0@0. 0@2. 2@0. 2@2}.
	i := 1.
	[ i <= coordenadasDeAngulos size ] whileTrue: [ 
		(coordenadasDeAngulos at: i) = unaDireccionDeRemate ifTrue: [^true].
		i := i+1.
	].
	^false! !

!VAR methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 12:54:58'!
tiroConPlayeraAMatarSalioVolando: unaAltura

	"Indica si un tiro a Matar hecho con una pelota playera salio del arco"
	^ unaAltura > 2.! !

!VAR methodsFor: 'as yet unclassified' stamp: 'FNP 4/23/2025 13:46:01'!
tomarDatosDe: unaPelota queIntentaAtajar: unArquero

	direccionRemate := unaPelota direccion.
	fuerzaRemate := unaPelota fuerza.
	direccionAtajada := unArquero direccion.
	fuerzaAtajada := unArquero fuerza.! !


!VAR methodsFor: 'salida datos' stamp: 'FNP 4/23/2025 13:20:42'!
direccionAtajada
	
	^ direccionAtajada.! !

!VAR methodsFor: 'salida datos' stamp: 'FNP 4/23/2025 13:20:35'!
direccionRemate
	
	^ direccionRemate.! !

!VAR methodsFor: 'salida datos' stamp: 'FNP 4/23/2025 13:15:38'!
fueGol

	^ esGol.! !

!VAR methodsFor: 'salida datos' stamp: 'FNP 4/23/2025 13:20:59'!
fuerzaAtajada
	
	^ fuerzaAtajada.! !

!VAR methodsFor: 'salida datos' stamp: 'FNP 4/23/2025 13:20:52'!
fuerzaRemate
	
	^ fuerzaRemate.! !


!VAR methodsFor: 'initialization' stamp: 'FNP 4/23/2025 13:37:49'!
initialize

	direccionRemate := nil.
	fuerzaRemate := 0.
	direccionAtajada := nil.
	fuerzaAtajada := 0.
	esGol := false.! !
