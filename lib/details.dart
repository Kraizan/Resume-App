import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class TextLabel extends StatelessWidget {
  final textLabel;
  const TextLabel({Key? key, this.textLabel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
      child: Text(
        textLabel,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}

class TextField extends StatelessWidget {
  final textField;
  const TextField({Key? key, this.textField}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
      child: Text(
        textField,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}



class DetailsPage extends StatelessWidget{
  const DetailsPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Personal Details'),
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/IMG-20210803-WA0018.jpg'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.call,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '+91-7727984699',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.email,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                    'vanshajbhatnagar24@gmail.com',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextLabel(textLabel: 'Full Name : '),
                    TextLabel(textLabel: 'Date of Birth : '),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextField(textField: 'Vanshaj Bhatnagar'),
                    TextField(textField: '24/01/2003',)
                  ],
                ),
              ],
            ), 
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            const Divider(
              height: 50,
              thickness: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Education',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        letterSpacing: 2
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExpandablePanel(
                        header: const Text(
                            'Class X - 2018-2019',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        collapsed: const Text(
                            'St. Anselm\'s Pink City Sr. Sec. School, Malviya Nagar, Jaipur',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        expanded: const Text('St. Anselm\'s Pink City Sr. Sec. School, Malviya Nagar, Jaipur'),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExpandablePanel(
                        header: const Text(
                          'Class XII - 2020-2021',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        collapsed: const Text(
                          'St. Anselm\'s Pink City Sr. Sec. School, Malviya Nagar, Jaipur',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        expanded: Row(
                          children: [
                            Column(
                              children: const [
                                TextField(textField: 'Informatics Practices : '),
                                TextField(textField: 'Physics : '),
                                TextField(textField: 'Chemistry : '),
                                TextField(textField: 'Maths : '),
                                TextField(textField: 'English : '),
                              ],
                            ),
                            Column(
                              children: const [
                                TextField(textField: '97/100'),
                                TextField(textField: '92/100'),
                                TextField(textField: '90/100'),
                                TextField(textField: '95/100'),
                                TextField(textField: '94/100'),
                              ],
                            )
                          ],
                        )
                    ),
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}