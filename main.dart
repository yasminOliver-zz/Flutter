import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Já ouviu aquela frase: o que é seu tá guardado? Pois bem, agora procure o mapa do esconderijo.",
    "O importante não é ganhar, o que importa é competir sem perder, nem empatar.",
    "Pegue os limões que a vida te dá e faça uma bela caipirinha.",
    "Se a sua barriga não quer ficar chapada, fique você.",
    "O dinheiro não nos traz necessariamente a felicidade. Uma pessoa que tem dez milhões de dólares não é mais feliz do que a que tem só nove milhões.",
    "Pense como um boleto. Um boleto sempre vence!",
    "Vá atrás dos seus objetivos com a mesma agilidade que você corre para o banheiro quando está apertado.",
    "Deixe seus medos tão assustados quanto você, quando abre a fatura do seu cartão!",
    "Se a vida te der uma rasteira, pegue a coberta, tire um cochilo e depois vá em busca dos seus sonhos.",
    "Batatinha quando nasce se esparrama pelo chão, agir é mais importante do que ter motivação.",
    "Viva como se fosse morrer, porque você vai.",
    "Por pior que seja o buraco em que você se encontra, sorria. Porque ainda não tem terra por cima.",
    "Levanta a cabeça, princesa. Senão a coroa cai!",
    "Se falam de você pelas costas, é sinal que você tá na frente: continue!",
    "A vida é igual um lençol de elástico, quando você prende de um lado, solta do outro. Mesmo assim, não desista!",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma nova frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
      setState(() {
              _fraseGerada = _frases [numeroSorteado];
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        // decoration: BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset("android/app/images/frases.png"),
          Text(
            _fraseGerada, textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              color: Colors.black 
            ),
            ),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.pink[200],
              onPressed: _gerarFrase,
            )
        ],),
      ) ,),
    );
  }
}