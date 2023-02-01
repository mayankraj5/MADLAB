import 'package:flutter/material.dart';

void main() => runApp(MyApp());


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter for Beginners',
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('Flutter Layout Foundations.'),
//           ),
//           body:Container(
//             constraints: BoxConstraints.expand(
//               height: 200.0,
//             ),
//             padding: const EdgeInsets.all(8.0),
//             decoration: new BoxDecoration(
//               color: Colors.purple,
//               gradient: new LinearGradient(
//                   colors: [Colors.blue, Colors.indigo],
//                   begin: Alignment.centerRight,
//                   end: Alignment.centerLeft
//               ),
//             ),
//             alignment: Alignment.center,
//             child: Text('Hello World'),

//           ),
//         )
//         );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

// @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Flutter GridView Demo"),
//         ),
//         body: GridView.count(
//           crossAxisCount: 2,
//           crossAxisSpacing: 8.0,
//           mainAxisSpacing: 8.0,
//           //shrinkWrap: true,
//           children: List.generate(
//             4,
//             (index) {
//               return Padding(
//                 padding: EdgeInsets.all(10),
//                 child: Image(
//                   image: NetworkImage(
//                       'https://w7.pngwing.com/pngs/494/703/png-transparent-several-floppy-disks-floppy-disk-disk-storage-computer-data-storage-compact-disc-hard-disk-drive-floppy-disk-electronics-electronic-device-data-thumbnail.png'),
//                 ),
               
//                   // child:Icon(Icons.home, size: 50.0, color: Colors.blue)

//                   // child: Image.asset("images/img1.png",fit: BoxFit.fitWidth,)

//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

// @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Flutter ListView Demo"),
//         ),
//         body: ListView(
//         reverse: false,
//         shrinkWrap: true,
//         itemExtent: 200,
//         scrollDirection: Axis.vertical,
       
//         children: const [
//                   Card(
//                       child: ListTile(
//                     leading: Icon(Icons.list),
//                     title: Text('List1'),
//                   )),
//                   Card(
//                     child: ListTile(
//                       leading: Icon(Icons.list),
//                       title: Text('List2'),
//                     ),
//                   ),
//                   Card(
//                     child: ListTile(
//                       leading: Icon(Icons.list),
//                       title: Text('List3'),
//                     ),
//                   )
//                 ],
//               ),

//               ),
//             );
//   }

//   }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter ListView Demo '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> images = [
    "images/img1.jpg",
    "images/img2.jpg",
    "images/img3.jpg",
    "images/img4.jpg",
    "images/img5.jpg",
  ];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (buildcontext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: const Text("Product Name"),
              subtitle: const Text("Price"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );  
    } 
}