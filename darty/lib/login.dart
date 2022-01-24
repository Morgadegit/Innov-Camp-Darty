import 'package:flutter/material.dart';

import 'components.dart';
//import 'package:indexed/indexed.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Image.asset('images/logo.png')),
      Container(
        padding: const EdgeInsets.fromLTRB(50, 20, 50, 50),
        color: Colors.white,
        child: Column(children: [
          const SizedBox(height: 30),
          const Text('Bienvenue !',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  decoration: TextDecoration.none)),
          const SizedBox(height: 30),
          Form(
              child: Column(children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Identifiant du compte Darty'),
            ),
            TextFormField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                labelText: 'Mot de passe du compte Darty',
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                    onPressed: () => true, child: const Text('Valider')))
          ])),
          const SizedBox(height: 30),
          const Text('OU', style: TextStyle(color: Colors.red, fontSize: 50)),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NavBar())),
              child: const Text('Continuer sans compte'))
        ]),
      )
    ]));
  }
}
