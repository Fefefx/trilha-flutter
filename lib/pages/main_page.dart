import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/page1.dart';
import 'package:trilhaapp/pages/page2.dart';
import 'package:trilhaapp/pages/page3.dart';
import 'package:trilhaapp/pages/registration_data.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int pagePosition = 0;

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
        body: Column(
          children: [
            Expanded(
              child: PageView(
                // scrollDirection: Axis.vertical,
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    pagePosition = value;
                  });
                },
                children: const [Page1(), Page2(), Page3()],
              ),
            ),
            BottomNavigationBar(
                currentIndex: pagePosition,
                onTap: (value) {
                  controller.jumpToPage(value);
                },
                items: const [
                  BottomNavigationBarItem(
                      label: 'Page1', icon: Icon(Icons.home)),
                  BottomNavigationBarItem(
                      label: 'Page2', icon: Icon(Icons.add)),
                  BottomNavigationBarItem(
                      label: 'Page3', icon: Icon(Icons.person)),
                ]),
          ],
        ),
      ),
    );
  }
}
