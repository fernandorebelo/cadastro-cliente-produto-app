import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/util/componentes.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  TextEditingController textoLogin = TextEditingController();
  TextEditingController textoSenha = TextEditingController();

  fazLogin() {
    if (textoLogin.text == 'admin' && textoSenha.text == 'admin') {
      // Navigator.of(context).pushNamed('/admin');
      Navigator.of(context).pushReplacementNamed('/admin');
      print('Logado como Admin');
    } else if (textoLogin.text == 'cliente' && textoSenha.text == 'cliente') {
      Navigator.of(context).pushReplacementNamed('/cliente');
      print('Logado como Cliente');
    } else {
      print('Não foi logado...');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Componentes().criaTextoInput(
                'Login', textoLogin, TextInputType.emailAddress, false),
            Componentes().criaTextoInput(
                'Senha', textoSenha, TextInputType.number, true),
            Componentes().criaBotao('Entrar', 300, 50, fazLogin),
          ],
        ),
      ),
    );
  }
}
