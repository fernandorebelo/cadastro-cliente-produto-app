import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/entidades/produto.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/util/componentes.dart';

class TelaAdminCadastroProduto extends StatefulWidget {
  List<Produto>? listaPodutos;
  Function? atualizaPagina;
  TelaAdminCadastroProduto({Key? key, this.listaPodutos, this.atualizaPagina})
      : super(key: key);

  @override
  State<TelaAdminCadastroProduto> createState() =>
      _TelaAdminCadastroProdutoState();
}

class _TelaAdminCadastroProdutoState extends State<TelaAdminCadastroProduto> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController textoNome = TextEditingController();
  TextEditingController textoValor = TextEditingController();
  TextEditingController textoDescricao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    limparCampos() {
      textoNome.text = '';
      textoValor.text = '';
      textoDescricao.text = '';
    }

    cadastrarProduto() {
      if (_formKey.currentState!.validate()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Produto cadastrado')),
        );
        limparCampos();
      }
      // String nome = textoNome.text;
      // double valor = double.parse(textoValor.text);
      // String descricao = textoDescricao.text;
      // Produto produto = Produto(nome, valor, descricao);
      // widget.listaPodutos?.add(produto);
      // widget.atualizaPagina!();
      // Navigator.pop(context);
    }

    return Scaffold(
      appBar: Componentes().criaAppBarIcone(
        'Cadastro de Produtos',
        20,
        Colors.white,
        const Icon(Icons.refresh_rounded),
        'Limpar campos',
        limparCampos,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Componentes()
                .criaTexto('Preencha os campos abaixo', 25, Colors.grey),
            Componentes()
                .criaTextoInput('Nome', textoNome, TextInputType.text, false),
            Componentes().criaTextoInput(
                'Valor', textoValor, TextInputType.number, false),
            Componentes().criaTextoInput(
                'Descrição', textoDescricao, TextInputType.text, false),
            Componentes().criaBotaoForm(
                'Cadastrar produto', 200, 50, cadastrarProduto, _formKey),
          ],
        ),
      ),
    );
  }
}
