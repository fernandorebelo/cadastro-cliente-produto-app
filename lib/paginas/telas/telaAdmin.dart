import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/util/componentes.dart';

class TelaAdmin extends StatefulWidget {
  const TelaAdmin({super.key});

  @override
  State<TelaAdmin> createState() => _TelaAdminState();
}

class _TelaAdminState extends State<TelaAdmin> {
  cadastrarProduto() {
    Navigator.of(context).pushNamed('/cadastroproduto');
  }

  cadastroCliente() {
    Navigator.of(context).pushNamed('/cadastrocliente');
  }

  deslogar() {
    Navigator.of(context).pushNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBarIcone(
        'Tela Admin',
        20,
        Colors.white,
        const Icon(Icons.logout_rounded),
        'Sair',
        deslogar,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Componentes()
                .criaBotao('Cadastrar Produto', 200, 50, cadastrarProduto),
            const Padding(padding: EdgeInsets.all(10)),
            Componentes()
                .criaBotao('Cadastrar Cliente', 200, 50, cadastroCliente),
            const Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ),
    );
  }
}
