import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/routes/app_router.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 80,
                  color: Colors.white,
                ),
                // SizedBox(height: 10),
                Text(
                  'Your Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'your.email@example.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              context.router.push(const HomeRoute());
            },
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on),
            title: Text('Credit'),
            onTap: () {
              context.router.push(const KycUpdateRoute());
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Navigate to the Settings page or perform any action
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Perform logout logic
            },
          ),
        ],
      ),
    );
  }
}
