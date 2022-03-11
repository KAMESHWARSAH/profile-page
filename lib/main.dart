import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
               backgroundImage: NetworkImage('https://2.bp.blogspot.com/-TcPEWBMGREs/XNSJ5k7xmrI/AAAAAAAAvl0/UU0a6SVNLSYz1op01Oks9xZoaNc1rYLlwCK4BGAYYCw/s113-pf/2019-04-07-16-31-23-891.jpg'),
               // backgroundImage: AssetImage('images/nishit.JPG'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Kameshwar Sah',
                  style: TextStyle(

                    fontFamily: 'Pacifico',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    '+91 91 xx 999 xxx',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'kameshwarcse@gmail.com',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.sports_soccer,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'er_kameshwarsah',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.inbox,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    'kameshwar sah',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        fontSize: 20.0),

                  ),





                ),
              ),
              RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "To learn more "
                        ),
                        TextSpan(
                            text: "Click here",
                            recognizer: TapGestureRecognizer()..onTap =  () async{
                              var url = "https://in.linkedin.com/in/kameshwar-sah-082914183";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            }
                        ),
                      ]
                  ))


            ],
          ),
        ),
      ),
    );
  }
}
