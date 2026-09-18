import 'package:flutter/material.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
      ),
      home: const CourseDetailPage(),
    );
  }
}

class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({super.key});

  static const Color primaryBlue = Color(0xFF4A4AF4);
  static const Color badgeGrey = Color(0xFFEDEDF7);
  static const Color badgeBlueBg = Color(0xFF3A3AD6);
  static const Color textDark = Color(0xFF1A1A2E);
  static const Color textGrey = Color(0xFF8A8A9E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),

                    // ну эт так стрелка с 3д десигне и этим как его ща, басик во 
                    _buildTopBar(),

                    const SizedBox(height: 18),

                    // вот эта здоровая плавующая картинка фиолетовая
                    Container(
                      width: double.infinity,
                      height: 190,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1A1A5E),
                        borderRadius: BorderRadius.circular(18),
                        image: const DecorationImage(
                          image: AssetImage('img/imageg.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    _buildBadges(),

                    const SizedBox(height: 18),

                    const Text(
                      '3D Design Basic',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: textDark,
                      ),
                    ),

                    const SizedBox(height: 14),

                    const Text(
                      'In this course you will learn how to build a space to a 3-'
                      'dimensional product. There are 24 premium learning '
                      'videos for you.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        color: textGrey,
                      ),
                    ),

                    const SizedBox(height: 22),

                    Row(
                      children: const [
                        Text(
                          '24 Lessons (20 hours)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: textDark,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 14,
                            color: primaryBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),

                    _buildLessonCard(
                      title: 'Introduction to 3D',
                      duration: '20 mins',
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),

            // кнопка с деьгами
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryBlue,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Enroll - \$24.99',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  // кнопочко назад ну эта стрелка кароче < и 3д дезигн басик 

  Widget _buildTopBar() {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xFFEDEDF7),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 16,
            color: textDark,
          ),
        ),
        const SizedBox(width: 16),
        const Text(
          '3D Design Basic',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: textDark,
          ),
        ),
      ],
    );
  }

  // штучке все эти маленькие типа звезд, рейтинги эти всякие ну кароче да
 
  Widget _buildBadges() {
    return Row(
      children: [
        // Рейтинг
        _buildBadge(
          icon: Icons.star,
          iconColor: primaryBlue,
          label: '4.569',
          background: badgeGrey,
          textColor: textDark,
        ),
        const SizedBox(width: 8),

        // Звёзды
        _buildBadge(
          icon: Icons.star,
          iconColor: primaryBlue,
          label: '4.9',
          background: badgeGrey,
          textColor: textDark,
        ),
        const SizedBox(width: 8),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
          decoration: BoxDecoration(
            color: badgeBlueBg,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            'Best Seller',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBadge({
    required IconData icon,
    required Color iconColor,
    required String label,
    required Color background,
    required Color textColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, size: 14, color: iconColor),
          const SizedBox(width: 5),
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }

  // Карточка урока этого 
  Widget _buildLessonCard({
    required String title,
    required String duration,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: const Color(0xFF7B4FE0),
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage('img/imoggeg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 14),

          // Название и длительность
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: textDark,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  duration,
                  style: const TextStyle(fontSize: 12, color: textGrey),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.check_circle_outline,
            size: 24,
            color: primaryBlue,
          ),
        ],
      ),
    );
  }
}