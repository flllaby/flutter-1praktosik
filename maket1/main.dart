import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,   // убирает жёлточерн ленту эту 
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 159, 159),
      body: SafeArea(
        child: SingleChildScrollView(         
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Row(
                  children: [
                    const Text(
                      '8:55',
                      style: TextStyle(color: Colors.white),
                    ),
                    const Spacer(),
                    const Icon(Icons.signal_cellular_4_bar, size: 20, color: Colors.white),
                    const SizedBox(width: 8),
                    const Icon(Icons.wifi, size: 20, color: Colors.white),
                    const SizedBox(width: 8),
                    const Icon(Icons.battery_full, size: 20, color: Colors.white),
                  ],
                ),
              ),

              const SizedBox(height: 90),

              // Заголовок
              const Text(
                'medinow',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Text(
                'Meditate With Us!',
                style: TextStyle(color: Colors.white),
              ),

              const SizedBox(height: 50),

              // кнопочко первая
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Sign in with Apple',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // вторая кнопочко
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 198, 247, 247),
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Continue with Email or Phone',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Text( // БАРЫШНИКОВ
                'Continie With Google', // БАРЫШНИКОВ
                style: TextStyle(color: Colors.white), // ЭТО СКРИНШОТ БАРЫШНИКОВА МОЕ П-6-24
              ), // БАРЫШНИКОВ

              const SizedBox(height: 60), // БАРЫШНИКОВ

              Padding( // БАРЫШНИКОВ
                padding: const EdgeInsets.all(20), // БАРЫШНИКОВ
                child: Image.asset('img/image.png'), // БАРЫШНИКОВ 
              ), // П-6-24

              const SizedBox(height: 30), //ДУМАЮ ДОСТАТОЧНО
            ],
          ),
        ),
      ),
    );
  }
}