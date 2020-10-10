import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class SignUp extends StatelessWidget {
  String username;
  FocusNode _emailFocus = FocusNode();
  FocusNode _passwordFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    double mediaHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
              left: 40.0,
              right: 40.0,
              top: mediaHeight* 0.07,
              bottom: mediaHeight * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Plant Lovers',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Color(0xffBFC2B7),
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: mediaHeight * 0.01,
              ),
              Text(
                'Take care of your plants',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: mediaHeight * 0.05,
              ),
              Text('Sign up',
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xff86A272),
                      fontWeight: FontWeight.w300)),
              SizedBox(
                height: mediaHeight * 0.01,
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
                  _emailFocus.requestFocus();
                },
                onSubmitted: (value) {
                  print('this is on submitted $value');
                },
              ),
              TextField(
                focusNode: _emailFocus,
                decoration: InputDecoration(
                  labelText: 'email',
                ),
                onEditingComplete: () {
                  _passwordFocus.requestFocus();
                },
              ),
              TextField(
                focusNode: _passwordFocus,
                obscureText: true,
                obscuringCharacter: '•',
                decoration: InputDecoration(
                  labelText: 'password',
                ),
                onEditingComplete: () {
                  _passwordFocus.unfocus();
                },
              ),
              SizedBox(
                height: mediaHeight * 0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                // padding: EdgeInsets.symmetric(horizontal: 60.0),
                child: FlatButton(
                  color: Color(0xff86A272),
                  onPressed: () {
                    // _emailFocus.dispose();
                    // _passwordFocus.dispose();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile(username)),
                    );
                  },
                  child: Text(
                    'Sign up',
                    style:
                        TextStyle(color: Colors.grey.shade200, fontSize: 18.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1.0,
                      color: Colors.grey,
                      indent: 40.0,
                      endIndent: 10.0,
                    ),
                  ),
                  Text('OR'),
                  Expanded(
                      child: Divider(
                    thickness: 1.0,
                    color: Colors.grey,
                    indent: 10.0,
                    endIndent: 40.0,
                  )),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              OutlineButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text('SignIn with Facebook',
                      style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                ),
              ),
              SizedBox(height: mediaHeight * 0.065),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xffB1BDA7),
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('onntapp called');
                          Navigator.canPop(context)
                              ? print('yes it can pop')
                              : print('no it can\'t pop');
                        },
                      text: 'SignIn',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffA2AB98),
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
