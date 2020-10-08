import 'package:flutter/material.dart';
import 'profile.dart';

class SignUp extends StatelessWidget {
  String username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Plant Lovers',
              ),
              SizedBox(
                height: 25.0,
              ),
              Text('Take care of your plants'),
              SizedBox(
                height: 15.0,
              ),
              Text('Sign UP'),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
                onChanged: (value) {
                  print(value);
                  username = value;
                },
                onEditingComplete: () {
                  print('editing complete');
                },
                onSubmitted: (value) {
                  print('this is on submitted $value');
                },
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'email',
                ),
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '+',
                decoration: InputDecoration(
                  hintText: 'password',
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile(username)),
                  );
                },
                child: Text('Sign UP'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    color: Colors.black,
                    thickness: 2.0,
                  ),
                  Text('OR'),
                  Divider(
                    color: Colors.black,
                    thickness: 2.0,
                    indent: 50.0,
                  ),
                ],
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('SignIn with Facebook'),
              ),
              Text('Already have an account'),
              InkWell(onTap: () {}, child: Text('SignIn')),
            ],
          ),
        ),
      ),
    );
  }
}
