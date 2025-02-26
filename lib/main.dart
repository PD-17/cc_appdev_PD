import 'package:flutter/material.dart';
import 'screen_2.dart';
import 'screen_1.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: CC(),
));

class CC extends StatefulWidget {
  const CC({super.key});

  @override
  State<CC> createState() => _CCState();
}

class _CCState extends State<CC> {
  var myIndex=0;
  List<Widget>widgetList= const [
    Screen1(),
    Screen2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
            'FLASHCARD',
                style: TextStyle(
            fontWeight: FontWeight.bold,
                  fontFamily: 'Fonts',
                  color: Colors.white,
                  fontSize: 45.0,
                  letterSpacing: 2.0,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: IndexedStack(
        index: myIndex,
        children: widgetList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (index){
          setState(() {
            myIndex=index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.edit),
            label: 'Practise',
            backgroundColor: Colors.deepPurpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.square),
            label: 'Cards',
            backgroundColor: Colors.deepPurple,
          )
        ],
      ),
    );
  }
}
