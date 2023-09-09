import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/services/generate_random_number_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var generateNumber = 0;
  var quantityClick = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meu app',
          // style: GoogleFonts.pacifico()
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.cyan,
              child: const Text(
                "Ações do usuário",
                // style: GoogleFonts.acme(fontSize: 20),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.orange,
                child: Text(
                  "Foi clicado $quantityClick vezes",
                  // style: GoogleFonts.acme(fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.indigo,
                child: Text(
                  "O número gerado foi $generateNumber",
                  // style: GoogleFonts.acme(fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                            color: Colors.red, child: const Text("Nome: "))),
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: Colors.blue,
                            child: const Text("Felipe Pardim  "))),
                    Expanded(
                        flex: 2,
                        child: Container(
                            color: Colors.green, child: const Text("30"))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                setState(() {
                  quantityClick++;

                  generateNumber =
                      GenerateRandomNumberService.generateRandomNumber(100000);
                })
              },
          child: const Icon(Icons.add_box)),
    );
  }
}
