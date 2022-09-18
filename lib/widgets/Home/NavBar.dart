import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('lib/assets/user2.jpg'))
            ),
          ),




















          ListTile(
            leading: Icon(Icons.subject, color: Colors.white),
            title: Text('Subjects',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:16
                )),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.calendar_month, color: Colors.white),
            title: Text('Time Table',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:16
                )),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.auto_graph, color: Colors.white),
            title: Text('History',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:16
                )),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text('settings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:16
                )),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.white),
            title: Text('Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:16
                )),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.question_mark, color: Colors.white),
            title: Text('How To Use',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:16
                )),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.bug_report_sharp, color: Colors.white),
            title: Text('Report',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:16
                )),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.rate_review_rounded,color: Colors.white),
            title: Text('Rate App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:16
                )),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
