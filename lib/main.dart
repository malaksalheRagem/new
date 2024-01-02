import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Data', // تمت إضافة فاصلة منقوطة هنا
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline6: TextStyle(fontSize: 30.0), // حجم الخط للعنوان 6
          bodyText2: TextStyle(fontSize: 30.0), // حجم الخط للنص الثانوي
        ),
      ),
      home: MyHomePage(title: 'Personal Data'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = '';
  String phoneNumber = '';
  String address = '';
  String nationality = '';

  void printPhoneNumber() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Personal Information'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(' Name: Malak Ragem $name', style: TextStyle(fontSize: 24.0)),
              Text(' Phone: +218924894487 $phoneNumber',
                  style: TextStyle(fontSize: 24.0)),
              Text(' city: Tripoli $address', style: TextStyle(fontSize: 24.0)),
              Text(' Gender: Female $nationality', style: TextStyle(fontSize: 24.0)),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close', style: TextStyle(fontSize: 27.0)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Color.fromARGB(255, 99, 14, 85),
      
      body: Center(
        child: Card(
          elevation: 1.0,
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$name',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  ' $phoneNumber',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(height: 20),
                SizedBox(height: 20),
                Expanded(
                  child: Center(
                    child: IconButton(
                      onPressed: printPhoneNumber,
                      icon: Icon(Icons.print),
                      iconSize: 120.0,
                      color: Color.fromARGB(255, 99, 14, 85),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
