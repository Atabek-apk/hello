import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Named Routes Demo',
      ),
    );

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[500],
        centerTitle: true,
        title: Text('TAPTAP'),
      ),
      body: Container(
        color: Colors.indigo[300],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  '2 - nji kömek',
                  style: TextStyle(fontSize: 50.0, color: Colors.white),
                ),
              ),
              Container(
                height: 275,
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                padding: EdgeInsets.symmetric(horizontal: 55.0),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.indigo[500],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0),
                        bottomLeft: Radius.circular(25.0))),
                child: Center(
                  child: Text(
                    'Geçmişi öz içine alýar !',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(70, 100, 0, 190),
                    child: CircleAvatar(
                      backgroundColor: Colors.indigo[500],
                      child: IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.navigate_before,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/first_card');
                        },
                      ),
                      radius: 25.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 100, 0, 190),
                    child: TextButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/second');
                      },
                      child: Text(
                        'OK',
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(35, 100, 0, 190),
                    child: CircleAvatar(
                      backgroundColor: Colors.indigo[500],
                      child: IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.navigate_next,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/third_card');
                        },
                      ),
                      radius: 25.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
