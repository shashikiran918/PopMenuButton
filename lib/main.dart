import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}
//void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyState createState() {
    return _MyState();
  }
}
class PopupItem{
  int value;
  String name;
  PopupItem(this.value, this.name);
}

class _MyState extends State<MyApp>
{
  String _value = "";
  List<PopupItem> _list = [
    PopupItem(1, "First Value"),
    PopupItem(2, "Second Item"),
    PopupItem(3, "Third Item"),
    PopupItem(4, "Fourth Item")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text("Flutter Popup Menu Button"),
            actions: [
              PopupMenuButton(
                  color: Colors.yellowAccent,
                  elevation: 20,
                  enabled: true,
                  onSelected: (value) {
                    setState(() {
                      _value = " ";
                    });
                  },
                  itemBuilder:(context) {
                    return _list.map((PopupItem choice) {
                      return PopupMenuItem(
                        value: choice,
                        child: Text(choice.name),
                      );
                    }).toList();
                  }
              )
            ],
          ),
          body: Center(
            child: Text(_value),
          ),
        )
    );
  }
}