import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/entidades/produto.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/telas/telaAdminCadastroProduto.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/telas/telaClienteFormulario.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/util/componentes.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({super.key});

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  List<Produto> listaProdutos = [
    Produto("Maçã", 6.0, 'Fruta'),
    Produto("Chuchu", 3.0, 'Legume'),
    Produto("Maçã", 6.0, 'Fruta'),
    Produto("Chuchu", 3.0, 'Legume'),
    Produto("Maçã", 6.0, 'Fruta'),
    Produto("Chuchu", 3.0, 'Legume'),
    Produto("Maçã", 6.0, 'Fruta'),
    Produto("Chuchu", 3.0, 'Legume'),
    Produto("Maçã", 6.0, 'Fruta'),
    Produto("Chuchu", 3.0, 'Legume'),
  ];

  listaProdutosPagina() {
    Navigator.of(context).pushNamed('/formulario');
  }

  deslogar() {
    Navigator.of(context).pushNamed('/');
  }

  atualizaPagina() {
    setState(() {});
  }

  limpar() {
    setState(
      () {
        listaProdutos = [];
      },
    );
  }

  enviaDescricao(index) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaClienteFormulario(
          produto: listaProdutos[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Produtos'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: atualizaPagina,
            tooltip: 'Atualizar lista',
          ),
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            onPressed: deslogar,
            tooltip: 'Sair',
          ),
        ],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(5),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 1,
        children: <Widget>[
          listaProdutos.length > 0
              ? ListView.builder(
                  itemCount: listaProdutos.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 150,
                      width: 150,
                      child: Card(
                        elevation: 5,
                        child: ListTile(
                          leading: Text('Item ${index + 1}'),
                          title: Text(listaProdutos[index].nome),
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TelaClienteFormulario(
                                  produto: listaProdutos[index],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    );
                  },
                )
              : const Center(child: Text('Sem itens cadastrados.')),
        ],
      ),
    );
  }
}
