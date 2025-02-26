import 'package:flutter/material.dart';
class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          Card(
        margin: EdgeInsets.fromLTRB(10.0,20.0,10.0,0),
        color: Colors.deepPurple,
        child: Column(
          children: [
            Text(
          'Card',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
            SizedBox(height: 100.0),
            Text(
              'Title',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.white,
              ),
            ),
      ],
        ),
        ),
      ],
        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 50.0),
          ElevatedButton(
            onPressed: (){},
            child: Text(
              'Show Answer',
          style: TextStyle(
              fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          ),
          ElevatedButton(onPressed: (){},
              child: Icon(Icons.navigate_next,
              size: 30.0
              ),
          )
        ],
      ),
    );
  }
}
