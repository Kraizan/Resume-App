import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final projectTitle;
  final projectOverview;

  const ProjectCard({Key? key, this.projectTitle, this.projectOverview}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
      decoration: ShapeDecoration(shape: Border.all(
          color: Colors.amber,
          width: 4
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  projectTitle,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                    projectOverview
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}
