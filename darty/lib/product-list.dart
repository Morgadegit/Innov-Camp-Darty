import 'package:darty/add-product.dart';
import 'package:darty/product.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: Image.asset('images/logo.png')),
        const Text(
          'Bonjour, Gérard !',
          style: TextStyle(fontSize: 32),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          height: MediaQuery.of(context).size.height * 59 / 100,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red), color: Colors.white),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Frigo()),
                ),
                  child :Container(
                  height: 150,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0x80050505))),
                  child: Row(children: [
                    Image.asset('images/frigo.jpg'),
                    Column(
                      children: [
                        const Text(
                          'Réfrigirateur\nPROLINE PLC163WH',
                          style: TextStyle(fontSize: 22),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          children: [
                            Image.asset('images/picto-choix-durable.png'),
                            const SizedBox(width: 20),
                            Image.asset('images/energy.png', height: 40)
                          ],
                        )
                      ],
                    )
                  ]))),
            ],
          ),
        ),
        ElevatedButton(onPressed: () => {Navigator.pushNamed(context, '/frigo')}, child: const Text('Ajouter un Produit'))
      ],
    );
  }
}
