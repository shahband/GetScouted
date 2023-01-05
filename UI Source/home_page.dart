import 'package:flutter/material.dart';
import 'package:getscouted_ui/register_page.dart';
import 'package:getscouted_ui/login_page.dart';
import 'package:getscouted_ui/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: navbar(),
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.blue,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          SearchHeader(size: size),
          Container(
            height: 24,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20 / 4),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Recently Viewed',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Spacer(),
                        TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: () {},
                          child: Text(
                            'More',
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.only(right: 20 / 4),
                    height: 1,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Wrap(spacing: 20.0, runSpacing: 20.0, children: [
            SizedBox(
              width: 185.0,
              height: 230.0,
              child: Card(
                color: Colors.lightBlue,
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
                    Text('Valuation : £250 m',
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
              height: 230.0,
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
                    Text('Valuation : £90 m',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0)),
                  ]),
                )),
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 24,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20 / 4),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Latest News',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Spacer(),
                        TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                          ),
                          onPressed: () {},
                          child: Text(
                            'More',
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.only(right: 20 / 4),
                    height: 1,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 25,
            child: Text('Today',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
          Divider(
            height: 1.0,
            color: Colors.red,
          ),
          Wrap(spacing: 20.0, runSpacing: 20.0, children: [
            SizedBox(
              width: 370.0,
              height: 205.0,
              child: Card(
                color: Colors.red,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Image.network(
                      'https://digitalhub.fifa.com/transform/8f9c52ea-d61b-4211-86e0-8b1ab2674ef1/Cristiano-Ronaldo-signs-for-Al-Nassr?io=transform:fill,height:485,width:1023&quality=75',
                      height: 130,
                    ),
                    SizedBox(height: 10.0),
                    Text("Ronaldo signs for Saudi club Al Nassr",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0)),
                    Text('Click to read',
                        style: TextStyle(color: Colors.white, fontSize: 15.0)),
                  ]),
                )),
              ),
            ),
            SizedBox(
              width: 365.0,
              height: 205.0,
              child: Card(
                color: Colors.red,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Image.network(
                      'https://firstsportz.com/wp-content/uploads/2020/12/tottenham-hotspur.jpeg',
                      height: 130,
                    ),
                    SizedBox(height: 10.0),
                    Text(" Match Report : Palace 1 - 4 Spurs",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0)),
                    Text('Click to read',
                        style: TextStyle(color: Colors.white, fontSize: 15.0)),
                  ]),
                )),
              ),
            ),
          ]),
          Divider(
            height: 1.0,
            color: Colors.red,
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 25,
            child: Text('Last Week',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
          Divider(
            height: 1.0,
            color: Colors.red,
          ),
          Divider(height: 0.2),
          Wrap(spacing: 20.0, runSpacing: 20.0, children: [
            SizedBox(
              width: 370.0,
              height: 205.0,
              child: Card(
                color: Colors.red,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Image.network(
                      'https://cdn.mos.cms.futurecdn.net/dqDYrA9NUJQcddj3TpKhPg.jpg',
                      height: 130,
                    ),
                    SizedBox(height: 10.0),
                    Text("Argentina crowned World Champions",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0)),
                    Text('Click to read',
                        style: TextStyle(color: Colors.white, fontSize: 15.0)),
                  ]),
                )),
              ),
            ),
            SizedBox(
              width: 365.0,
              height: 205.0,
              child: Card(
                color: Colors.red,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Image.network(
                      'https://d2x51gyc4ptf2q.cloudfront.net/content/uploads/2022/12/30120800/Mykhaylo-Mudryk-Shakhtar-Donetsk-F365-5-1200x630.jpg',
                      height: 130,
                    ),
                    SizedBox(height: 10.0),
                    Text(" Chelsea rival Arsenal's for Mudryk",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0)),
                    Text('Click to read',
                        style: TextStyle(color: Colors.white, fontSize: 15.0)),
                  ]),
                )),
              ),
            ),
          ]),
        ])));
  }
}

class SearchHeader extends StatelessWidget {
  const SearchHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0 * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36)),
            ),
            child: Row(children: <Widget>[
              Text('Hi Admin!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0)),
              Spacer(),
              ClipOval(
                  child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRbiMjUoOxJCAMB9poSO2wLg34m7OxmyaT-A&usqp=CAU',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ))
            ]),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.grey)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: Icon(Icons.search)),
                ),
              ))
        ],
      ),
    );
  }
}
