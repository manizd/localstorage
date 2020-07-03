import 'package:flutter/material.dart';
import 'package:localstorage/databaseHelper.dart';
import 'package:localstorage/showSqfiteData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store in Local',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final txtNameCtrl = new TextEditingController();
  final txtAgeCtrl = new TextEditingController();
  final txtEmailCtrl = new TextEditingController();
  bool validate = false;

  final datbaseHelper = DatabaseHelper.instance;

  void saveTo(String saveTo) async {
    if (txtNameCtrl.text.isEmpty ||
        txtAgeCtrl.text.isEmpty ||
        txtEmailCtrl.text.isEmpty) {
      setState(() {
        validate = true;
      });
    } else {
      if (saveTo == 'sqfite') {
        Map<String, dynamic> row = {
          DatabaseHelper.columnName: txtNameCtrl.text,
          DatabaseHelper.columnAge: int.parse(txtAgeCtrl.text),
          DatabaseHelper.columnEmail: txtEmailCtrl.text,
        };
        final id = await datbaseHelper.insert(row);
        print('inserted row id: $id');
      }
      setState(() {
        txtNameCtrl.text = '';
        txtAgeCtrl.text = '';
        txtEmailCtrl.text = '';
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.dashboard),
        title: Text('Store in Local'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  controller: txtNameCtrl,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Enter Name',
                    labelText: 'Name',
                    errorText: validate ? 'Enter Text' : null,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  controller: txtAgeCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    icon: Icon(Icons.calendar_today),
                    hintText: 'Enter Age',
                    labelText: 'Age',
                    errorText: validate ? 'Enter Text' : null,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  controller: txtEmailCtrl,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Enter Email',
                    labelText: 'Email',
                    errorText: validate ? 'Enter Text' : null,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Save Data Using',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                  ),
                ),
              ),
              RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'SQLite',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 10,
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () => saveTo('sqfite'),
              ),
              RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Shared Preference ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 10,
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {},
              ),
              RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'File Read/Write',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 10,
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {},
              ),
              Divider(
                height: 30,
                thickness: 3,
                color: Colors.grey,
              ),
              Center(
                child: Text(
                  'Retrieve Data Using',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                  ),
                ),
              ),
              RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'SQLite',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 10,
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShowSqfiteData()));
                },
              ),
              RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Shared Preference ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 10,
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {},
              ),
              RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'File Read/Write',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 10,
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
