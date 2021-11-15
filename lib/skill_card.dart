import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SkillCard extends StatelessWidget {
  final skillType;
  final skills;
  const SkillCard({Key? key, this.skillType, this.skills}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              skillType,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                letterSpacing: 2
              ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: skills.map<Widget>((skill) {
              return Card(
                child: ListTile(
                  horizontalTitleGap: 0,
                  tileColor: Colors.grey[200],
                  title: Text(skill),
                  leading: Container(
                    alignment: Alignment.centerLeft,
                    width: 5,
                    child: const Icon(
                        Icons.circle,
                      color: Colors.black,
                      size: 12,
                    ),
                  ),
                ),
              );
              // return SizedBox(
              //   height: 30,
              //   child: Text(
              //     '>> $skill',
              //     style: const TextStyle(
              //       fontSize: 20,
              //     ),
              //   ),
              // );
            }).toList()
          ),
          const Divider(
            height: 30,
            thickness: 5,
          )
        ],
      ),
    );
  }
}
