import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

class layout extends StatefulWidget {
  const layout({Key? key}) : super(key: key);

  @override
  _layoutState createState() => _layoutState();
}

class _layoutState extends State<layout> {
  int selectedValue = 1;
  int myvalue = 1;
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
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 10.0),
            height: 180.0,
            width: 330.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white),
            child: Row(children: [
              Container(
                alignment: AlignmentDirectional.topStart,
                height: 200.0,
                child: DropdownButton(
                    value: selectedValue,
                    items: [
                      DropdownMenuItem(
                        child: Text("Sales"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("option1"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("option2"),
                        value: 3,
                      ),
                      DropdownMenuItem(child: Text("Others"), value: 3),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedValue = 1;
                      });
                    }),
              ),
              //child: Container() ,
              SizedBox(width: 130.0),
              Container(
                alignment: AlignmentDirectional.topStart,
                height: 200.0,
                child: DropdownButton(
                    icon:
                        Icon(Icons.arrow_drop_down, color: Colors.indigo[700]),
                    value: myvalue,
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          "Select Date",
                          style: TextStyle(
                            color: Colors.indigo[700],
                          ),
                        ),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("option1"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("option2"),
                        value: 3,
                      ),
                      DropdownMenuItem(child: Text("Others"), value: 3),
                    ],
                    onChanged: (value) {
                      setState(() {
                        myvalue = 1;
                      });
                    }),
              ),
            ]),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 17.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white),
                height: 150.0,
                width: 145.0,
                child: Column(
                  children: [
                    Container(
                      child: Icon(Icons.person_outline_sharp,
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
                          fontSize: 17.0,
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
                              fontSize: 15.0,
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
                              fontSize: 15.0,
                              color: Colors.grey[600],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white),
                height: 150.0,
                width: 145.0,
              ),
            ),
          ],
        ),
        Expanded(
          flex: 1,
          child: Container(
            //color: Colors.white,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.fromLTRB(10.0, 9.0, 10.0, 0.0),
            height: 260.0,
            width: 330.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 20.0,
                    child: Row(
                      children: [
                        Text(
                          'Latest Reviews',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          width: 120.0,
                        ),
                        Container(
                          width: 70.0,
                          alignment: AlignmentDirectional.bottomCenter,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.greenAccent[700]),
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
                                  fontSize: 17.0,
                                ),
                              )),
                          SizedBox(
                            height: 1.2,
                          ),
                          Container(
                            width: 220.0,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  size: 22.0,
                                  color: Colors.greenAccent[700],
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
                          SizedBox(height: 1.2),
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
                                width: 90.0,
                                height: 80.0,
                                alignment: AlignmentDirectional.topStart,
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
                                height: 80.0,
                                alignment: AlignmentDirectional.topStart,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'images/Rectangle 8.png',
                                  ),
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
        ),
        Container(
          height: 35.0,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(horizontal: 2.0),
          width: 330.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              color: Colors.grey[350]),
          child: Row(
            children: [
              Text(
                'Send Reply',
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                width: 200.0,
              ),
              Icon(
                Icons.send_rounded,
                size: 25.0,
                color: Colors.black45,
              )
            ],
          ),
        ),
      ],
    );
  }
}
