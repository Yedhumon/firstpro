import 'package:flutter/material.dart';
import 'Home.dart';
import 'search1.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: DefaultTabController(
       length:2,
       child: Scaffold(
         floatingActionButton:Theme(
           data: ThemeData(
             accentColor: Colors.teal
           ),
           child: FloatingActionButton(
             child: Icon(Icons.navigation)
             ,onPressed: (){},),
         ),


         drawer: Drawer(
           child: Container(
             decoration: BoxDecoration(
               border: Border.fromBorderSide(BorderSide(color: Colors.black)),
               borderRadius: BorderRadius.circular(5),
               
             ),
             child: ListView(
               children: [
                 DrawerHeader(child: Image.asset("L10.jpg")),
                 ListTile(
                   leading: Text("Sign Up"),
                   onTap: (){},
                 )
                 ,ListTile(
                   leading: Text("Official Log In"),
                   onTap: (){},
                 ),
                 ListTile(
                   leading: Text("Citizen Log In"),
                   onTap: (){},
                 ),
                 ListTile(
                   leading: Text("Membership Application"),
                   onTap: (){},
                 ),
                 ListTile(
                   leading: Text("Membership Renewal"),
                   onTap: (){},
                 ),
                 ListTile(
                   leading: Text("Donate Books"),
                   onTap: (){},
                 ),
                 ListTile(
                   leading: Text("Contact Us"),
                   onTap: (){},
                 ),
                 ListTile(
                   leading: Text("Feedback"),
                   onTap: (){},
                   ),

               ],
             ),
           ),

         ),
       appBar: AppBar(
         backgroundColor: Colors.teal,
         title: Text("NEWMAN"),
         
         bottom: TabBar(
               tabs: [
           Tab(icon: Icon(Icons.home),text: "Home",),
       Tab(icon: Icon(Icons.search), text: "Search Engine"),
       ]
       ),
         ),

           body: TabBarView(
             children: [
             Home(),
       search1()
         ],
       )
     ),
     ),
   );
  }

  }
