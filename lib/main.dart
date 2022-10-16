import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/telas/telaAdmin.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/telas/telaAdminCadastroCliente.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/telas/telaAdminCadastroProduto.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/telas/telaCliente.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/telas/telaClienteFormulario.dart';
import 'package:sistema_cadastro_clientes_produtos/paginas/telas/telaLogin.dart';

void main(List<String> args) {
  runApp(const AppSistemaCadastro());
}

class AppSistemaCadastro extends StatefulWidget {
  const AppSistemaCadastro({super.key});

  @override
  State<AppSistemaCadastro> createState() => _AppSistemaCadastroState();
}

class _AppSistemaCadastroState extends State<AppSistemaCadastro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const TelaLogin(),
        '/admin': (context) => const TelaAdmin(),
        '/cadastroproduto': (context) => TelaAdminCadastroProduto(),
        '/cadastrocliente': (context) => TelaAdminCadastroCliente(),
        '/cliente': (context) => const TelaCliente(),
        // '/formulario': (context) => TelaClienteFormulario(),
      },
    );
  }
}
