import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/entidades/produto.dart';

class TelaClienteFormulario extends StatelessWidget {
  final Produto produto;

  const TelaClienteFormulario({super.key, required this.produto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Descrição'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          leading: Text(produto.nome),
          title: Text('Valor ${produto.valor}'),
          subtitle: Text(produto.descricao),
          onTap: (() {}),
        ),
      ),
    );
  }
}
