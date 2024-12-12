import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketpedia/widgets/app_navbar.dart';
import 'package:pocketpedia/widgets/material/main_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            // App Logo
            Image.asset(
              'assets/logo.png', // replace with your logo URL or local asset
              height: 100,
            ),
            const SizedBox(height: 24),

            // Greeting Text
            Text(
              '¡Hola de nuevo!',
              style: GoogleFonts.dmSans(
                  fontSize: 32,
                  color: const Color.fromARGB(255, 28, 28, 28),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              width: 300,
              child: Text(
                'Es un gusto verte de nuevo en tu espacio de aprendizaje.',
                style: GoogleFonts.dmSans(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),

            // Username TextField
            TextField(
              style: GoogleFonts.dmSans(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(18),
                hintStyle: GoogleFonts.dmSans(
                    color: const Color.fromARGB(255, 69, 67, 67),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                hintText: 'Username, Email or Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 16),

            // Password TextField
            TextField(
              style: GoogleFonts.dmSans(color: Colors.black, fontSize: 16),
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(18),
                hintStyle: GoogleFonts.dmSans(
                    color: const Color.fromARGB(255, 69, 67, 67),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 8),

            // Forgot Password
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Sign In Button
            MainButton(text: "Sign In",),
            const SizedBox(height: 24),
            // Sign up with divider
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 3,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              AssetImage("assets/material/login_divider.png"))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    'Or Sign up With',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Transform.flip(
                    flipX: true,
                    child: Container(
                      height: 3,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/material/login_divider.png"))),
                    )),
              ],
            ),
            const SizedBox(height: 30),

            // Social Sign In Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 235, 233, 236))
                      // backgroundColor: Colors.grey
                      ),
                  icon: Image.asset(
                    'assets/externals/google.png',
                    height: 25,
                  ),
                  iconSize: 40,
                  onPressed: () {
                    // Handle Google sign in
                  },
                ),
                SizedBox(width: 16),
                IconButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 235, 233, 236))
                      // backgroundColor: Colors.grey
                      ),
                  icon: Image.asset(
                    'assets/externals/facebook.png',
                    height: 25,
                  ),
                  iconSize: 40,
                  onPressed: () {
                    // Handle Facebook sign in
                  },
                ),
                SizedBox(width: 16),
                IconButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 235, 233, 236))
                      // backgroundColor: Colors.grey
                      ),
                  icon: Image.asset(
                    'assets/externals/apple.png',
                    height: 25,
                  ),
                  iconSize: 40,
                  onPressed: () {
                    // Handle Apple sign in
                  },
                ),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
