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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meu app',
          // style: GoogleFonts.pacifico()
        ),
      ),
      body: Center(
          child: Text(
        generateNumber.toString(),
        // style: GoogleFonts.acme(fontSize: 20),
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                setState(() {
                  generateNumber =
                      GenerateRandomNumberService.generateRandomNumber(100000);
                })
              },
          child: const Icon(Icons.add_box)),
    );
  }
}
