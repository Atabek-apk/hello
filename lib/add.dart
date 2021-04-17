// import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Goşmak'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   TextEditingController textController = new TextEditingController();

//   List<Todo> taskList = new List();

//   @override
//   void initState() {
//     super.initState();

//     DatabaseHelper.instance.queryAllRows().then((value) {
//       setState(() {
//         value.forEach((element) {
//           taskList.add(Todo(id: element['id'], title: element["title"]));
//         });
//       });
//     }).catchError((error) {
//       print(error);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         alignment: Alignment.topLeft,
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(hintText: "Tekst giriz !!!"),
//                     controller: textController,
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.add),
//                   onPressed: _addToDb,
//                 )
//               ],
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: Container(
//                 child: taskList.isEmpty
//                     ? Container()
//                     : ListView.builder(itemBuilder: (ctx, index) {
//                         if (index == taskList.length) return null;
//                         return ListTile(
//                           title: Text(taskList[index].title),
//                           leading: Text(taskList[index].id.toString()),
//                         );
//                       }),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   void _addToDb() async {
//     String task = textController.text;
//     var id = await DatabaseHelper.instance.insert(Todo(title: task));
//     setState(() {
//       taskList.insert(0, Todo(id: id, title: task));
//     });
//   }
// }

// class DatabaseHelper {
//   static final _databaseName = "todo.db";
//   static final _databaseVersion = 1;

//   static final table = 'todo';

//   static final columnId = 'id';
//   static final columnTitle = 'title';

//   DatabaseHelper._privateConstructor();
//   static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

//   static Database _database;
//   Future<Database> get database async {
//     if (_database != null) return _database;
//     _database = await _initDatabase();
//     return _database;
//   }

//   _initDatabase() async {
//     String path = join(await getDatabasesPath(), _databaseName);
//     return await openDatabase(path,
//         version: _databaseVersion, onCreate: _onCreate);
//   }

//   Future _onCreate(Database db, int version) async {
//     await db.execute('''
//           CREATE TABLE $table (
//             $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
//             $columnTitle FLOAT NOT NULL
//           )
//           ''');
//   }

//   Future<int> insert(Todo todo) async {
//     Database db = await instance.database;
//     var res = await db.insert(table, todo.toMap());
//     return res;
//   }

//   Future<List<Map<String, dynamic>>> queryAllRows() async {
//     Database db = await instance.database;
//     var res = await db.query(table, orderBy: "$columnId DESC");
//     return res;
//   }
// }

// class Todo {
//   int id;
//   String title;

//   Todo({this.id, this.title});

//   Map<String, dynamic> toMap() {
//     return {'id': id, 'title': title};
//   }
// }
