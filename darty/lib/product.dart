import 'package:flutter/material.dart';

class Frigo extends StatelessWidget {
  const Frigo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 2)),
            child: Column(
              children: [
                Row(children: [
                  Image.asset('images/frigo.jpg', width: 100),
                  Flexible(child :Column(
                    children: [
                      const Text(
                        'Réfrigirateur PROLINE PLC163WH',
                        overflow: TextOverflow.fade,
                        maxLines: 2,
                        softWrap: true,
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 15),
                      Row(children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                              border:
                              Border.all(width: 2, color: Colors.green)),
                          child: const Center(child: Text('CO²\n40%')),
                        ),
                        const SizedBox(width: 7),
                        Container(
                            height: 80,
                            width: 80,
                            padding: const EdgeInsets.fromLTRB(8, 0, 6, 0),
                            decoration: BoxDecoration(
                                borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                                border:
                                Border.all(width: 2, color: Colors.blue)),
                            child: Image.asset('images/energy.png')),
                        const SizedBox(width: 7),
                        Image.asset('images/french.png', width: 54)
                      ]),
                      const SizedBox(height: 15),
                      const Text('Cet appareil a été acheté il y a 1 an et 3 mois',
                        overflow: TextOverflow.fade,
                        maxLines: 2,
                        softWrap: true),
                      const SizedBox(height: 5),
                      const Text('Durée de vie moyenne : 15 ans'),
                      const SizedBox(height: 5),
                      const Text('Durée de garantie restante : 1 an et 9 mois',
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                          softWrap: true)
                    ],
                  ),)
                ]),
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Column(children: [
                      Row(
                          children: [
                            Row(children:[
                              ElevatedButton(onPressed: () => true, child: const Icon(Icons.calendar_today_sharp)),
                              const SizedBox(width: 5),
                              const Text('Nettoyage intégral \nprévu dans deux semaines',
                                  style: TextStyle(color: Colors.orange))
                            ])
                          ]),
                      const SizedBox(height:220),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () => true, child: const Text('Réparation')),
                          const SizedBox(width: 100),
                          ElevatedButton(
                              onPressed: () => true, child: const Text('Entretien'))
                        ],
                      ),
                    ]))
              ],
            ))
      );
  }
}
