import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imagemApp = AssetImage("imagens/padrao.png");
  var _resultado = "Escolha uma opcão abaixo";
  var _resultadoUsuario = "Você";
  var _resultadoAplicativo = "App";
  var _totalUsuario = 0;
  var _totalApp    = 0;

  void vezDoApp(String opcaoUsuario){

    var opcoes = ["pedra","papel","tesoura"];
    var indices = Random().nextInt(opcoes.length);
    var escolhidoApp = opcoes[indices];


    switch(escolhidoApp){
      case "pedra":
        setState(() {
          this._imagemApp = AssetImage("imagens/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._imagemApp = AssetImage("imagens/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._imagemApp = AssetImage("imagens/tesoura.png");
        });
        break;
    }


    if(opcaoUsuario == "pedra" && escolhidoApp == "tesoura" ||
       opcaoUsuario == "tesoura" && escolhidoApp == "papel" ||
       opcaoUsuario == "papel" && escolhidoApp == "pedra"
    )
      {
        setState(() {
          this._resultado = "Você venceu, parabéns :) !!!!";
          this._totalUsuario ++;
        });
      }
    else if (opcaoUsuario == escolhidoApp ){
      setState(() {
        this._resultado = "Empate !!!!";
        this._totalUsuario ++;
        this._totalApp ++;
      });
    }
    else{
      setState(() {
        this._resultado = "Perdeu, tente novamente!!!!";
        this._totalApp ++;
      });
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("iJokenPo",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Padding(
            padding: EdgeInsets.only( top: 32, bottom: 16),
            child: Text("Escolha do app",
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight:  FontWeight.bold
              ),
            ),
          ),
          Image(image: this._imagemApp,),



          Padding(
            padding: EdgeInsets.only( top: 32, bottom: 16),
            child: Text(this._resultado,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight:  FontWeight.bold
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              GestureDetector(
                onTap: () => vezDoApp("pedra"),
                child: Image.asset("imagens/pedra.png", height: 95,),
              ),
              GestureDetector(
                onTap: () => vezDoApp("papel"),
                child: Image.asset("imagens/papel.png", height: 95,),
              ),
              GestureDetector(
                onTap: () => vezDoApp("tesoura"),
                child: Image.asset("imagens/tesoura.png", height: 95,),
              ),

            ],
          ),

          Padding(
            padding: EdgeInsets.only( top: 16, bottom: 16),
            child: Text("Placar",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight:  FontWeight.bold
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

             Padding(

               padding: EdgeInsets.only( top: 8, bottom: 16),
               child: Text(this._resultadoUsuario,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                     fontSize: 20,
                     fontWeight:  FontWeight.bold
                 ),
               ),

             ),

              Padding(

                padding: EdgeInsets.only( top: 8, bottom: 16),
                child: Text(this._resultadoAplicativo,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight:  FontWeight.bold
                  ),
                ),

              )

            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[


              Padding(

                padding: EdgeInsets.only( top: 8, bottom: 16),
                child: Text(this._totalUsuario.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight:  FontWeight.bold
                  ),
                ),

              ),





              Padding(

                padding: EdgeInsets.only( top: 8, bottom: 16),
                child: Text(this._totalApp.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight:  FontWeight.bold
                  ),
                ),

              )

            ],
          ),




        ],
      ),
    );
  }
}



