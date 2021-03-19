import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Cooperative'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        // margin: const EdgeInsets.only(top: 10.0),
        child: new Center(
          child: new Column(
            // children: <Widget>[new Text('Add Widgets Here')],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                // child: new Center(
                  width: 190.0,
                  height: 190.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage("assets/images/cars.jpeg")))),
              new Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Container(
                      // child: new Text('data'),
                      child: new TextField(
                        decoration: new InputDecoration(
                          labelText: 'E-mail',
                          hintText: 'demo@email.com',
                          icon: new Icon(Icons.email),
                        ),
                        autocorrect: false,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                      ),

                    ),
                  ],
                ),
              ),
              new Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Container(
                      // child: new Text('data'),
                      child: new TextField(
                        decoration: new InputDecoration(
                          labelText: 'Password',
                          hintText: 'password',
                          icon: new Icon(Icons.vpn_key),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                      ),

                    ),
                  ],
                ),
              ),
              new Container(
                margin: const EdgeInsets.only(top: 15.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new Container(
                      // child: new Text('data'),
                        child: new MaterialButton(
                          height: 40.0,
                          minWidth: 100.0,
                          elevation: 5.0,
                          color: Theme
                              .of(context)
                              .primaryColorDark,
                          textColor: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0)),
                          child: new Text("Login"),
                          onPressed: () => {},
                          splashColor: Colors.greenAccent,
                        )),
                  ],
                ),
              ),

              new Container(
                margin: const EdgeInsets.only(top: 15.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new Text("Don't have accoun yet? ",
                      textDirection: TextDirection.ltr,
                      style: new TextStyle(fontSize: 20.0)),
                    new FlatButton(onPressed: () => '',
                        child: new Text('Click here', style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                        textColor: Colors.blue,

                        )

                  ],
                ),
              ),

              /*new RaisedButton(

                onPressed: () => '',
                child: new Text('Login'),
                elevation: 5.0,
                color: Colors.green,
                textColor: Colors.white,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),

              )*/
            ],
          ),
        ),
      ),
    );
  }
}
