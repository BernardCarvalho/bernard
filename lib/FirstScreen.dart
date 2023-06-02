import 'package:bernard/SecondScreen.dart';
import 'package:bernard/db/repositories/contracts/UsuarioRepository.dart';
import 'package:bernard/db/repositories/implementations/UsuarioRepositoryMocker.dart';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  final UsuarioRepository repository = UsuarioRepositoryMocker.mock();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: repository.getAll().map((e) => ElevatedButton(onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  SecondScreen(e),
              ),
            );
          }, child: Text(e.nome),)).toList(),
        )
        ));
  }
}
