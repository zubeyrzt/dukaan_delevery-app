import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            // big logo
            Padding(
                padding: const EdgeInsets.only(
                  left: 100.0,
                  right: 100.0,
                  top: 120,
                  bottom: 20,
                ),
                child: const Image(
                  image: AssetImage('lib/images/grocery.png'),
                )),

            // we deliver groceries at your doorstep
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                'kusoo dhowow dukankena  ee deleveriga  ',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),

            // groceree gives you fresh vegetables and fruits
            Text(
              'macmacaan fresh ah',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),

            const SizedBox(height: 24),

            const Spacer(),

            // get started button
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: const Color.fromARGB(255, 112, 91, 222),
                  ),
                  child: Center(
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
