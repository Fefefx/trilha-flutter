import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/registration_data.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Main Page'),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegistrationData(
                                    text: "Meus Dados",
                                    data: ["Nome", "Endereço"],
                                  )));
                    },
                    child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: const Text('Dados cadastrais'))),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: const Text('Termos de uso e privacidade'))),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: const Text('Configurações'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
