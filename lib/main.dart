import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//Noms des membres du groupe:
//Kalancia T MARTIN
//Wilkens BADIO
//Samuel OVIDE
//Ricardo AMAZAN
//Elischama DORY
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyMarket());
  }
}

class MyMarket extends StatefulWidget {
  const MyMarket({super.key});

  @override
  State<MyMarket> createState() => _MyMarketState();
}

class _MyMarketState extends State<MyMarket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EBoutiKoo"),
        backgroundColor: Color.fromARGB(255, 33, 201, 243),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.payment)),
          Text("PEYE")
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("EBoutiKoo"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Konekte"),
            ),
            ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text("Lis Pwodui"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductListPage()));
                }

//                 },
                ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Dekonekte"),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              color: const Color.fromARGB(255, 4, 43, 75),
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child:
                    Text("Kategori 1", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 120,
              width: double.infinity,
              color: const Color.fromARGB(255, 4, 43, 75),
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child:
                    Text("Kategori 2", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        color: const Color.fromARGB(255, 4, 43, 75),
                      ),
                      Container(
                          color: Colors.white,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Savon"),
                                SizedBox(height: 8),
                                Text(
                                    "Lore khjkds jdajksakjmmdn f kajn bknda kjAhbikfs jnviknbsf hjbiffvbc")
                              ]))
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        color: const Color.fromARGB(255, 4, 43, 75),
                      ),
                      Container(
                          color: Colors.white,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Savon"),
                                SizedBox(height: 8),
                                Text(
                                    "Lore khjkds jdajksakjmmdn f kajn bknda kjAhbikfs jnviknbsf hjbiffvbc")
                              ]))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Pour les produits
class ProductListPage extends StatefulWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lis Pwodui'),
        backgroundColor: Color.fromARGB(255, 33, 201, 243),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.payment)),
          Text("PEYE")
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(children: [
          for (int i = 0; i < 2; i++)
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          color: const Color.fromARGB(255, 4, 43, 75),
                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Savon"),
                              SizedBox(height: 8),
                              Text(
                                  "Lore khjkds jdajksakjmmdn f kajn bknda kjAhbikfs jnviknbsf hjbiffvbc"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          color: const Color.fromARGB(255, 4, 43, 75),
                        ),
                        Container(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Savon"),
                              SizedBox(height: 8),
                              Text(
                                  "Lore khjkds jdajksakjmmdn f kajn bknda kjAhbikfs jnviknbsf hjbiffvbc"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
        ]),
      ),
    );
  }
}

//Detay paj
class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detay'),
          backgroundColor: Color.fromARGB(255, 33, 201, 243),
          actions: [
            IconButton(onPressed: null, icon: Icon(Icons.payment)),
            Text("PEYE")
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(children: [
              Expanded(
                child: Container(
                  height: 50,
                  color: const Color.fromARGB(255, 4, 43, 75),
                ),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: Container(
                    height: 50,
                    color: Colors.white,
                    child: Text(
                        "njknvinsvifsnjfosngvokkmlvmsflmfklmgvlondgoldjndaubhfhidfsjnvjfhgjkjfknfvihnvrfnsivnuiwrnvsdinidsndisnudfsrhyeyewiuerihydycnbenbyebcvyueueyyueehhuehehueugudgfuhfeufheyuerwhfhfrvjuefgugyfuewfgyfgettyefueyuhe")),
              ),
            ])));
  }
}
