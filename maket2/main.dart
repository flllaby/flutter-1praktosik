import 'package:flutter/material.dart';

void main() {
  runApp(const MeditateApp());
}

class MeditateApp extends StatelessWidget {
  const MeditateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditate',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
      ),
      home: const MeditateHomePage(),
    );
  }
}

class MeditateHomePage extends StatelessWidget {
  const MeditateHomePage({super.key});

  static const Color mintChip = Color(0xFFB8E6DC);
  static const Color bigCardYellow = Color(0xFFF3C544);
  static const Color smallCardOrange = Color(0xFFE89A3C);
  static const Color smallCardYellow = Color(0xFFF4C13D);
  static const Color smallCardBlue = Color(0xFF3B7DD8);
  static const Color smallCardTeal = Color(0xFF1FA89A);
  static const Color greyText = Color(0xFF8A8A8A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                // заголовок медитате и поиск
                Row(
                  children: const [
                    Text(
                      'Meditate',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.search, size: 26, color: Colors.black),
                  ],
                ),

                const SizedBox(height: 20),
                // категории
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      _CategoryChip(label: 'All', selected: true),
                      _CategoryChip(label: 'Bible In a Year'),
                      _CategoryChip(label: 'Dailies'),
                      _CategoryChip(label: 'Minutes'),
                      _CategoryChip(label: 'Novel'),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
                // жирни карточка
                const _BigCard(),

                const SizedBox(height: 20),
                // остальные мили 4 карточке
                Row(
                  children: const [
                    Expanded(
                      child: _SmallCard(
                        title: 'The Sleep Hour',
                        author: 'Ashna Mukherjee',
                        sessions: '3 Sessions',
                        color: smallCardOrange,
                        image: 'img/sleep_hour.png',
                      ),
                    ),
                    SizedBox(width: 14),
                    Expanded(
                      child: _SmallCard(
                        title: 'Easy on the Mission',
                        author: 'Peter Mach',
                        sessions: '5 minutes',
                        color: smallCardYellow,
                        image: 'img/mission.png',
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 14),

                Row(
                  children: const [
                    Expanded(
                      child: _SmallCard(
                        title: 'Relax with Me',
                        author: 'Amanda James',
                        sessions: '3 Sessions',
                        color: smallCardBlue,
                        image: 'img/relax.png',
                      ),
                    ),
                    SizedBox(width: 14),
                    Expanded(
                      child: _SmallCard(
                        title: 'Sun and Energy',
                        author: 'Micheal Hiu',
                        sessions: '5 minutes',
                        color: smallCardTeal,
                        image: 'img/sun_energy.png',
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//категории 
class _CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;

  const _CategoryChip({required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF1B7A6E) : const Color(0xFFB8E6DC),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: selected ? Colors.white : const Color(0xFF1B7A6E),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
// а эта жирни карта
class _BigCard extends StatelessWidget {
  const _BigCard();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 190,
          decoration: BoxDecoration(
            color: const Color(0xFFF3C544),
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('img/sun_moon.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),

        const SizedBox(height: 14),

        const Text(
          'A Song of Moon',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        const SizedBox(height: 4),

        const Text(
          'Start with the basics',
          style: TextStyle(fontSize: 14, color: Color(0xFF8A8A8A)),
        ),

        const SizedBox(height: 10),

        Row(
          children: const [
            Icon(Icons.favorite_border, size: 16, color: Color(0xFF8A8A8A)),
            SizedBox(width: 4),
            Text(
              '9 Sessions',
              style: TextStyle(fontSize: 13, color: Color(0xFF8A8A8A)),
            ),
            Spacer(),
            Text(
              'Start',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF1B7A6E),
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(Icons.chevron_right, size: 18, color: Color(0xFF1B7A6E)),
          ],
        ),
      ],
    );
  }
}
//мили категории
class _SmallCard extends StatelessWidget {
  final String title;
  final String author;
  final String sessions;
  final Color color;
  final String image;

  const _SmallCard({
    required this.title,
    required this.author,
    required this.sessions,
    required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 110,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Center(
              child: Image.asset(
                image,
                fit: BoxFit.contain,
                height: 80,
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),

        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        const SizedBox(height: 2),

        Text(
          author,
          style: const TextStyle(fontSize: 12, color: Color(0xFF8A8A8A)),
        ),

        const SizedBox(height: 8),

        Row(
          children: [
            const Icon(Icons.favorite_border,
                size: 13, color: Color(0xFF8A8A8A)),
            const SizedBox(width: 4),
            Text(
              sessions,
              style: const TextStyle(
                  fontSize: 11, color: Color(0xFF8A8A8A)),
            ),
            const Spacer(),
            const Text(
              'Start',
              style: TextStyle(
                fontSize: 11,
                color: Color(0xFF1B7A6E),
                fontWeight: FontWeight.w500,
              ),
            ),
            const Icon(Icons.chevron_right,
                size: 14, color: Color(0xFF1B7A6E)),
          ],
        ),
      ],
    );
  }
}