import 'package:flutter/material.dart';
import 'package:getscouted_ui/register_page.dart';
import 'package:getscouted_ui/login_page.dart';
import 'package:getscouted_ui/navbar.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbar(),
      appBar: AppBar(
        title: Text('Create Profile'),
        backgroundColor: Colors.blue,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: Center(
          child: Text('Welcome User',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0)),
        ),
      ),
    );
  }
}
