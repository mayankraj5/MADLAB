import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp()
));

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My First Application'),
//         centerTitle: true,
//         backgroundColor: Colors.red[600],
//       ),
//       body: Center(
//         child: Text(
//           'Hello World',
//           style: TextStyle(
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//             letterSpacing: 2.0,
//             color: Colors.grey[600],
//             fontFamily: 'IndieFlower',
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'School',
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: null,
//         child: Text('Click'),
//         backgroundColor: Colors.red[600],
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//   String text = '';

//   @override
//   void initState() {
//     // TODO: implement initState
//     text = 'Click on this button';
//     super.initState();
//   }

//   void onclick()
//   {
//     setState(() {
//       text='The text is been changed';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Stateful widget',
//       home: new Scaffold(
//         body: new Center(
//           child: new ElevatedButton(onPressed: ()
//           { onclick();},
//             child: new Text(text),),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String text = '';
//   @override
//   void initState() {
    
//     text = 'Click on this button';
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: "My First App",
//         theme: ThemeData(primarySwatch: Colors.blueGrey),
//         home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.blueGrey,
//             title: const Text("My AppBar"),
//             leading: const Icon(Icons.menu),
//             actions: <Widget>[
//               IconButton(
//                 icon: const Icon(Icons.arrow_forward),
//                 onPressed: () {
//                   print('You pressed Arrow Button');
//                   setState(() {
//                     text = 'You pressed Arrow Button';
//                   });
          
//                 },
//               ),
             
//               new IconButton(
//                   icon: const Icon(Icons.add),
//                   onPressed: () {
//                     print('You pressed Addition Button');
//                     //new Text("You pressed Addition Button");
//                     setState(() {
//                       text = 'You pressed Addition Button';
//                     });
//                   }),
             
//               new IconButton(
//                   icon: const Icon(Icons.close),
//                   onPressed: () {
//                     print('You pressed Close Button');
//                     setState(() {
//                       text = 'You pressed Close Button';
//                     });
//                   }),
//             ],
//           ),
//           body: Text(text,
//           style: TextStyle(
//             fontSize: 32
//           ),),
//         ));
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Stateless Widget',
//       home: Scaffold(
//         body: Container(
//           color: Colors.pink,
//           child: Container(
//             //color: Colors.yellow,
//             //3rd
//             width: double.infinity,  
//             height: 150.0, 
//             //1st 2nd
//             padding: EdgeInsets.all(35),
//             margin: EdgeInsets.all(20),
//             //4rth
//             alignment: Alignment.bottomLeft,  
//             transform: Matrix4.rotationZ(0.1),   
//             //1st
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.black, width: 4),
//               borderRadius: BorderRadius.circular(8),
//               boxShadow: [ // 2nd
//                 new BoxShadow(
//                   color: Colors.green,
//                   offset: new Offset(6.0, 6.0),
//                 ),
//               ],
//             ),
//             child: Text(
//               "Child1",
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Row-Col Demo",
      home: Scaffold(
        
body: Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisSize: MainAxisSize.max,
children: [
            
            Container(
              child: const Text('text 1'),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(40),
              color: Colors.green,
            ),

            Container(
              child: const Text('text 2'),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(40),
              color: Colors.lightGreen,
            ),

          ],
        ),
      ),
     
    );
  }
}

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       title: "Row-Col Demo",
//       home: Scaffold(
//         body: Column(
//             // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             // mainAxisSize: MainAxisSize.max,

//           children: <Widget>[
            
//             Container(
//               child: const Text('text 1'),
//               padding: const EdgeInsets.all(10),
//               margin: const EdgeInsets.all(40),
//               color: Colors.green,
//             ),
           


//             Container(
//               child: const Text('text 1'),
//               padding: const EdgeInsets.all(10),
//               margin: const EdgeInsets.all(40),
//               color: Colors.green,
//             ),

//             Container(
//               child: const Text('text 2'),
//               padding: const EdgeInsets.all(10),
//               margin: const EdgeInsets.all(40),
//               color: Colors.lightGreen,
//             ),
//           ],
//         ),
//       ),
     
//     );
//   }

// }