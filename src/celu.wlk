class Celular {

	var property ramTotal = 1000
	var property bateria = 100
	var property apagar = false
<<<<<<< HEAD
	var property apps = []
	var wsp = new Mensajeria(ramBase = 40, gastoBateria = 1, ramPorChat = 5, chats = 2)
	var telegram = new Mensajeria(ramBase = 30, gastoBateria = 1, ramPorChat = 4,chats = 5)
	var reproductor = new Musica(canciones = 30)
	var calculadora = new Calculadora()
	var youtube = new Videos(videos = 10)
=======
>>>>>>> branch 'master' of https://github.com/algo1unsam/celu-con-clase-MarielKov.git

<<<<<<< HEAD
	method abrirApp(app) {
		apps.add(app)
=======
	var wsp = new Mensajeria(ramBase = 40, gastoBateria = 1)
	var telegram = new Mensajeria(ramBase = 30, gastoBateria = 1)
	var reproductor = new Musica()
	var calculadora = new Calculadora()
	var youtube = new Videos()

	method abrirWsp() {
		if (bateria <= 0) {
			apagar = true
		} else {
			wsp.gastoWhatsapp()
			ramTotal = ramTotal - wsp.ramOcupada()
			bateria = bateria - wsp.gastoBateria()
		}
	}

	method abrirTelegram() {
		if (bateria <= 0) {
			apagar = true
		} else {
			wsp.gastoTelegram()
			ramTotal = ramTotal - telegram.ramOcupada()
			bateria = bateria - telegram.gastoBateria()
		}
	}

	method abrirCalculadora() {
		if (bateria <= 0) {
			apagar = true
		} else {
			ramTotal = ramTotal - calculadora.ramOcupada()
			bateria = bateria - calculadora.gastoBateria()
		}
	}

	method abrirReproductor() {
		if (bateria <= 0) {
			apagar = true
		} else {
			ramTotal = ramTotal - reproductor.ramOcupada()
			bateria = bateria - reproductor.gastoBateria()
		}
	}

	method abrirYoutube() {
		if (bateria == 0) {
			apagar = true
		} else {
			ramTotal = ramTotal - youtube.ramOcupada()
			bateria = bateria - youtube.gastoBateria()
		}
>>>>>>> branch 'master' of https://github.com/algo1unsam/celu-con-clase-MarielKov.git
	}

	method ramEnUso() = ramTotal - apps.sum{ app => app.ramUsada() }

<<<<<<< HEAD
	method usoPorMinuto(minutos) {
		return if (bateria <= 0) {
			apagar = true
=======
class Musica {

	var property ramOcupada = 2 * canciones
	var property gastoBateria = 2
	var property canciones = 30
	var property limiteAlcanzado = false

	method agregarCanciones(n) {
		canciones += n
		ramOcupada = ramOcupada * canciones
		return if (ramOcupada == 50) {
			limiteAlcanzado = true
>>>>>>> branch 'master' of https://github.com/algo1unsam/celu-con-clase-MarielKov.git
		} else {
			bateria - apps.sum{ app => app.bateriaUsada(minutos) }
		}
	}

}

<<<<<<< HEAD
class Musica {
=======
class Mensajeria {
>>>>>>> branch 'master' of https://github.com/algo1unsam/celu-con-clase-MarielKov.git

<<<<<<< HEAD
	var property ramOcupada = 2 * canciones
	var property gastoBateria = 2
	var property canciones
=======
	var property ramBase
	var property gastoBateria
	var property chats = 2
	var property ramOcupada = 0
>>>>>>> branch 'master' of https://github.com/algo1unsam/celu-con-clase-MarielKov.git

<<<<<<< HEAD
	method ramUsada() = 50.min(ramOcupada * canciones)
	

	method bateriaUsada(minutos) = gastoBateria * minutos
=======
	method nuevoChat() {
		chats += 1
	}

	method gastoWhatsapp() {
		gastoBateria = gastoBateria * chats
		ramOcupada = ramBase + 5 * chats
	}

	method gastoTelegram() {
		gastoBateria = gastoBateria * chats
		ramOcupada = ramBase + 4 * chats
	}
>>>>>>> branch 'master' of https://github.com/algo1unsam/celu-con-clase-MarielKov.git

}

<<<<<<< HEAD
class Mensajeria {

	var property ramBase
	var property gastoBateria
	var property chats 
	var property ramOcupada = 0
	var property ramPorChat

	method ramUsada() = ramOcupada + ramPorChat * chats
	

	method bateriaUsada(minutos) = minutos * gastoBateria * chats

}

=======
>>>>>>> branch 'master' of https://github.com/algo1unsam/celu-con-clase-MarielKov.git
class Calculadora {

	var property ramOcupada = 10
	var property gastoBateria = 0

<<<<<<< HEAD
	method ramUsada() = ramOcupada 
	

	method bateriaUsada(minutos) = minutos * gastoBateria 
	
}

class Videos {

	var property ramOcupada = 6 * videos
	var property gastoBateria = 2
	var property videos

	method ramUsada() = 100.min(ramOcupada * videos)
	

	method bateriaUsada(minutos) = gastoBateria * minutos
=======
}

class Videos {

	var property ramOcupada = 6 * videos
	var property gastoBateria = 2
	var property videos = 10
	var property limiteAlcanzado = false

	method agregarVideos(n) {
		videos += n
		ramOcupada = ramOcupada * videos
		return if (ramOcupada == 100) {
			limiteAlcanzado = true
		} else {
		}
	}
>>>>>>> branch 'master' of https://github.com/algo1unsam/celu-con-clase-MarielKov.git

}

