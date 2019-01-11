import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final heroTag;

  SecondPage({this.heroTag});

  @override
  _SecondPageState createState() => _SecondPageState(heroTag: heroTag);
}

class _SecondPageState extends State<SecondPage> {
  final heroTag;

  _SecondPageState({this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: heroTag,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(heroTag),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Positioned(
            right: 64.0,
            top: 100.0,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.keyboard_arrow_left, color: Colors.grey,),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 1,
                ),
                  borderRadius: BorderRadius.circular(8.0)
              ),
            ),
          ),

          Positioned(
            left: 50.0,
            top: MediaQuery.of(context).size.height/2,
            child: Container(
              height: 35.0,
              width: 125.0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("LAMINATED", style: TextStyle(fontSize: 16.0,color: Colors.white, fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward_ios, color: Colors.white,),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8.0)
              ),
            ),
          ),
          Positioned(
            bottom: 15.0,
            left: 15.0,
            right: 15.0,
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 3.0,
              child: Container(
                height: 230.0,
                width: MediaQuery.of(context).size.width - 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Container(
                            height: 115.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 0.5,
                                ),
                                image: DecorationImage(
                                    image: AssetImage(heroTag),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "LAMINATED",
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Louis Vuitton",
                              style:
                                  TextStyle(fontSize: 14.0, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 30.0,
                              width: (MediaQuery.of(context).size.width - 200),
                              child: Text(
                                "One button V-neck sling long-sleeved waist female stiching dress",
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '\$6500',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          FloatingActionButton(
                            backgroundColor: Color(0xFF916144),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                            mini: true,
                            elevation: 0.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
