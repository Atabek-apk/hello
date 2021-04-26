import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Named Routes Demo',
      ),
    );

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[500],
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context, '/second');
          },
        ),
        title: Text('TAPTAP',
            style: TextStyle(
                fontFamily: 'Varela', fontSize: 20.0, color: Colors.white)),
      ),
      body: Container(
        color: Colors.indigo[300],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: CircleAvatar(
                    child: Icon(
                      Icons.done,
                      size: 130,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.indigo[500],
                    radius: 100.0),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 36, 0, 0),
                child: Text(
                  'D O G R Y',
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text(
                    'Indiki soraga geç',
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
