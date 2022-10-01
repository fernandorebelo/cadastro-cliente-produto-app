import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/util/componentes.dart';

class TelaAdminCadastroProduto extends StatefulWidget {
  const TelaAdminCadastroProduto({super.key});

  @override
  State<TelaAdminCadastroProduto> createState() =>
      _TelaAdminCadastroProdutoState();
}

class _TelaAdminCadastroProdutoState extends State<TelaAdminCadastroProduto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBar('Cadastro de Produto', 20, Colors.white),
    );
  }
}
