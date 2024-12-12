import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketpedia/pages/login/login_page.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Theme.of(context).colorScheme.primary,
              ),
              height: MediaQuery.of(context).size.height * 0.55,
              child: Center(
                child: Image.asset(
                  "assets/docs.png",
                  height: 350,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Text("¡Salva vidas!",
                style: GoogleFonts.dmSans(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 15,
            ),
            Text("Creando aprendizaje significativo",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  "De médicos para médicos, ¡Pocket Pedia es esa herramienta de estudio que necesitas para asentar tus conocimientos!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w400)),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Botón "Acceder"
                  Container(
                    height: 50,
                    width: 150,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                        // Acción para "Acceder"
                      },
                      style: TextButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Acceder',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  // Botón "Registro"
                  Container(
                    height: 50,
                    width: 150,
                    child: TextButton(
                      onPressed: () {
                        // Acción para "Registro"
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Registro',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
