class Celular {

	var property ramTotal = 1000
	var property bateria = 100
	var property apagar = false

	var property apps = []
	var wsp = new Mensajeria(ramBase = 40, gastoBateria = 1, ramPorChat = 5, chats = 2)
	var telegram = new Mensajeria(ramBase = 30, gastoBateria = 1, ramPorChat = 4,chats = 5)
	var reproductor = new Musica(canciones = 30)
	var calculadora = new Calculadora()
	var youtube = new Videos(videos = 10)

	method abrirApp(app) {
		apps.add(app)

}
	method ramEnUso() = ramTotal - apps.sum{ app => app.ramUsada()}


	method usoPorMinuto(minutos) {
		return if (bateria <= 0) {
			apagar = true
			
			}
			else {bateria - apps.sum{ app => app.bateriaUsada() }}
			}



}


class Musica {

	var property ramOcupada = 2 * canciones
	var property gastoBateria = 2
	var property canciones
	

	method ramUsada() = 50.min(ramOcupada * canciones)
	

	method bateriaUsada(minutos) = gastoBateria * minutos



class Mensajeria {

	var property ramBase
	var property gastoBateria
	var property chats 
	var property ramOcupada = 0
	var property ramPorChat

	method ramUsada() = ramOcupada + ramPorChat * chats
	

	method bateriaUsada(minutos) = minutos * gastoBateria * chats

}


class Calculadora {

	var property ramOcupada = 10
	var property gastoBateria = 0


	method ramUsada() = ramOcupada 
	

	method bateriaUsada(minutos) = minutos * gastoBateria 
	
}

class Videos {

	var property ramOcupada = 6 * videos
	var property gastoBateria = 2
	var property videos

	method ramUsada() = 100.min(ramOcupada * videos)
	

	method bateriaUsada(minutos) = gastoBateria * minutos

}



