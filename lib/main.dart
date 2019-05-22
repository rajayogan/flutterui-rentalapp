import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List allImgs = ['assets/pic1.jpg', 'assets/pic2.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Rent house',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 16.0,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(height: 300.0, color: Colors.transparent),
                CarouselSlider(
                    height: 300.0,
                    items: allImgs.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Stack(
                            children: <Widget>[
                              Container(height: 300.0, color: Colors.transparent),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    image: DecorationImage(
                                      image: AssetImage(i),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 25.0,
                                top: 150.0,
                                child: Container(
                                  height: 100.0,
                                  width: 240.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.8),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 1.0,
                                        color: Colors.grey.withOpacity(0.4),
                                        blurRadius: 1.0
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(7.0)
                                  ),
                                  child: Container(
                                    width: 240.0,
                                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 15.0),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Kra water village',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 15.0),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 15.0),
                                      Row(
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Text(
                                                '18',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 17.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 7.0),
                                              Text(
                                                'Sell',
                                                style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 11.0,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(width: 25.0),
                                          Column(
                                            children: <Widget>[
                                              Text(
                                                '74',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 17.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 7.0),
                                              Text(
                                                'Rent',
                                                style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 11.0,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(width: 25.0),
                                          Column(
                                            children: <Widget>[
                                              Text(
                                                '36',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 17.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 7.0),
                                              Text(
                                                'Sublet',
                                                style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 11.0,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      SizedBox(height: 15.0),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 15.0,
                                          ),
                                          Text(
                                            '4.9',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 14.0,
                                                color: Colors.amber,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20.0),
                                      Container(
                                        height: 30.0,
                                        width: 30.0,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF2560FA),
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        child: Center(
                                          child: Icon(Icons.send,
                                              color: Colors.white, size: 14.0),
                                        ),
                                      )
                                    ],
                                  )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      );
                    }).toList())
              ],
            ),
            SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Rent',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                  Text('More',
                      style:
                          TextStyle(fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.grey))
                ],
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: MediaQuery.of(context).size.height - 425.0,
            child: ListView(
              children: <Widget>[
                _buildCard('Gounuli', 'assets/chris.jpg', '3.7', 'The newly decorated new house is well furnished and has a beautiful environment'),
                _buildCard('Michelle', 'assets/hugh.jpg', '4.3',
                    'Country garden a villa want to add me')
              ],
            ),
          )
          ],
        ));
  }

  _buildCard(String name, String imgPath, String price, String desc) {
      return Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          height: 250.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 2.0, color: Colors.grey.withOpacity(0.3), spreadRadius: 2.0)
            ]
          ),
          child: Column(
          children: <Widget>[
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              width: MediaQuery.of(context).size.width - 25.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child:Row(
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                              image: AssetImage(imgPath),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(name,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 11.0,
                              fontWeight: FontWeight.bold
                            )
                            ),
                            SizedBox(height: 5.0),
                            Text('6 minutes ago',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 11.0,
                              color: Colors.grey
                            )
                            )
                          ],
                        )
                      ],
                    )
                  ),
                  Text('\$' + price + ' million',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20.0,
                    color: Color(0xFFFE6643)
                  ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0, right: 10.0, top: 8.0),
              child: Text(desc,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                )
                ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 125.0,
                    width: (MediaQuery.of(context).size.width) /2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      image: DecorationImage(
                        image: AssetImage('assets/pic1.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Column(
                    children: <Widget>[
                      Container(
                    height: 60.0,
                    width: (MediaQuery.of(context).size.width - 90.0) / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      image: DecorationImage(
                        image: AssetImage('assets/pic1.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(height: 5.0),
                      Container(
                    height: 60.0,
                    width: (MediaQuery.of(context).size.width - 90.0) / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      image: DecorationImage(
                        image: AssetImage('assets/pic1.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                  )
                    ]
                  )
                ],
              )
            )
          ]
          )
        ),
      );
  }
}
