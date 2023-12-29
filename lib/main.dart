import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planning du salon"),
      ),
      body: Center(
        child: Text("Prochainement disponible"),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Asynconfsalon 2023")
          ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset("assets/images/images.jpg"),
            SvgPicture.asset(
              "assets/images/flutter_logo.svg",
              // color: Colors.blue,
              ),
            const Text(
              "Asynconfsalon 2023",
              style:TextStyle(
                fontSize: 42,
                fontFamily: 'Poppins'
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "Salon virtuel de l'informatique. Du 27 au 29 octobre 2023",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins'
              ),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton.icon(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                backgroundColor: MaterialStatePropertyAll(Colors.green)
              ),
              onPressed: () {
                Navigator.push(
                  context, 
                  PageRouteBuilder(pageBuilder: (_, __, ___) => EventPage())
                );
              }, 
              label: const Text(
                "Afficher le planning",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              icon: Icon(Icons.calendar_month)
              )
          ],

        ),
      ),
    );
  }
}