import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: layout(),
        ),
      ),
    );
  }
}

class layout extends StatelessWidget {
  const layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Analytics'),
        Container(
          //color: Colors.white,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          height: 220.0,
          width: 400.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.white),
          child: Row(children: [
            Text('Sales'),
            SizedBox(
              width: 2.0,
            ),
            Icon(Icons.arrow_drop_down),
            SizedBox(width: 150.0),
            Text(
              'Select date',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            SizedBox(
              width: 2.0,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.blue,
            ),
          ]),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white),
              height: 150.0,
              width: 150.0,
              child: Column(
                children: [
                  Icon(Icons.account_circle_sharp,
                      color: Colors.grey, size: 70.0),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    'Customer',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(width: 60.0),
                      Text(
                        '78',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white),
              height: 150.0,
              width: 150.0,
            ),
          ],
        ),
        Container(
          //color: Colors.white,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          height: 240.0,
          width: 400.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.white),
          child: Column(
            children: [
              Container(
                height: 20.0,
                child: Row(
                  children: [
                    Text(
                      'Latest Reviews',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      width: 140.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          color: Colors.green),
                      child: Text(
                        'View all',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 90.0,
                    child: Image(
                      image: AssetImage('images/iphone.png'),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('Apple Iphone 12'),
                        SizedBox(
                          height: 2.0,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.green),
                            SizedBox(width: 3.0),
                            Text('4.5',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ))
                          ],
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          'Very Nice',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Good quality as described'),
                        Row(
                          children: [
                            Container(
                              height: 90.0,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              child: Image(
                                image: AssetImage('images/Rectangle 8.png'),
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
                              height: 90.0,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              child: Image(
                                image: AssetImage('images/Rectangle 8.png'),
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Gaurav Sharma,delhi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Feb ,2020',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
