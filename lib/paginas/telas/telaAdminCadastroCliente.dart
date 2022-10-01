import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/util/componentes.dart';

class TelaAdminCadastroCliente extends StatefulWidget {
  const TelaAdminCadastroCliente({super.key});

  @override
  State<TelaAdminCadastroCliente> createState() =>
      _TelaAdminCadastroClienteState();
}

class _TelaAdminCadastroClienteState extends State<TelaAdminCadastroCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBar('Cadastro de Cliente', 20, Colors.white),
    );
  }
}
