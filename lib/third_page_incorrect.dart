import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Named Routes Demo',
      ),
    );

class ThirdScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[500],
        elevation: 0.0,
        centerTitle: true,
        title: Text('TAPTAP',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 20.0,
              color: Colors.white,
            )),
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
                      Icons.clear,
                      size: 130,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.indigo[500],
                    radius: 100.0),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 36, 0, 0),
                child: Text(
                  'N Ä D O G R Y',
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
                color: Colors.indigo[500],
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text(
                    'Täzeden barla',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
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
