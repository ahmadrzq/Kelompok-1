import 'package:flutter/material.dart';
import 'package:mobile_solo/index.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  String nUsername, nPassword;

  //tambahkan form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // Mengeset height container menjadi full
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/1.png'), fit: BoxFit.cover),
          gradient: LinearGradient(
              colors: [Colors.blue[400], Colors.blue],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 180,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'Welcome To Work.in',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'Sign in with your account',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  // Menggunakan container agar bisa mengedit width TextFormField
                  Container(
                    // Mengeset width sebesar 90%
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: TextFormField(
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Harap Masukin Email/Phone';
                        }
                        return null;
                      },
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      maxLength: 40,
                      maxLengthEnforced: true,
                      controller: myUsernameController,
                      decoration: InputDecoration(
                        // Mengeset padding didalam text-field
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: 'Email/Phone',
                        hintStyle: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1.5,
                            color: Colors.white70,
                            fontWeight: FontWeight.w900),
                        filled: true,
                        hoverColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        fillColor: Colors.white.withOpacity(.3),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Menggunakan container agar bisa mengedit width TextFormField
                  Container(
                    // Mengeset width sebesar 90%
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: TextFormField(
                      validator: (String value) {
                        if (value.isEmpty) {
                          return '   Harap Masukin Password';
                        }
                        return null;
                      },
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      maxLength: 30,
                      maxLengthEnforced: true,
                      controller: myPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        // Mengeset padding didalam text-field
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: ' Password',
                        hintStyle: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1.5,
                            color: Colors.white70,
                            fontWeight: FontWeight.w900),
                        filled: true,
                        hoverColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        fillColor: Colors.white.withOpacity(.3),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Text(
                            'Lupa Password?',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: ButtonTheme(
                        buttonColor: Colors.white,
                        minWidth: MediaQuery.of(context).size.width,
                        height: 55,
                        child: RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.pushNamed(context, '/');
                            }
                            return false;
                          },
                          child: Text(
                            'Log in',
                            style: TextStyle(color: Colors.grey, fontSize: 22),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't Have an Accout ?",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
