import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

String btnText1="Button one";
Color btnColor1=Colors.pink;
Color btnTextColor1=Colors.lightGreenAccent;
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
        title: Text("Mohuya",style: TextStyle(color: Colors.black),),
      ),
      body:
     SingleChildScrollView(
       child: Center(
         child: Column(
           children: [
             RaisedButton(
               color: btnColor1,
                 child: Text(btnText1,style: TextStyle(color:btnTextColor1),),
                 onPressed: (){
                   setState(() {
                     btnColor1=Colors.lightGreenAccent;
                     btnText1="Button Pressed";
                     btnTextColor1=Colors.amber;
                   });

             }),
             Image.network("https://thumbs.dreamstime.com/b/frangipani-flowers-10997030.jpg")
           ],
         ),
       ),
     )
    );
  }
}
