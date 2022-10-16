import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/entidades/cliente.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/util/componentes.dart';

class TelaAdminCadastroCliente extends StatefulWidget {
  List<Cliente>? listaClientes;
  // List<Produto>? listaProdutos;
  Function? atualizaPagina;
  TelaAdminCadastroCliente({Key? key, this.listaClientes, this.atualizaPagina})
      : super(key: key);

  @override
  State<TelaAdminCadastroCliente> createState() =>
      _TelaAdminCadastroClienteState();
}

class _TelaAdminCadastroClienteState extends State<TelaAdminCadastroCliente> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController textoNome = TextEditingController();
  TextEditingController textoEmail = TextEditingController();
  TextEditingController textoSenha = TextEditingController();

  cadastrarCliente() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Cliente cadastrado')),
      );
      limparCampos();
    }
    // String nome = textoNome.text;
    // String email = textoEmail.text;
    // String senha = textoSenha.text;
    // Cliente cliente = Cliente(nome, email, senha);
    // widget.listaClientes?.add(cliente);
    // widget.atualizaPagina!;
    // Navigator.pop(context);
  }

  limparCampos() {
    textoNome.text = '';
    textoEmail.text = '';
    textoSenha.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBarIcone(
        'Cadastro de clientes',
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
                'Email', textoEmail, TextInputType.emailAddress, false),
            Componentes()
                .criaTextoInput('Senha', textoSenha, TextInputType.url, true),
            // Componentes().criaBotao('Cadastrar', 200, 50, cadastrarCliente),
            Componentes().criaBotaoForm(
                'Cadastrar cliente', 200, 50, cadastrarCliente, _formKey),
          ],
        ),
      ),
    );
  }
}
