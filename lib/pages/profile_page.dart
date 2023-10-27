import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: CircleAvatar(
            radius: 100,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: 30,
                ),
                title: Text('tejas.s.u_'),
                subtitle: Text(
                  'This is not your username or pin.',
                ),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(
                  Icons.call,
                  size: 30,
                ),
                title: Text('Phone'),
                subtitle: Text(
                  '+91 8277318798',
                ),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(
                  Icons.mail_rounded,
                  size: 30,
                ),
                title: Text('E-mail'),
                subtitle: Text(
                  'tejas_s.u@yahoo.com',
                ),
                trailing: Icon(Icons.edit),
              ),
            ],
          ),
        )
      ],
    );
  }
}
