import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/util/componentes.dart';

class TelaClienteFormulario extends StatefulWidget {
  const TelaClienteFormulario({super.key});

  @override
  State<TelaClienteFormulario> createState() => _TelaClienteFormularioState();
}

class _TelaClienteFormularioState extends State<TelaClienteFormulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBar('Lista de produtos', 20, Colors.white),
    );
  }
}
