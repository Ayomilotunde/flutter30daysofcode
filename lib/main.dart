import 'package:flutter/material.dart';
import 'dart:async';

// import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: myApp(),
  ));
}

class myApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<myApp> {
  String _value = 'Hello World wa';

  String _newValue = '';
  String _datePicker = '';

  bool _value1 = false;
  bool _value2 = false;

  int _val1 = 0;
  int _val2 = 0;

  int _val = 0;

  double _valdouble = 0.0;

  void _add() {
    setState(() {
      _val++;
    });
  }

  void _sub() {
    setState(() {
      _val--;
    });
  }

  void onPressed(String value) {
    setState(() {
      _value = value;
    });
  }

  void _onPressed() {
    setState(() {
      _value = new DateTime.now().toString();
    });
  }

  void _onChanged(String value) {
    setState(() {
      _newValue = 'Changed: $value';
    });
  }

  void _onSubmit(String value) {
    setState(() => _newValue = 'Submitted: $value');
  }

  void _value1Changed(bool value) => setState(() => _value1 = value);
  void _value2Changed(bool value) => setState(() => _value2 = value);

  void _val1Selected(int value) => setState(() => _val1 = value);
  void _val2Selected(int value) => setState(() => _val2 = value);

// Having Bugs with Radios.
  Widget makeRadios() {
    List list = new List();
    for (int i = 0; i < 3; i++) {
      list.add(
          new Radio(value: i, groupValue: _val2, onChanged: _val2Selected));
    }
    Column column = new Column(
      children: list,
    );
    return column;
  }

  void _setDoubleValue(double value) => setState(() => _valdouble = value);

  Future _selectedDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2024));
    if (picked != null) {
      setState(() {
        _datePicker = picked.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Demo App'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('value = $_val'),
            new IconButton(
                icon: new Icon(Icons.add), onPressed: _add), //Icon Button
            new IconButton(icon: new Icon(Icons.remove), onPressed: _sub),
            new Text(_value),
            new RaisedButton(
              onPressed: () => onPressed('Hello Ayomi'),
              child: new Text('Click me'),
            ), // Raised Button
            new RaisedButton(
              onPressed: _onPressed,
              child: new Text('Raised Button'),
            ), // Raised Button
            new FlatButton(
              onPressed: _onPressed,
              child: new Text('Flat Button'),
            ), // Flat Button
            new Text('Text Field Area'),
            new Text(_newValue),
            new TextField(
              decoration: new InputDecoration(
                labelText: 'Hello',
                hintText: 'Hint',
                icon: new Icon(Icons.people),
              ),
              autocorrect: true,
              autofocus: true,
              keyboardType: TextInputType.text,
              onChanged: _onChanged,
              onSubmitted: _onSubmit,
            ),
            new Text('Check Boxes'),
            new Checkbox(
              value: _value1,
              onChanged: _value1Changed,
              activeColor: Colors.black38,
            ),
            new CheckboxListTile(
              value: _value2,
              onChanged: _value2Changed,
              title: new Text('Title'),
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: new Text('Subtitle'),
              secondary: new Icon(Icons.archive),
              activeColor: Colors.red,
            ),
            new Text('Radio Buttons'),
            // makeRadios(),
            new Text('Switch'),
            new Switch(value: _value1, onChanged: _value1Changed),
            new SwitchListTile(
              value: _value2,
              onChanged: _value2Changed,
              activeColor: Colors.green,
              controlAffinity: ListTileControlAffinity.leading,
              title: new Text(
                'Switch Tile',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              subtitle: new Text('Subtitle'),
              secondary: new Icon(Icons.pages),
            ),
            new Text('Slider'),
            new Text('value: ${(_valdouble * 100).round()}'),
            new Slider(
              value: _valdouble,
              onChanged: _setDoubleValue,
              activeColor: Colors.deepPurpleAccent,
              inactiveColor: Colors.purpleAccent,
            ),
            new Text('Date Picker'),
            new Text(_datePicker),
            new RaisedButton(
              onPressed: _selectedDate,
              child: new Text('Pick Date'),
            ),
          ],
        ),
      ),
    );
  }
}
