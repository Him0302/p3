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
        Container(
          padding: EdgeInsets.all(4.0),
          alignment: AlignmentDirectional.topStart,
          child: Text(
            'Analytics',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          height: 190.0,
          width: 400.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.white),
          child: Row(children: [
            Container(
                height: 200.0,
                child: Text(
                  'Sales',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(
              width: 2.0,
            ),
            Container(
                alignment: AlignmentDirectional.topStart,
                height: 200.0,
                child: Icon(Icons.arrow_drop_down)),
            SizedBox(width: 150.0),
            Container(
              height: 200.0,
              child: Text(
                'Select date',
                style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 2.0,
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              height: 200.0,
              child: Icon(
                Icons.arrow_drop_down,
                color: Colors.blue,
              ),
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
                  Container(
                    child: Icon(Icons.account_circle_sharp,
                        color: Colors.grey[600], size: 70.0),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Container(
                    child: Text(
                      'Customer',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 80.0,
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      //SizedBox(width: 30.0),
                      Container(
                        width: 40.0,
                        child: Text(
                          '78',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey[600],
                          ),
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
                      width: 70.0,
                      alignment: AlignmentDirectional.bottomCenter,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Colors.green[400]),
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
                    height: 180.0,
                    alignment: AlignmentDirectional.topStart,
                    width: 90.0,
                    child: Container(
                      child: Image(
                        image: AssetImage('images/iphone.png'),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                            width: 220.0,
                            child: Text(
                              'Apple Iphone 12',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            )),
                        SizedBox(
                          height: 2.0,
                        ),
                        Container(
                          width: 220.0,
                          child: Row(
                            children: [
                              Icon(
                                 Icons.star,
                                size: 20.0,
                                color: Colors.green[400],
                              ),
                              SizedBox(width: 8.0),
                              Text('4.5',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(height: 2.0),
                        Container(
                          width: 220.0,
                          child: Text(
                            'Very Nice',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                            width: 220.0,
                            child: Text('Good quality as described')),
                        Row(
                          children: [
                            Container(
                              height: 90.0,
                              width: 110.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.0)),
                              ),
                              child: Image(
                                image: AssetImage(
                                  'images/Rectangle 8.png',
                                ),
                              ),
                            ),
                            Container(
                              width: 120.0,
                              height: 90.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.0)),
                              ),
                              child: Image(
                                image: AssetImage('images/Rectangle 8.png'),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 220.0,
                          child: Text(
                            'Gaurav Sharma,delhi',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 220.0,
                          child: Text(
                            'Feb ,2020',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
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
