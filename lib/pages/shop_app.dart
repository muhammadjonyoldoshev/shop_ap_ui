import 'package:flutter/material.dart';

class ShopApp extends StatefulWidget {
  static const id = "apple_shop";

  const ShopApp({Key? key}) : super(key: key);

  @override
  State<ShopApp> createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {
  final List<String> _listItem = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpeg',
    'assets/images/image_3.jpeg',
    'assets/images/image_4.webp',
    'assets/images/image_5.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade900,
      // #appBar
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Apple Products",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          splashRadius: 25,
          icon: const Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              child: const Center(
                child: Text(
                  "7",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),

      // #body
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // #header
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/image_5.webp"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // #Lifestyle sale
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Lifestyle sale",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),

                    // #Shop Now
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 45,
                        width: 290,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // #center body
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/image_1.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/image_3.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                // #favrite icon
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/image_4.webp"),
                    fit: BoxFit.cover,
                  ),
                ),
                // #favrite icon
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/image_2.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                // #favrite icon
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}