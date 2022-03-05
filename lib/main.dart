import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  const LoginDemo({Key? key}) : super(key: key);

  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  bool ShowText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.camera),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
              child: Center(
                child: Container(
                    width: 80, child: Image.asset('assets/images/og_icon.png')),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ShowText ? 'Enter Email' : 'Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //TODO FORGOT PASSWORD
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () {
                  //TODO ON LOGIN
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Text('New User? Create Account'),
          ],
        ),
      ),
    );
  }
}
