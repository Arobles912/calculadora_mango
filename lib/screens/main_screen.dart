import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String textoPantalla = '0';
  String operacionActual = '';
  double numeroActual = 0.0;
  double resultado = 0.0;
  List<double> lista = [];

  void _presionarBoton(String texto) {
    setState(() {
      if (texto == '1') {
        if (textoPantalla == '0') {
          textoPantalla = texto;
        } else {
          textoPantalla += texto;
        }
      } else if (texto == '2') {
        if (textoPantalla == '0') {
          textoPantalla = texto;
        } else {
          textoPantalla += texto;
        }
      } else if (texto == '3') {
        if (textoPantalla == '0') {
          textoPantalla = texto;
        } else {
          textoPantalla += texto;
        }
      } else if (texto == '4') {
        if (textoPantalla == '0') {
          textoPantalla = texto;
        } else {
          textoPantalla += texto;
        }
      } else if (texto == '5') {
        if (textoPantalla == '0') {
          textoPantalla = texto;
        } else {
          textoPantalla += texto;
        }
      } else if (texto == '6') {
        if (textoPantalla == '0') {
          textoPantalla = texto;
        } else {
          textoPantalla += texto;
        }
      } else if (texto == '7') {
        if (textoPantalla == '0') {
          textoPantalla = texto;
        } else {
          textoPantalla += texto;
        }
      } else if (texto == '8') {
        if (textoPantalla == '0') {
          textoPantalla = texto;
        } else {
          textoPantalla += texto;
        }
      } else if (texto == '9') {
        if (textoPantalla == '0') {
          textoPantalla = texto;
        } else {
          textoPantalla += texto;
        }
      } else if (texto == '0') {
        if (textoPantalla == '0') {
          textoPantalla = texto;
        } else {
          textoPantalla += texto;
        }
      } else if (texto == '⌫') {
        if (textoPantalla == '0') {
          textoPantalla == '0';
        } else {
          if (textoPantalla.length > 0) {
            textoPantalla = textoPantalla.substring(0, textoPantalla.length - 1);
          }
        }
      } else if (texto == '+') {
        operacionActual = '+';
        numeroActual = double.parse(textoPantalla);
        lista.add(numeroActual);
        textoPantalla = '0';
      } else if (texto == '-') {
        operacionActual = '-';
        numeroActual = double.parse(textoPantalla);
        lista.add(numeroActual);
        textoPantalla = '0';
      } else if (texto == 'x') {
        operacionActual = 'x';
        numeroActual = double.parse(textoPantalla);
        lista.add(numeroActual);
        textoPantalla = '0';
      } else if (texto == '÷') {
        operacionActual = '÷';
        numeroActual = double.parse(textoPantalla);
        lista.add(numeroActual);
        textoPantalla = '0';
      } else if (texto == '.') {
        if (!textoPantalla.contains('.')) {
          textoPantalla += texto;
        }
      } else if (texto == '=') {
        numeroActual = double.parse(textoPantalla);
        lista.add(numeroActual);
        for (int i = 0; i < lista.length; i++) {
          double numero = lista[i];
          if (i == 0) {
            resultado = numero;
          } else {
            if (operacionActual == '+') {
              resultado = resultado + numero;
            } else if (operacionActual == '-') {
              resultado = resultado - numero;
            } else if (operacionActual == 'x') {
              resultado = resultado * numero;
            } else if (operacionActual == '÷') {
              resultado = resultado / numero;
            }
          }
        }
        textoPantalla = resultado.toString();
        if (resultado == resultado.truncateToDouble()) {
          textoPantalla = resultado.truncate().toString();
        }
        lista.clear();
        resultado = 0.0;
        operacionActual = '';
      } else if (texto == 'C') {
        textoPantalla = '0';
        lista.clear();
        resultado = 0.0;
        operacionActual = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.only(top: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.only(bottom: 130.0),
                    child: const Text(
                      'Calculadora Mango',
                      style: TextStyle(fontSize: 24.0),
                    )),
                Align(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 136, 184, 252),
                    border: Border.all(
                        color: const Color.fromARGB(255, 3, 15, 65),
                        width: 3.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  margin: const EdgeInsets.only(bottom: 5.0),
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    textoPantalla,
                    style: const TextStyle(fontSize: 36.0),
                  ),
                )),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 136, 184, 252),
                    border: Border.all(
                        color: Color.fromARGB(255, 3, 15, 65),
                        width: 3.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          BotonCalculadora('%', _presionarBoton),
                          BotonCalculadora('CE', _presionarBoton),
                          BotonCalculadora('C', _presionarBoton),
                          BotonCalculadora('⌫', _presionarBoton),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          BotonCalculadora('7', _presionarBoton),
                          BotonCalculadora('8', _presionarBoton),
                          BotonCalculadora('9', _presionarBoton),
                          BotonCalculadora('÷', _presionarBoton),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          BotonCalculadora('4', _presionarBoton),
                          BotonCalculadora('5', _presionarBoton),
                          BotonCalculadora('6', _presionarBoton),
                          BotonCalculadora('x', _presionarBoton),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          BotonCalculadora('1', _presionarBoton),
                          BotonCalculadora('2', _presionarBoton),
                          BotonCalculadora('3', _presionarBoton),
                          BotonCalculadora('-', _presionarBoton),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          BotonCalculadora('0', _presionarBoton),
                          BotonCalculadora('.', _presionarBoton),
                          BotonCalculadora('=', _presionarBoton),
                          BotonCalculadora('+', _presionarBoton),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BotonCalculadora extends StatelessWidget {
  final String texto;
  final Function(String) onPressed;

  BotonCalculadora(this.texto, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(3.0),
        height: 60.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            backgroundColor: Color.fromARGB(255, 7, 30, 130),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          child: Text(
            texto,
            style: const TextStyle(fontSize: 24.0),
          ),
          onPressed: () => onPressed(texto),
        ),
      ),
    );
  }
}
