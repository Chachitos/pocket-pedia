import 'package:flutter/material.dart';
import 'package:pocketpedia/widgets/app_navbar.dart';
import 'package:pocketpedia/widgets/material/app_text_field.dart';
import 'package:pocketpedia/widgets/material/main_button.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Image.asset(
              'assets/logo.png', 
              height: 100,
            ),
            const SizedBox(height: 24),

            Text(
              '¡Hola de nuevo!',
              style: textTheme.displayLarge, 
            ),
            const SizedBox(height: 8),

            Container(
              width: 300,
              child: Text(
                'Es un gusto verte de nuevo en tu espacio de aprendizaje.',
                style: textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),

            AppTextField(
              hintText: 'Username, Email or Phone Number',
            ),
            const SizedBox(height: 16),

            AppTextField(
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password ?',
                    style: textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            MainButton(
              text: "Sign In",
              navigateTo: AppNavbar(),
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 3,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/material/login_divider.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    'Or Sign up With',
                    style: textTheme.bodySmall?.copyWith(
                      color: Colors.grey[700],
                    ),
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
                        image: AssetImage("assets/material/login_divider.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 235, 233, 236),
                    ),
                  ),
                  icon: Image.asset(
                    'assets/externals/google.png',
                    height: 25,
                  ),
                  iconSize: 40,
                  onPressed: () {
                    
                  },
                ),
                const SizedBox(width: 16),
                IconButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 235, 233, 236),
                    ),
                  ),
                  icon: Image.asset(
                    'assets/externals/facebook.png',
                    height: 25,
                  ),
                  iconSize: 40,
                  onPressed: () {
                    
                  },
                ),
                const SizedBox(width: 16),
                IconButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 235, 233, 236),
                    ),
                  ),
                  icon: Image.asset(
                    'assets/externals/apple.png',
                    height: 25,
                  ),
                  iconSize: 40,
                  onPressed: () {
                    
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
