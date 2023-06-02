import 'package:bernard/FirstScreen.dart';
import 'package:flutter/material.dart';

import 'model/Usuario.dart';

class SecondScreen extends StatelessWidget {
  late Usuario usuario;
  SecondScreen(Usuario usuario, {super.key}){
      this.usuario=usuario;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seja bem vindo '+usuario.nome),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) =>  FirstScreen(),
              ),
            );
          },
          child: const Text('Retornar a tela 1'),
        ),
      ),
    );
  }
}
