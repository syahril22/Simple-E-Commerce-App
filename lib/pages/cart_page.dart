import 'package:ecommerce_ui/models/product.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Product> product = [
    Product(1, "Adidas Shoe", "Rs. 20000.00", "images/product1.png",
        "Gear up with the latest collections from adidas Originals, Running, Football, Training. With over 20,000+ products, you will never run out of choice. Grab your favorites now.Secure Payments. 100% Original Products.Gear up with adidas."),
    Product(2, "Smart Watch", "Rs. 20000.00", "images/product4.png",
        "adidas Originals, Running, Football, Training. "),
    Product(3, "Adidas Shoe", "Rs. 20000.00", "images/product1.png",
        "Gear up with the latest collections from adidas Originals, Running, Football, Training. With over 20,000+ products, you will never run out of choice. Grab your favorites now.Secure Payments. 100% Original Products.Gear up with adidas."),
    Product(4, "Smart Watch", "Rs. 20000.00", "images/product3.png",
        "adidas Originals, Running, Football, Training. "),
  ];
  final color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.58,
          child: ListView.builder(
              padding: const EdgeInsets.all(4),
              itemCount: product.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Container(
                    height: 117,
                    width: 321,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: color,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 6,
                            offset: Offset(0, 0),
                          )
                        ]),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            product[index].image,
                            width: 136,
                            height:
                                117, // Sesuaikan tinggi dengan kotak kontainer
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              product[index].name,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            const Text("Qty: 1"),
                            const SizedBox(
                              height: 14,
                            ),
                            Text(
                              product[index].price,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
        const Divider(
          color: Colors.black,
          thickness: 1.0,
        ),
        const SizedBox(
          height: 25,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total :",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "Rs.40000.00",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          height: 50,
          width: 269,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFFF9EF05),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Text(
                "CHECKOUT",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
        )
      ],
    );
  }
}
