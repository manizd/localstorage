import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/databaseHelper.dart';

class ShowSqfiteData extends StatefulWidget {
  @override
  _ShowSqfiteDataState createState() => _ShowSqfiteDataState();
}

class _ShowSqfiteDataState extends State<ShowSqfiteData> {
  final databaseHelper = DatabaseHelper.instance;
  var row;

  @override
  void initState() {
    getAllData();
    super.initState();
  }

  void getAllData() async {
    row = await databaseHelper.queryAllRows();
    print('Query All Rows');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sqfite Data'),
        ),
        body: ListView.builder(
          itemCount: row.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                  '${row[index]['name']}, ${row[index]['age']}, ${row[index]['email']}'),
            );
          },
        ));
  }
}
