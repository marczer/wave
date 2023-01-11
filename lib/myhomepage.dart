import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// bool _obscureText = true;
bool _obscureSolde = true;
String solde = '1.500 F';

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 71, 73, 205),
          leading: const Icon(Icons.settings),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: const Color.fromARGB(255, 71, 73, 205),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: solde,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (_obscureSolde == true) {
                              solde = '1.500 F';
                              _obscureSolde = false;
                            } else {
                              solde = '•••••••••';
                              _obscureSolde = true;
                            }
                          });
                        },
                        icon: Icon(
                          _obscureSolde
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.white,
                        ),
                      ),
                      // const TransactionSection(),
                    ],
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 50,
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 80),
                      height: 100,
                      // width:  414,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      // child: Container(),
                    ),
                  ),
                  Positioned(
                      right: 50,
                      bottom: 10,
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'lib/assets/wavecard.png',
                          width: 300,
                          height: 150,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              // width: 250,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromARGB(255, 223, 230, 255),
                          ),
                          width: 70,
                          height: 70,
                          margin: const EdgeInsets.only(bottom: 5),
                          padding: const EdgeInsets.all(15),
                          child: const Icon(Icons.person)),
                      const Text(
                        'Transfert',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromARGB(255, 223, 230, 255),
                          ),
                          width: 70,
                          height: 70,
                          margin: const EdgeInsets.only(bottom: 5),
                          padding: const EdgeInsets.all(15),
                          child: const Icon(Icons.shopping_bag)),
                      const Text(
                        'Paiements',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 241, 241, 241),
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: List.filled(20, 0)
                      .map(
                        (e) => const ListTile(
                          title: Text(
                            'Retrait',
                            style: TextStyle(
                              color: Color.fromARGB(255, 71, 73, 205),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'septembre 30',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Text('- 5000F'),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        )));
  }
}
