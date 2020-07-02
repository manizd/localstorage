import 'package:flutter/material.dart';

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

  onSave() {
    if (txtNameCtrl.text.isEmpty) {
      print("Empty Text Field");
    } else {
      setState(() {
        txtNameCtrl.text = '';
      });
      print('Empty Now');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.dashboard),
        title: Text('Store in Local'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter Name',
                  labelText: 'Name',
                ),
                controller: txtNameCtrl,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  hintText: 'Enter Age',
                  labelText: 'Age',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Enter Email',
                  labelText: 'Email',
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
              onPressed: () {},
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
              onPressed: () {},
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
    );
  }
}
