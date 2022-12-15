import 'package:flutter/material.dart';
import 'formm.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomeRoute(),
      '/form': (context) => FormRoute(),
      '/first': (context) => const FirstRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
      '/fourth': (context) => const FourthRoute(),
    },
  ));
}

class HomeRoute extends StatelessWidget {
  HomeRoute({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent[100],
        appBar: AppBar(
          title: Center(child: Text('Login Page')),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'LogIn',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 35),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  hintText: 'Enter email',
                                  prefixIcon: Icon(Icons.email),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                                onChanged: (String value) {},
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'email required';
                                  }
                                },
                              )),
                          SizedBox(height: 30.0),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  hintText: 'Enter password',
                                  prefixIcon: Icon(Icons.lock),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                                onChanged: (String value) {},
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'password is required';
                                  }
                                },
                              )),
                          SizedBox(height: 30.0),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 35),
                              child: MaterialButton(
                                  minWidth: double.infinity,
                                  onPressed: () {
                                    if (_formkey.currentState!.validate()) {
                                      Navigator.pushNamed(context, '/first');
                                      return;
                                    }
                                  },
                                  child: Text('Login'),
                                  color: Colors.black,
                                  textColor: Colors.white)),
                          TextButton(
                            child: Text('Sign up here!'),
                            onPressed: () {
                              (Navigator.pushNamed(context, '/form'));
                            },
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Curriculum Vitae"),
        centerTitle: true,
        backgroundColor: Colors.green[500],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/tin.jpg'),
                radius: 80.0,
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.facebook,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'CHRISTINE JANE CANO',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'christinejanecano@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.grey[800],
            ),
            Center(
              child: Text(
                "CHRISTINE JANE CANO.",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                "162 Bued, Calasiao, Pang.",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(
                "christinejanecano@gmail.com",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                "09159371653",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 202, 215, 202), // background
                  onPrimary: Colors.black, // foreground
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text(
                  'Personal Information',
                  style: TextStyle(
                    fontWeight: (FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 202, 215, 202), // background
                  onPrimary: Colors.black, // foreground
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text(
                  'Educational Attaintment',
                  style: TextStyle(
                    fontWeight: (FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/third');
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 200, 214, 201), // background
                  onPrimary: Colors.black, // foreground
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text(
                  'Skills and Abilities',
                  style: TextStyle(
                    fontWeight: (FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/fourth');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Personal Information"),
        backgroundColor: Color.fromARGB(255, 202, 215, 202),
      ), // AppBar
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(
                height: 20.0,
                color: Colors.black,
              ),
              Text(
                "Name",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "CHRISTINE JANE CANO",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Age:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "24 years old",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                "Address:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "#162 Bued, Calasiao, Pang.",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                "Date of Birth:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Oct 12, 1998",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                "Birthplace:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Dagupan City, Pangasinan",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                "Sex:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Female",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                "Citizenship:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Filipino",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                "Civil Status:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Single",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                "Religion:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "ROMAN CATHOLIC",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
            ]),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Educational Attaintment"),
        backgroundColor: Color.fromARGB(255, 202, 215, 202),
      ), // AppBar
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(
                height: 20.0,
                color: Colors.black,
              ),
              Text(
                "Tertiary Education:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Philippine College of Science and Technology",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Bachelor of Science in Information Technology",
                style: TextStyle(
                    color: Colors.blueGrey[900],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "(2019-PRESENT)",
                style: TextStyle(
                    color: Colors.blueGrey[900],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "High School:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Bued National High School",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                " 1st year to 4th year ",
                style: TextStyle(
                    color: Colors.blueGrey[900],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "(2011-2015)",
                style: TextStyle(
                    color: Colors.blueGrey[900],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30.0),
              Text(
                "Primary Education:",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Bued Elementary School",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Grade 1 to Grade 6",
                style: TextStyle(
                    color: Colors.blueGrey[900],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "(2005-2011)",
                style: TextStyle(
                    color: Colors.blueGrey[900],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ]),
      ),
    );
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Skills"),
        backgroundColor: Color.fromARGB(255, 202, 215, 202),
      ), // AppBar
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(
                height: 20.0,
                color: Colors.black,
              ),
              Text(
                "HONEST",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "EAGER TO LEARN",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "FLEXIBLE",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Critical thinking skills",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                "Creative and adaptive",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                "Can work under pressure",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ]),
      ),
    );
  }
}
