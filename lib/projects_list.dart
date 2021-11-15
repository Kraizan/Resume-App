import 'package:flutter/material.dart';
import 'package:myapp/project_card.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Projects'),
      ),
      body: ListView(
        children: const [
          ProjectCard(
              projectTitle: 'Employee & Leave Management System',
              projectOverview: 'GUI database management for employees and their annual leaves with graphical analysis and amazing sorting options.'
          ),
          ProjectCard(projectTitle: 'EProject', projectOverview: 'haha',),
          ProjectCard(projectTitle: 'EProject', projectOverview: 'lalallaa',),
          ProjectCard(projectTitle: 'EProject', projectOverview: 'haha',),
          ProjectCard(projectTitle: 'EProject', projectOverview: 'haha',),
          ProjectCard(projectTitle: 'EProject', projectOverview: 'haha',),
          ProjectCard(projectTitle: 'EProject', projectOverview: 'haha',),
        ],
      )
    );
  }
}
