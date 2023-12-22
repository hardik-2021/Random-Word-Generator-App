import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        SizedBox(
          height: 10.0,
        ),
        ElevatedButton.icon(
            onPressed: () {}, icon: Icon(Icons.home), label: Text('Home')),
        SizedBox(
          height: 10.0,
        ),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.favorite),
            label: Text('Favourite')),
        SizedBox(
          height: 10.0,
        ),
        ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => profile()));
            },
            icon: Icon(Icons.person_2),
            label: Text('Profile'))
      ]),
    );
  }
}
