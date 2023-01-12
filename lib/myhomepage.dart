import 'package:flutter/material.dart';

class myhomepage extends StatefulWidget {
  const myhomepage({super.key});

  @override
  State<myhomepage> createState() => _myhomepageState();
}

bool _obscureSolde = true;
String solde = '1.500 F';

class _myhomepageState extends State<myhomepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //  floating: true,
             pinned: true,
            expandedHeight: 100,
            backgroundColor: const Color.fromARGB(255, 71, 73, 205),
            leading: const Icon(Icons.settings),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(solde,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
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
                          color: Colors.white,size: 20,
                        ),
                      ),
                      // const TransactionSection(),
                ],
              ),
            ),
          ),
         SliverToBoxAdapter(
          child: 
          Column(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        color: const Color.fromARGB(255, 71, 73, 205),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: -70,
                        top: 0,
                        child: Container(
                       alignment: Alignment.center,
                       margin: const EdgeInsets.only(top: 80),
                       height: 50,
                      // width:  414,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        ),
                       )
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      // right: 50,
                      bottom: 50,
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'lib/assets/wavecard.png',
                          width: 300,
                          height: 150,
                        ),
                      )
                    ),
                  ],
                 )
                ],
              ),
              Container(
              // width: 250,
               decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), ),
                  color: Colors.white,
                ),
              child: Column(
                children: [
                  Row(
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
                  children: List.filled(20, 5)
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
          ),
         )
        ],
      ),
    );
  }
}