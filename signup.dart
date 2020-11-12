import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

// widget untuk membuat textfield username
Widget buildUsername(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      Padding(padding: EdgeInsets.only(top:30)),
      Text(
        'Username',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )
      ),
      SizedBox(height: 10,),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left:20),
            hintText: 'Username',
            hintStyle: TextStyle(
              color: Colors.white24
            )
          ),
        )
      )
    ],
  );
}

// widget untuk membuat textfield password
Widget buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      Padding(padding: EdgeInsets.only(top:20)),
      Text(
        'Password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left:20),
            hintText: 'Password',
            hintStyle: TextStyle(
              color: Colors.white24
            )
          ),
        )
      )
    ],
  );
}

// widget untuk membuat textfield confirm password
Widget buildConfirmPassBtn(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      Padding(padding: EdgeInsets.only(top:20)),
      Text(
        'Confirm Password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        child: TextField(
          obscureText: true,
          style: TextStyle(
            color: Colors.white
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left:20),
            hintText: 'Confirm Password',
            hintStyle: TextStyle(
              color: Colors.white24
            )
          ),
        )
      )
    ],
  );
}

// widget untuk membuat tombol sign up
Widget buildSignUpBtn(){
  return Container(
    padding: EdgeInsets.only(top:60),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Sign Up Pressed'),
      padding: EdgeInsets.all(25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      color: Color.fromRGBO(158, 60, 255, 1),
      child: Text(
        'REGISTER',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
        )
      ),
    ),
  );
}

// widget untuk membuat tombol login
Widget buildLoginBtn(){
  return GestureDetector(
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already Have An Account? ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500
            )
          ),
          TextSpan(
            text:'LOGIN',
            style: TextStyle(
              color: Color.fromRGBO(139, 30, 140, 1),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )
          )
        ]
      ),
    ),
  );
}


class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(12, 26, 70 , 1)
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 120,
                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    buildUsername(),
                    buildPassword(),
                    buildConfirmPassBtn(),
                    buildSignUpBtn(),
                    Padding(padding: EdgeInsets.only(top:60)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      child: buildLoginBtn(),
                    ),
                  ],
                )
                ),
              )
            ]
          )
        ),
      ),
    );
  }
}