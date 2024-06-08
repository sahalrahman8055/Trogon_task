import 'package:flutter/material.dart';

import 'widget/hometop_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeTopWidget(
              name: "John",
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildOptionWidget(
                      'Exam', Icons.school, const Color(0xFFE75D7D)),
                  buildOptionWidget('Practice', Icons.edit, Color(0xFFFCB215)),
                  buildOptionWidget('Materials', Icons.book, Color(0xFF38B4D5)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Courses',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'see all',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      buildCourse('KTET', "assets/avatarimage/img1.png",
                          Color.fromRGBO(79, 212, 211, 1.0)),
                      buildCourse('LP/UP/HST', "assets/avatarimage/img2.png",
                          Color(0xFFFFE285)),
                      buildCourse('SET', "assets/avatarimage/img3.png",
                          Color(0xFFEDB26A)),
                      buildCourse('NET', "assets/avatarimage/img4.png",
                          Color(0xFFFBADAE)),
                      buildCourse('Montessori', "assets/avatarimage/img5.png",
                          Color(0xFFB798FC)),
                      buildCourse('Crash Course', "assets/avatarimage/img6.png",
                          Color(0xFFF955A6)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.yellow[100],
                    child: Row(
                      children: [
                        const Icon(Icons.book, size: 50),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Practice With Previous Year Question Papers',
                                style: TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Start Now'),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/home.png",
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Latest Test Series',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  buildTestSeries('Exam 102 - Biology', 90, 120, Colors.purple),
                  buildTestSeries('Exam 102 - Maths', 80, 120, Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'My Course',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Analysis',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 1,
        onTap: (index) {},
      ),
    );
  }

  Widget buildOptionWidget(String title, IconData icon, Color color) {
    return Container(
      height: 100,
      width: 100,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon),
          Text(title),
        ],
      ),
    );
  }

  Widget buildCourse(String title, String image, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: color,
          child: Image.asset(image),
        ),
        const SizedBox(height: 5),
        Text(title, textAlign: TextAlign.center),
      ],
    );
  }

  Widget buildTestSeries(
      String title, int questions, int duration, Color color) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Text('$questions questions  $duration mins'),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: color),
              onPressed: () {},
              child: const Text('Attempt Now'),
            ),
          ],
        ),
      ),
    );
  }
}
