import 'package:flutter/material.dart';


class oficialstore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _oficialstore();
  }
} 
class _oficialstore extends State<oficialstore> { 
 @override 
 Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Store'),
        elevation: 0,
        backgroundColor:  Colors.pink[100],
        leading: Row(
          children: <Widget>[
            SizedBox(
              width: 5.0,
            ),
            IconButton(
              color: Colors.black,
              icon: const Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                 Navigator.pushNamed(context, "/dash");
              },
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 236, 213, 222),
    ),
  );
}
}