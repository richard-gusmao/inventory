import 'package:flutter/material.dart';
import 'package:inventory/screens/product_detail_screen.dart';

import 'add_product_scren.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          title: Text(
            "Inventory",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
          leading: Icon(
            Icons.shopping_bag,
            size: 40,
            color: Colors.black,
          )),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search Something",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(),
                width: double.infinity,
                child: Card(
                  color: const Color.fromARGB(255, 228, 238, 246),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("hello"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "All Products",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 12,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 300,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ProductDetailScreen(),
                          ),
                        );
                      },
                      child: Container(
                        child: Card(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 228, 238, 246),
                                ),
                                child: Image.asset(
                                  "assets/box.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                      width: double.infinity,
                                    ),
                                    Text(
                                      "EQUIPMENT",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "256",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddProductScreen(),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (_) {
          setState(() {
            currentPageIndex = _;
          });
        },
        currentIndex: currentPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
              ),
              label: "Products"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
