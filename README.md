# Se me cuelga el celu
 
[![Build Status](https://travis-ci.org/wollok/clasesElCelu.svg?branch=master)](https://travis-ci.org/wollok/clasesElCelu)

Actualizado a Wollok 1.8

## Ejercicio introductorio a clases

**Tests, Objetos, clases, colecciones**

En el celular s3Mini pueden estar abiertas muchas aplicaciones a la vez. Obvio que tiene un límite de memoria RAM de 1000 MB. Cuando una app se abre, queda corriendo en el teléfono, ocupando RAM, y gastando batería.

Las apps que existen son:
- Whatsapp. Ocupa 40Mb base y 5Mb por cada conversación en progreso. Gasta 1% de batería por cada conversación en progreso.
- Reproductor de música. Ocupa 2Mb por cada canción en la lista de reproducción, aunque está optimizado para ocupar 50Mb máximo, por más que la lista sea muy larga. Gasta 2% de batería por estar prendida.
- La calculadora siempre ocupa 10Mb, y no gasta batería por estar abierta.

Se desea:

Conocer la memoria RAM libre del s3Mini.
Simular que se usa el celular por un minuto, lo que produce que se gaste la batería (los porcentajes descritos arriba son por minuto).
¡No repetir lógica ni siquiera en los tests!

### Parte A) 

Hacer la codificación necesaria y los siguientes tests:
Sobre la memoria libre:
- El s3Mini con Whatsapp (dos conversaciones) y el reproductor (30 canciones), tiene 900 MB de RAM libres.
- El s3Mini si tiene sólo la calculadora abierta tiene 990 Mb de RAM libres.

Sobre el gasto de batería:
- El s3Mini con Whatsapp (dos conversaciones) y el reproductor (30 canciones), al usarse un minuto queda con 96% de batería.
- El s3Mini con sólo la calculadora abierta al usarse tres minutos queda con 100% de batería. 

### Parte B) 
Ahora existe la aplicación YouTube, que ocupa 6Mb por cada video en la lista de reproducción, aunque está optimizado para ocupar 100Mb máximo, por más que la lista sea muy larga. Gasta 2% de batería por estar prendida.

Hacer un test que pruebe que el s3Mini con Youtube (10 videos) y la calculadora, al usarse un minuto el celular, queda con 98% de batería.

Ahora existe la aplicación Telegram, que ocupa 30Mb base y 4Mb por cada conversación en progreso. Gasta 1% de batería por cada conversación en progreso.

Hacer un test que pruebe que el s3Mini con Telegram (5 conversaciones) y YouTube como en el punto anterior abiertos, tiene 890 MB libres.

### Parte C) 

¿Qué debería suceder si intento usar el celular con 0 batería? Escribir un test.

Codificar el método que “abre” una aplicación determinada. Escribir los tests que se consideren necesarios
