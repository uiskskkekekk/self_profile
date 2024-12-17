import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        title: const Text("Skills"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,        // 每行两列
            crossAxisSpacing: 10,     // 水平间距
            mainAxisSpacing: 10,      // 垂直间距
            childAspectRatio: 1,      // 控制卡片宽高比
          ),
          itemCount: skills.length,
          itemBuilder: (context, index) {
            final skill = skills[index];
            return Card(
              elevation: 4,
              shadowColor: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    skill.imagePath,
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    skill.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class SkillCard {
  final String title;
  final String imagePath;
  SkillCard({
    required this.title,
    required this.imagePath,
  });
}

List<SkillCard> skills = [
  SkillCard(
    title: "Flutter",
    imagePath: 'img/flutter.png',
  ),
  SkillCard(
    title: "React",
    imagePath: 'img/react.png',
  ),
  SkillCard(
    title: "JavaScript",
    imagePath: 'img/javascript.png',
  ),
  SkillCard(
    title: "Java",
    imagePath: 'img/java.png',
  ),
  SkillCard(
    title: "C/C++",
    imagePath: 'img/c_c++.png',
  ),
  SkillCard(
    title: "Python",
    imagePath: 'img/python.png',
  ),
  SkillCard(
    title: "Solidity",
    imagePath: 'img/solidity.png',
  ),
  SkillCard(
    title: "Django",
    imagePath: 'img/django.png',
  ),
  // SkillCard(
  //   title: "Dart",
  //   imagePath: 'img/javascript.png',
  // ),
  // SkillCard(
  //   title: "UI Design",
  //   icon: Icons.design_services,
  // ),
  // SkillCard(
  //   title: "Git",
  //   icon: Icons.merge_type,
  // ),
];
