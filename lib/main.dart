// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo Application',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   MyHomePageState createState() => new MyHomePageState();
// }

// class MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Gestures Example'),
//         centerTitle: true,
//       ),
//       body: new Center(
//           child: GestureDetector(
//               onTap: () {
//                 print('Box Clicked');
//               },
//               child: Container(
//                 height: 60.0,
//                 width: 120.0,
//                 padding: EdgeInsets.all(10.0),
//                 decoration: BoxDecoration(
//                   color: Colors.blueGrey,
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 child: Center(child: Text('Click Me')),
//               ))),
//     );
//   }
// }

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//It is the entry point for your Flutter app.
void main() {
  runApp(
    MaterialApp(
      title: 'Multiple Gestures Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Multiple Gestures Demo'),
        ),
        body: DemoApp(),
      ),
    ),
  );
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawGestureDetector(
      gestures: {
        AllowMultipleGestureRecognizer: GestureRecognizerFactoryWithHandlers<
            AllowMultipleGestureRecognizer>(
          () => AllowMultipleGestureRecognizer(),
          (AllowMultipleGestureRecognizer instance) {
            instance.onTap = () => print('It is the parent container gesture');
          },
        ),
      },
      behavior: HitTestBehavior.opaque,
      //Parent Container
      child: Container(
        color: Colors.green,
        child: Center(
          //Now, wraps the second container in RawGestureDetector
          child: RawGestureDetector(
            gestures: {
              AllowMultipleGestureRecognizer:
                  GestureRecognizerFactoryWithHandlers<
                      AllowMultipleGestureRecognizer>(
                () => AllowMultipleGestureRecognizer(), //constructor
                (AllowMultipleGestureRecognizer instance) {
                  //initializer
                  instance.onTap = () => print('It is the nested container');
                },
              )
            },
            //Creates the nested container within the first.
            child: Container(
              color: Colors.deepOrange,
              width: 250.0,
              height: 350.0,
            ),
          ),
        ),
      ),
    );
  }
}

class AllowMultipleGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);
  }
}
