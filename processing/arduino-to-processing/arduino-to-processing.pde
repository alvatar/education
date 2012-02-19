/*
 * Minimal code for communicating Arduino with Processing
 *
 * for the Processing and the Arduino environments
 * Author: Alvaro Castro-Castilla
 * Date: 22 November 2010
 */
 
/// Código de arduino

void setup() {
	// inicializar las comunicaciones
	Serial.begin(9600);
}

void loop() {
	// enviar los datos (en este caso enviamos lo que se encuentra en el pin A0)
	Serial.println(analogRead(A0));
	// esperar 10 milisegundos, para que se estabilice (paso necesario)
	delay(10);
}

/// Código de processing

/*
import processing.serial.*;

// El puerto serie, por donde las comunicaciones se van a producir
Serial port;

void setup () {
	///
	/// <---- PON AQUÍ EL CÓDIGO DE SETUP (INICIALIZACIÓN) QUE QUIERAS
	///

	// abrir el puerto serie para las comunicaciones
	port = new Serial(this, Serial.list()[0], 9600);
	
	// le dice a Processing que lea los datos que envía Arduino hasta el salto de línea
	port.bufferUntil('\n');
}

void draw () {
	// AHORA EL CÓDIGO DE DIBUJADO IRÁ EN serialEvent, no aquí, para que se dibuje cuando
	// lleguen datos del Arduino
}

void serialEvent (Serial port) {
	
	// leer los datos que envía Arduino hasta el salto de línea
	String inString = port.readStringUntil('\n');

	// si hay datos, hace las siguientes operaciones:
	if (inString != null) {
		// eliminar espacios en blanco
		inString = trim(inString);
		// convierte los datos de entrada en número (float) usables
		float inByte = float(inString);

		// OPCIONAL: nos aseguramos de que los valores que vienen en el rango 0-1023, se mappeen
		// al rango que queramos, en este caso, desde cero hasta la altura del espacio de dibujo
		inByte = map(inByte, 0, 1023, 0, height);

		///
		/// <---- PON AQUÍ EL CÓDIGO DE DRAW (CICLO DE DIBUJADO) QUE QUIERAS
		///

	}
}
*/
