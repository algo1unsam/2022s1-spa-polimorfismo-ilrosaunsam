//PERSONAS
object olivia{

	var concentracion = 6
	const masaje = 3
	const discutir = 1

	method concentracion() {
		return concentracion
	}

	method recibeMasajes() {
		concentracion += masaje
	}

	method discute() {
		concentracion -= discutir
	}

	method gradoDeConcentracion() {
		return concentracion
	}

	method banioVapor() {
	}

}

object bruno {

	var feliz = true
	var sed = false
	var peso = 55000

	method feliz() {
		return feliz
	}

	method sed() {
		return sed
	}

	method peso() {
		return peso
	}

	method recibeMasajes() {
		feliz = true
	}

	method banioVapor() {
		peso -= 500
		sed = true
	}

	method tomarAgua() {
		sed = false
	}

	method comerFideos() {
		peso += 250
		sed = true
	}

	method correr() {
		peso -= 300
	}

	method verNoticiero() {
		feliz = false
	}

	method estaPerfecto() {
		const pesomax = 70000
		const pesomin = 50000
		return feliz and not sed and peso.between(pesomin, pesomax)
	}

	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}

}

object ramiro {

	var contracturado = 0
	var pielGrasosa = true

	method contracturado() {
		return contracturado
	}

	method pielGrasosa() {
		return pielGrasosa
	}

	method recibeMasajes() {
		contracturado -= 2
		if (contracturado < 0) {
			contracturado = 0
		}
	}

	method banioVapor() {
		pielGrasosa = false
	}

	method comerBigMac() {
		pielGrasosa = true
	}

	method bajarFosa() {
		pielGrasosa = true
		contracturado += 1
	}

	method jugarPaddle() {
		contracturado += 3
	}

	method diaDeTrabajo() {
		self.bajarFosa()
		self.comerBigMac()
		self.bajarFosa()
	}

}

//SPA
object spa {

	var ultimoAtendido

	method atender(persona) {
		if (persona == ultimoAtendido) {
			persona.recibeMasajes()
		}
		ultimoAtendido = persona
		persona.recibeMasajes()
		persona.banioVapor()
	}

	method ultimoAtendido() {
		return ultimoAtendido
	}

}

