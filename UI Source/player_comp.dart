import 'package:flutter/material.dart';
import 'package:getscouted_ui/register_page.dart';
import 'package:getscouted_ui/login_page.dart';
import 'package:getscouted_ui/navbar.dart';

class PlayerComp extends StatefulWidget {
  const PlayerComp({Key? key}) : super(key: key);

  @override
  State<PlayerComp> createState() => _PlayerCompState();
}

class _PlayerCompState extends State<PlayerComp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbar(),
      appBar: AppBar(
        title: Text('Player Comparison'),
        backgroundColor: Colors.blue,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
              child: Wrap(
            spacing: 20.0,
            runSpacing: 20.0,
            children: [
              SizedBox(
                width: 185.0,
                height: 205.0,
                child: Card(
                  color: Color.fromARGB(255, 204, 204, 204),
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Image.network(
                        'https://icdn.football-espana.net/wp-content/uploads/2022/10/kylian-mbappe-psg-exit-e1665524557343.jpg',
                        height: 130,
                      ),
                      SizedBox(height: 10.0),
                      Text("Mbappe",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0)),
                      Text('ST',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0)),
                    ]),
                  )),
                ),
              ),
              SizedBox(
                width: 185.0,
                height: 205.0,
                child: Card(
                  color: Color.fromARGB(255, 204, 204, 204),
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Image.network(
                        'https://i2-prod.dailystar.co.uk//article26640076.ece/ALTERNATES/s1200c/1_gettyimages-1389512556-594x594.jpg',
                        height: 130,
                      ),
                      SizedBox(height: 8.0),
                      Text("Neymar",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0)),
                      Text('LW',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0)),
                    ]),
                  )),
                ),
              ),
              Divider(height: 1.0),
              SizedBox(
                child: Center(
                    child: Text(
                  'Stats',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21.0),
                )),
              ),
              Divider(height: 1.0),
              SizedBox(
                child: Center(
                  child: Text(
                    '304                  Games Played                485',
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
              ),
              SizedBox(
                child: Center(
                    child: Text(
                  '223                         Goals                         290',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                )),
              ),
              SizedBox(
                child: Center(
                  child: Text(
                    '111                         Assists                       184',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
              ),
              Divider(height: 1.0),
              SizedBox(
                child: Center(
                    child: Text(
                  'Attributes',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21.0),
                )),
              ),
              Divider(height: 1.0),
              SizedBox(
                child: Center(
                  child: Text(
                    '97                           Pace                            87',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text(
                    '80                         Passing                        85',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text(
                    '89                        Shooting                      83',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text(
                    '92                        Dribbling                      93',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text(
                    '85                      Composure                  89',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
