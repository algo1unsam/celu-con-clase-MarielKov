class Celular {


	var property ramTotal = 1000
	var property bateria = 100

	method abrirApp(app) {
		ramTotal = ramTotal - app.ramOcupada()
		bateria = bateria - app.gastoBateria()
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

	var property ramOcupada = 40
	var property gastoBateria = 1
	var property chats = 2

	method nuevoChat() {
		chats += 1
		gastoBateria = gastoBateria * chats
	}

}

class Calculadora{
	
	var property ramOcupada = 10
	var property gastoBateria = 0
	
}