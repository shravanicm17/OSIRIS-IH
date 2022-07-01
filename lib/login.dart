import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(height: 50),
            //OSIRIS
            Text(
              'OSIRIS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'Your Soil Doctor',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),
            //EMAIL
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '   Email',
                    ),
                  ),
                ),
              ),
            SizedBox(height: 10),

            //PASSWORD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '   Password',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              //SIGN IN
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(color: Colors.green[600],
                  borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                        'Sign In',
                      style: TextStyle(
                          color:Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,                      ),
                    ),
                  ),
                ),
              ),
            SizedBox(height: 25),

            //not a member register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member? ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Register now',
                    style:TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
          ],

          ),
        ),
      )
    );
  }
}


