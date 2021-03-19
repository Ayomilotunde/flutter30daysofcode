import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  List<BottomNavigationBarItem> _items;
  String _bValue = '';
  int index = 0;

  @override
  void initState() {
    _items = new List();
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text('Home')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.people), title: new Text('Friends')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.person), title: new Text('Profile')));
  }

  int _value = 0;

  String _Svalue = '';
  String _Fvalue = '';

  void _add() => setState(() => _value++);
  void _remove() => setState(() => _value--);

  void _onClicked() => setState(() => _Svalue = DateTime.now().toString());

  void _FonClick(String value) => setState(() => _Fvalue = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      //AppBar
      appBar: new AppBar(
        title: new Text('Hello world'),
        backgroundColor: Colors.green,
        actions: [
          new IconButton(icon: new Icon(Icons.add), onPressed: _add),
          new IconButton(icon: new Icon(Icons.remove), onPressed: _remove)
        ],
      ),

      //Floating Action Button
      floatingActionButton: new FloatingActionButton(onPressed: _onClicked,
      backgroundColor: Colors.green,
      mini: false,
      child: new Icon(Icons.timer),
      ),

      //Drawer
      drawer: new Drawer(
        child: new Container(
          padding: new EdgeInsets.all(59.0),
          child: new Column(
            children: [
              new Text('Hello Drawer'),
              new RaisedButton(onPressed: () => Navigator.pop(context), child: new Text('Close'),)
            ],
          ),
        )
      ),

      //FooterButton
      persistentFooterButtons: [
        new IconButton(icon: new Icon(Icons.folder_open), onPressed: () => _FonClick('Button 1')),
        new IconButton(icon: new Icon(Icons.people), onPressed: () => _FonClick('Button 2')),
        new IconButton(icon: new Icon(Icons.map), onPressed: () => _FonClick('Button 3')),
      ],
      
      
/*There is a bug in this Bottom Navigation Bar*/
      
      /*bottomNavigationBar: new BottomNavigationBar(items: _items, currentIndex: index, onTap: (int item) {
        setState(() {
          index = item;
          _bValue = "Current Value is: ${index.toString()}";
        });
      },),*/

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child:
        new Center(
          child: new Column(
          children: <Widget>[new Text(_value.toString(), style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 37.0),),
            new Text('For FloatingActionButtion'),
            new Text(_Svalue, style: new TextStyle(fontWeight: FontWeight.bold),),
            new Text('For Footer Buttons'),
            new Text(_Fvalue, style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0 ),),
            new Text('For Bottom Navigation Bar'),
            new Text(_bValue)
          ],
        ),
        ),
      ),
      
    );
  }


}
