import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Push Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Lost & Found',
           style: TextStyle(
               color: Color.fromARGB(255, 223, 69, 95),
               fontSize: 35,
               fontWeight: FontWeight.bold,
            ),
          ), 
      ),
      
       body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 32.0), 
              child: Text(
                'Login',
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 1, 156),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 30), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0), 
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Username or email',
                hintText: 'Enter your username',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 30), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0), 
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
              obscureText: true, 
            ),
          ),
           SizedBox(height: 10), 
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(data: 'Hello there from the Login!'),
                    ),
                  );
                },
                child: Text(
                  'Forget password?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 223, 69, 95),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30), 
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0), 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 12, 1, 156), 
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), 
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(data: 'Hello there from the first page!'),
                    ),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 238, 238, 238),
                    fontSize: 16, // Button text font size
                    fontWeight: FontWeight.bold, // Button text font weight
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 500), 
          Align(
            alignment: Alignment.center,
            child: Text(
              'Don’t have an account? Signup',
              style: TextStyle(
                color: Color.fromARGB(255, 12, 1, 156),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
    
}


class SecondPage extends StatelessWidget {
  // TODO 2: Create data as String HERE

  final String data;

  // TODO 3: Define data as an argument of the constructor HERE
  const SecondPage({Key? key, required this.data}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      color: Color.fromARGB(255, 235, 235, 235),
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(data),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 12, 1, 156),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Align( 
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 223, 69, 95),
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Register',
                    style: textStyle,
                  ),
                ),
              ),
            SizedBox(height: 350),
            Align( 
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context); 
                  },
                  child: Text(
                    'Already have an account? Login',
                    style: textStyle.copyWith(
                      color: Color.fromARGB(255, 12, 1, 156),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
