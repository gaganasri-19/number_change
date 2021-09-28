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
            appBar: AppBar(
              backgroundColor: Colors.black45,
              title: Text(
                'Number Change'
              ),
            ),
            body: Center(
              child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/background.png'),
                        fit: BoxFit.cover,
                    ),
                ),
                child: numberchange(),
                ),
            ),
            )
          );

  }
}

class numberchange extends StatefulWidget {
  const numberchange({Key? key}) : super(key: key);

  @override
  _numberchangeState createState() => _numberchangeState();
}

class _numberchangeState extends State<numberchange> {
  var numDisplay=1;
  void changeNum(){
      numDisplay<5?numDisplay++:numDisplay=1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
       child: Row(
         children: [
        Expanded(
        child:FlatButton(child: Image.asset('images/$numDisplay.png'),
          onPressed: (){
            setState(() {
              changeNum();
            });
          },
          onLongPress: (){
            setState(() {
              changeNum();
            });
          },
        ))
         ],
       ),
    );
  }
}
