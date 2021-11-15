import 'package:flutter/material.dart';
import 'package:myapp/skill_card.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          SkillCard(
            skillType: 'Language',
            skills: ['English', 'Hindi'],
          ),
          SkillCard(
            skillType: 'Programming',
            skills: ['Dart', 'Flutter', 'Python', 'Tkinter', 'Pandas', 'NumPy', 'Matplotlib', 'C++', 'HTML', 'CSS', 'JavaScript', 'React'],
          ),
          SkillCard(
            skillType: 'Soft Skills',
            skills: ['Quick Learner', 'Communication', 'Teamwork', 'Project Management', 'Leadership', 'Adaptability', 'Problem Solving', 'Work Ethic'],
          ),
        ],
      )
    );
  }
}
