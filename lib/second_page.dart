import 'package:flutter/material.dart';
import 'package:hello/third_page_incorrect.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Named Routes Demo',
      ),
    );

class SecondScreen extends StatefulWidget {
  SecondScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _counter = 0;
  final textController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
              centerTitle: false,
              backgroundColor: Colors.indigo[500],
              title: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('TAP TAP'),
                    ),
                    Container(
                      child: Text('Utuş: $_counter TMT',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 20.0,
                              color: Colors.white)),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(
                          Icons.dehaze,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/menu');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: Container(
              color: Colors.indigo[300],
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 140,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                        'Sorag №1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          margin: EdgeInsets.fromLTRB(10, 0, 5, 5),
                          padding: EdgeInsets.fromLTRB(35, 30, 35, 0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.indigo[500],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0))),
                          child: Column(
                            children: [
                              TextButton(
                                child: Column(
                                  children: [
                                    Text(
                                      '1 - nji',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      'Kömek',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/first_card');
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          margin: EdgeInsets.fromLTRB(5, 0, 10, 5),
                          padding: EdgeInsets.fromLTRB(35, 30, 35, 0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.indigo[500],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0))),
                          child: Column(
                            children: [
                              TextButton(
                                child: Column(
                                  children: [
                                    Text(
                                      '2 - nji',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      'Kömek',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/second_card');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          margin: EdgeInsets.fromLTRB(10, 0, 5, 5),
                          padding: EdgeInsets.fromLTRB(35, 30, 35, 0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.indigo[500],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0))),
                          child: Column(
                            children: [
                              TextButton(
                                child: Column(
                                  children: [
                                    Text(
                                      '3 - nji',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      'Kömek',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/third_card');
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          margin: EdgeInsets.fromLTRB(5, 0, 10, 5),
                          padding: EdgeInsets.fromLTRB(35, 30, 35, 0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.indigo[500],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0))),
                          child: Column(
                            children: [
                              TextButton(
                                child: Column(
                                  children: [
                                    Text(
                                      '4 - nji',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      'Kömek',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/four_card');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          margin: EdgeInsets.fromLTRB(10, 0, 5, 5),
                          padding: EdgeInsets.fromLTRB(35, 30, 35, 0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.indigo[500],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          child: Column(
                            children: [
                              TextButton(
                                child: Column(
                                  children: [
                                    Text(
                                      'Goşmaça',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      'Kömek',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: _incrementCounter,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 150,
                          margin: EdgeInsets.fromLTRB(5, 0, 10, 5),
                          padding: EdgeInsets.fromLTRB(35, 30, 35, 0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.indigo[500],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0))),
                          child: Column(
                            children: [
                              TextButton(
                                child: Column(
                                  children: [
                                    Text(
                                      'Goşmaça',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      'Kömek',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/second_card');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(70, 20, 0, 0),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 250,
                            child: TextFormField(
                              controller: textController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "WorkSansLight"),
                                filled: true,
                                hintText: 'Jogap',
                                suffixIcon: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      color: Colors.black,
                                      icon: Icon(Icons.arrow_forward),
                                      onPressed: () {
                                        if (textController != null &&
                                            textController.text == "adam") {
                                          Navigator.popAndPushNamed(
                                              context, '/third');
                                        } else {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ThirdScreens(),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
