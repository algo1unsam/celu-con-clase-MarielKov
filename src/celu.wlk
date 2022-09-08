class Celular {

	var property ramOcupada
	var property gastoBateria
	var property ramTotal = 1000
	var property bateria = 100

	method abrirApp() {
		ramTotal = ramTotal - ramOcupada
		bateria = bateria - gastoBateria
	}

}

class Spotify {

	var property ramOcupada = 2 * canciones
	var property gastoBateria = 2
	var property canciones = 30
	var property limiteAlcanzado = false

	method agregarCanciones(n) {
		canciones += n
		ramOcupada = ramOcupada * canciones
		return if (ramOcupada == 50) {
			limiteAlcanzado = true
		} else {
		}
	}

}

class Wsp {

	var property ramOcupada
	var property gastoBateria
	var property chats = 2

	method nuevoChat() {
		chats += 1
		gastoBateria = gastoBateria * chats
	}

}

