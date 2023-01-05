import 'package:flutter/material.dart';
import 'package:getscouted_ui/create_profile.dart';
import 'package:getscouted_ui/login_page.dart';
import 'package:getscouted_ui/player_comp.dart';
import 'package:getscouted_ui/home_page.dart';

class navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Admin'),
            accountEmail: Text('Admin@lsbu.ac.uk'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRbiMjUoOxJCAMB9poSO2wLg34m7OxmyaT-A&usqp=CAU',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              )),
            ),
          ),
          ListTile(
            leading: Icon(Icons.house),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.handshake),
            title: Text('Player Comparison'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlayerComp()));
            },
          ),
          ListTile(
            leading: Icon(Icons.content_paste_sharp),
            title: Text('View Reports'),
            onTap: () => print('fav'),
          ),
          ListTile(
            leading: Icon(Icons.group_add_rounded),
            title: Text('Create Profile'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreateProfile()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => print('fav'),
          ),
          SizedBox(
            height: 200,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sign Out'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
