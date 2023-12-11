import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 213, 222),
      appBar: AppBar(
        title: Text('main page'),
      backgroundColor: Colors.pink[100],
      ),
      drawer: Drawer(
        backgroundColor:Color.fromARGB(255, 236, 213, 222),
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/'),
              ),
              accountName: Text('useer 46'),
              accountEmail: Text(''),
            ),
            ListTile(
              title: Text('Oficial Store'),
              subtitle: Text(''),
              trailing: Icon(Icons.chevron_right),
              leading: Icon(Icons.store),
              onTap: (){
                Navigator.pushNamed(context, "/temp");
              },
            ),
            ListTile(
              title: Text('planetas'),
              subtitle: Text('transiciones'),
              trailing: Icon(Icons.chevron_right),
              leading: Icon(Icons.info),
              onTap: (){
                Navigator.pushNamed(context, "/int");
              },
            ),
            ListTile(
              title: Text('Movie APP'),
              subtitle: Text('Lista de peliculas'),
              trailing: Icon(Icons.chevron_right),
              leading: Icon(Icons.movie),
              onTap: (){
                Navigator.pushNamed(context, "/movie");
              },
            )
          ],
        ),
      ),
    );
  }
}