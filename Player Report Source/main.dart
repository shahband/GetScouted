import 'package:flutter/material.dart';
import 'package:untitled5/report.dart';
import 'package:untitled5/dbhelper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetScouted',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final dbHelper = DatabaseHelper.instance;

  List<Report> reports = [];
  List<Report> reportsByName = [];

  //controllers used in insert operation UI
  TextEditingController nameController = TextEditingController();
  TextEditingController attribute1Controller = TextEditingController();
  TextEditingController attribute2Controller = TextEditingController();
  TextEditingController attribute3Controller = TextEditingController();
  TextEditingController attribute4Controller = TextEditingController();
  TextEditingController attribute5Controller = TextEditingController();
  TextEditingController attribute6Controller = TextEditingController();
  TextEditingController attribute7Controller = TextEditingController();
  TextEditingController attribute8Controller = TextEditingController();
  TextEditingController attribute9Controller = TextEditingController();
  TextEditingController attribute10Controller = TextEditingController();
  TextEditingController attribute11Controller = TextEditingController();
  TextEditingController attribute12Controller = TextEditingController();
  TextEditingController attribute13Controller = TextEditingController();
  TextEditingController positionController = TextEditingController();
  TextEditingController notesController = TextEditingController();

  //controllers used in update operation UI
  TextEditingController idUpdateController = TextEditingController();
  TextEditingController nameUpdateController = TextEditingController();
  TextEditingController attribute1UpdateController = TextEditingController();
  TextEditingController attribute2UpdateController = TextEditingController();
  TextEditingController attribute3UpdateController = TextEditingController();
  TextEditingController attribute4UpdateController = TextEditingController();
  TextEditingController attribute5UpdateController = TextEditingController();
  TextEditingController attribute6UpdateController = TextEditingController();
  TextEditingController attribute7UpdateController = TextEditingController();
  TextEditingController attribute8UpdateController = TextEditingController();
  TextEditingController attribute9UpdateController = TextEditingController();
  TextEditingController attribute10UpdateController = TextEditingController();
  TextEditingController attribute11UpdateController = TextEditingController();
  TextEditingController attribute12UpdateController = TextEditingController();
  TextEditingController attribute13UpdateController = TextEditingController();
  TextEditingController positionUpdateController = TextEditingController();
  TextEditingController notesUpdateController = TextEditingController();

  //controllers used in delete operation UI
  TextEditingController idDeleteController = TextEditingController();

  //controllers used in query operation UI
  TextEditingController queryController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  //void _showMessageInScaffold(String message){
  //  _scaffoldKey.currentState!.showSnackBar(
  //      SnackBar(
  //        key:_scaffoldKey,
  //        content: Text(message)
  //      ),
  //  );
  //}
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Insert",
              ),
              Tab(
                text: "View",
              ),
              Tab(
                text: "Query",
              ),
              Tab(
                text: "Update",
              ),
              Tab(
                text: "Delete",
              ),
            ],
          ),
          title: Text('GetScouted'),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Player Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute1Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Aerial Ability',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute2Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Positional Sense',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute3Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Decision Making',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute4Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Agility',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute5Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Work Rate',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute6Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Tackling',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute7Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Interception',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute8Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Passing',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute9Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Shooting',
                      ),
                    ),
                  ),                  
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute10Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Dribbling',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute11Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Kill Final Passes',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute12Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Finishing',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute13Controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Skills',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: notesController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Notes',
                      ),
                    ),
                  ),


                  ElevatedButton(
                    child: Text('Insert Player Details'),
                    onPressed: () {
                      String name = nameController.text;
                      int attribute1 = int.parse(attribute1Controller.text);
                      int attribute2 = int.parse(attribute2Controller.text);
                      int attribute3 = int.parse(attribute3Controller.text);
                      int attribute4 = int.parse(attribute4Controller.text);
                      int attribute5 = int.parse(attribute5Controller.text);
                      int attribute6 = int.parse(attribute6Controller.text);
                      int attribute7 = int.parse(attribute7Controller.text);
                      int attribute8 = int.parse(attribute8Controller.text);
                      int attribute9 = int.parse(attribute9Controller.text);
                      int attribute10 = int.parse(attribute10Controller.text);
                      int attribute11= int.parse(attribute11Controller.text);
                      int attribute12 = int.parse(attribute12Controller.text);
                      int attribute13 = int.parse(attribute13Controller.text);
                      String position = positionController.text;
                      String notes = notesController.text;
                      _insert(name, attribute1, attribute2, attribute3, attribute4, attribute5, attribute6, attribute7, attribute8, attribute9, attribute10, attribute11, attribute12, attribute13, position,notes);
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: reports.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == reports.length) {
                    return ElevatedButton(
                      child: Text('Refresh'),
                      onPressed: () {
                        setState(() {
                          _queryAll();
                        });
                      },
                    );
                  }
                  return Container(
                    height: 40,
                    child: Center(
                      child: Text(
                        '[${reports[index].id}] ${reports[index].name} - ${reports[index].attribute1} miles',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: queryController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Player Name',
                      ),
                      onChanged: (text) {
                        if (text.length >= 2) {
                          setState(() {
                            _query(text);
                          });
                        } else {
                          setState(() {
                            reportsByName.clear();
                          });
                        }
                      },
                    ),
                    height: 100,
                  ),
                  Container(
                    height: 300,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: reportsByName.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          margin: EdgeInsets.all(2),
                          child: Center(
                            child: Text(
                              '[${reportsByName[index].id}] ${reportsByName[index].name} - ${reportsByName[index].attribute1} miles',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: idUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Report id',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: nameUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Player Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute1UpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Attribute1',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute2UpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Attribute2',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute3UpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Attribute3',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute4UpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Attribute4',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute5UpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Attribute5',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: attribute6UpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Attribute6',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: notesUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Notes',
                      ),
                    ),
                  ),

                  ElevatedButton(
                    child: Text('Update Report Details'),
                    onPressed: () {
                      int id = int.parse(idUpdateController.text);
                      String name = nameUpdateController.text;
                      int attribute1 = int.parse(attribute1UpdateController.text);
                      int attribute2 = int.parse(attribute2UpdateController.text);
                      int attribute3 = int.parse(attribute3UpdateController.text);
                      int attribute4 = int.parse(attribute4UpdateController.text);
                      int attribute5 = int.parse(attribute5UpdateController.text);
                      int attribute6 = int.parse(attribute6UpdateController.text);
                      int attribute7 = int.parse(attribute7UpdateController.text);
                      int attribute8 = int.parse(attribute8UpdateController.text);
                      int attribute9 = int.parse(attribute9UpdateController.text);
                      int attribute10 = int.parse(attribute10UpdateController.text);
                      int attribute11 = int.parse(attribute11UpdateController.text);
                      int attribute12 = int.parse(attribute12UpdateController.text);
                      int attribute13 = int.parse(attribute13UpdateController.text);
                      String position = positionUpdateController.text;
                      int notes = int.parse(notesUpdateController.text);
                      _update(id, name, attribute1, attribute2, attribute3, attribute4, attribute5, attribute6, attribute7, attribute8, attribute9, attribute10, attribute11, attribute12, attribute13, position,notes);
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: idDeleteController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Report id',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: Text('Delete'),
                    onPressed: () {
                      int id = int.parse(idDeleteController.text);
                      _delete(id);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _insert(name, attribute1, attribute2, attribute3, attribute4, attribute5, attribute6, attribute7, attribute8, attribute9, attribute10, attribute11, attribute12, attribute13, position, notes) async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnAttribute1: attribute1,
      DatabaseHelper.columnAttribute2: attribute2,
      DatabaseHelper.columnAttribute3: attribute3,
      DatabaseHelper.columnAttribute4: attribute4,
      DatabaseHelper.columnAttribute5: attribute5,
      DatabaseHelper.columnAttribute6: attribute6,
      DatabaseHelper.columnAttribute7: attribute7,
      DatabaseHelper.columnAttribute8: attribute8,
      DatabaseHelper.columnAttribute9: attribute9,
      DatabaseHelper.columnAttribute10: attribute10,
      DatabaseHelper.columnAttribute11: attribute11,
      DatabaseHelper.columnAttribute12: attribute12,
      DatabaseHelper.columnAttribute13: attribute13,
      DatabaseHelper.columnPosition : position,
      DatabaseHelper.columnNotes: notes,
    };

    Report report = Report.fromMap(row);
    final id = await dbHelper.insert(report);
    //_showMessageInScaffold('inserted row id: $id');
  }

  void _queryAll() async {
    final allRows = await dbHelper.queryAllRows();
    reports.clear();
    allRows.forEach((row) => reports.add(Report.fromMap(row)));
    //_showMessageInScaffold('Query done.');
    setState(() {});
  }

  void _query(name) async {
    final allRows = await dbHelper.queryRows(name);
    reportsByName.clear();
    allRows.forEach((row) => reportsByName.add(Report.fromMap(row)));
  }

  void _update(id, name, attribute1, attribute2, attribute3, attribute4, attribute5, attribute6, attribute7, attribute8, attribute9, attribute10, attribute11, attribute12, attribute13, position, notes) async {
    // row to update
    Report report = Report(id, name, attribute1, attribute2, attribute3, attribute4, attribute5, attribute6, attribute7, attribute8, attribute9, attribute10, attribute11, attribute12, attribute13, position ,notes);
    final rowsAffected = await dbHelper.update(report);
    //_showMessageInScaffold('updated $rowsAffected row(s)');
  }

  void _delete(id) async {
    // Assuming that the number of rows is the id for the last row.
    final rowsDeleted = await dbHelper.delete(id);
    //_showMessageInScaffold('deleted $rowsDeleted row(s): row $id');
  }
}