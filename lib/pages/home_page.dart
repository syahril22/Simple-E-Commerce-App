import 'package:ecommerce_ui/models/product.dart';
import 'package:ecommerce_ui/pages/detail_product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> product = [
    Product(1, "Adidas Shoe", "Rs. 20000.00", "images/product1.png",
        "Gear up with the latest collections from adidas Originals, Running, Football, Training. With over 20,000+ products, you will never run out of choice. Grab your favorites now.Secure Payments. 100% Original Products.Gear up with adidas."),
    Product(2, "Smart Watch", "Rs. 20000.00", "images/product4.png",
        "adidas Originals, Running, Football, Training. "),
    Product(3, "Adidas Shoe", "Rs. 20000.00", "images/product3.png",
        "With over 20,000+ products, you will never"),
    Product(4, "Smart Watch", "Rs. 20000.00", "images/product4.png",
        "run out of choice. Grab your favorites now."),
    Product(5, "Adidas Shoe", "Rs. 20000.00", "images/product1.png",
        "Secure Payments. 100% Original Products."),
    Product(6, "Smart Watch", "Rs. 20000.00", "images/product3.png",
        "Gear up with adidas."),
  ];
  final color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: _refreshPage,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 25,
              childAspectRatio: 1 / 1.6),
          itemCount: product.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 10),
              child: GestureDetector(
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) =>
                          DetailProduct(product: product[index]));
                  Navigator.push(context, route);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 6,
                          offset: Offset(0, 0),
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          product[index].image,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        product[index].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        product[index].price,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

Future<void> _refreshPage() async {
  await Future.delayed(Duration(seconds: 2));
}
