import 'package:ecommerce_ui/pages/login_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: GestureDetector(
        onTap: () {
          final route =
              MaterialPageRoute(builder: (context) => const LoginPage());
          Navigator.push(context, route);
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "WELCOME\n TO\n SHOPPERS",
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 33,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 41, left: 65, right: 50),
                  child: Image.asset(
                    "images/welcome.png",
                    width: MediaQuery.of(context).size.height * 0.40,
                    height: MediaQuery.of(context).size.height * 0.50,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
