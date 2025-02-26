import 'package:flutter/material.dart';
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  var cards=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        itemCount: cards,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index){
          return Card(
            color: Colors.deepPurpleAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Card',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                    ),
                    SizedBox(width: 30.0,height: 30.0),
            ],
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      cards-=1;
                    });
                  },
                  icon: Icon(Icons.delete, size: 30.0,),
                )
              ],

            ),
          ],
          ),
          );
        },

      ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.pink[400],
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                cards+=1;
              });
            }
        ),
    );
  }
}