import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Componentes {
  criaAppBar(conteudo, tamanho, cor) {
    return AppBar(
      title: criaTexto(conteudo, tamanho, cor),
      centerTitle: true,
    );
  }

  criaTexto(conteudo, tamanho, cor) {
    return Text(
      conteudo,
      style: TextStyle(
        fontSize: tamanho,
        color: cor,
      ),
    );
  }

  criaBotao(conteudo, largura, altura, funcao) {
    return SizedBox(
      width: largura,
      height: altura,
      child: ElevatedButton(
        onPressed: funcao,
        child: criaTexto(conteudo, 20, Colors.white),
      ),
    );
  }

  criaTextoInput(conteudo, controlador, textInputType, senhaTrueFalse) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: controlador,
        keyboardType: textInputType,
        obscureText: senhaTrueFalse,
        decoration: InputDecoration(
          labelText: conteudo,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
