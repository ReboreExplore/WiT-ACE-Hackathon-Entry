
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/Loading.dart';
import 'package:my_app/pages/submit_stock.dart';
import 'package:my_app/pages/new_user.dart';
import 'package:my_app/pages/submit_confirm page.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/submit_stock': (context) => SubmitStocks(),
      '/new_user': (context) => NewUser(),
      '/submit_confirm page':(context) => SubmitUser(),
    },
  ));
}




















//       body: Row(
//         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           // Image.asset('assets/Image_2.jpg'),
//           Expanded(
//               flex:1,
//               child:Container(
//                   padding: EdgeInsets.all(80.0),
//                   color: Colors.pinkAccent,
//                   child: Text('Alerts'),)),
//           Expanded(
//               flex:1,
//               child:Container(
//                 padding: EdgeInsets.all(20),
//                 color: Colors.amber,
//                 child: Text('Chat with Buyer'),)),
//           Expanded(
//               flex:1,
//               child:Container(
//                 padding: EdgeInsets.all(20),
//                 color: Colors.cyan,
//                 child: Text('Info'),)),
//           Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Text("Hello Store",
//               style: TextStyle(
//                   fontSize: 50,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 2.0,
//                   color: Colors.brown,
//                   fontFamily: 'IndieFlower',
//               ),
//             ),
//             Text("Please enter your stock labels",
//               style: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 2.0,
//                 color: Colors.brown,
//               ),
//             ),
//             ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Take photo'),
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
//                       )
//             ),
//
//           ],
//         ),
//       ],
//       )
//
//
//
//
//       // Center(
//       //   // child: Image(
//       //   //   image: AssetImage("assets/Image_2.jpg"),
//       //   // ),
//       //   // child : Icon(
//       //   //   Icons.add_a_photo_outlined,
//       //   //   color:Colors.lightBlue,
//       //   //   size: 50.0,
//       //   // )
//       //   child: ElevatedButton.icon(
//       //       onPressed: () {
//       //         print('You clicked me');
//       //       },
//       //       icon: Icon(
//       //         Icons.photo_camera
//       //       ),
//       //       label: Text('Take photo'),
//       //       style: ButtonStyle(
//       //         backgroundColor: MaterialStateProperty.all<Color>(Colors.green),)
//       //   )
//
//         // child: Text(''
//         //     'Hello, Welcome to Sellall!!',
//         //   style: TextStyle(
//         //     fontSize: 20,
//         //     fontWeight: FontWeight.bold,
//         //     letterSpacing: 2.0,
//         //     color: Colors.grey[600],
//         //     fontFamily: 'IndieFlower',
//         //   ),),
//       // floatingActionButton:FloatingActionButton(
//       //   child: Text('Send'),
//       //   onPressed: () {},
//       //   backgroundColor: Colors.red ,
//       // ),
//       // backgroundColor: Colors.teal[50],
//     );
//     // ]
//     // );
//
//
//
//   }
// }
