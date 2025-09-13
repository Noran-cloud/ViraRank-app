import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ieee/Screens/home.dart';
import 'package:ieee/Screens/sign_in.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _formkey = GlobalKey<FormState>();

  var _emailController = TextEditingController();

  var _passwordController = TextEditingController();

  var _usernameController = TextEditingController();

  var _githubController = TextEditingController();

  final TextEditingController dayController = TextEditingController();

  final TextEditingController monthController = TextEditingController();

  final TextEditingController yearController = TextEditingController();

  String? selectedGender;

  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/signup_png.png',
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      'Create',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                    Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                    SizedBox(height: 20),
                    Form(
                      key: _formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: _usernameController,
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Please,enter your username';
                              if (value.length < 4)
                                return 'User Name shouldn\'t be less than 4 characters';
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person_pin_outlined,
                                color: Color(0xff5893D4),
                              ),
                              hintText: 'User Name',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 10),

                          TextFormField(
                            controller: _emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Please,enter your email';
                              if (!value.contains('@'))
                                return 'Please,enter valid email';
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Color(0xff5893D4),
                              ),
                              hintText: 'Email address',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),

                          SizedBox(height: 10),
                          TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Please,enter your password';
                              if (value.length < 8)
                                return 'Your password should be more than or equal to \n8 characters';
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Color(0xff5893D4),
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: _githubController,
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Please,enter your github link';
                              if (!value.contains('https://github.com/'))
                                return 'Invalid link';
                            },
                            decoration: InputDecoration(
                              prefixIcon: Image.asset(
                                'assets/images/github.png',
                                width: 40,
                              ),
                              hintText:
                                  'token ghp-a9ZAkh9AToZoiy8Eg1Ka6A4SXuXW0W23ynMb',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "BirthDate",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Ubuntu',
                              color: const Color.fromARGB(255, 44, 44, 44),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _dateBox("MM", monthController),
                              _dateBox("DD", dayController),
                              _dateBox("YYYY", yearController),
                            ],
                          ),
                          SizedBox(height: 3),
                          Container(
                            width: double.infinity,
                            height: 2,
                            color: const Color.fromARGB(255, 187, 186, 186),
                          ),

                          SizedBox(height: 10),
                          Text(
                            "Gender",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Ubuntu',
                              color: const Color.fromARGB(255, 44, 44, 44),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 25),
                              _genderButton("Male"),
                              SizedBox(width: 15),
                              _genderButton("Female"),
                            ],
                          ),
                          SizedBox(height: 3),
                          Container(
                            width: double.infinity,
                            height: 2,
                            color: const Color.fromARGB(255, 187, 186, 186),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formkey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            }
                          },
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Color(0xff5893D4),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        social_icons('assets/images/google.png'),
                        social_icons('assets/images/facebook.png'),
                        social_icons('assets/images/apple.png'),
                      ],
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Already have an account?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Ubuntu',
                                  ),
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignIn(),
                                        ),
                                      );
                                    },
                                  text: 'sign in',
                                  style: TextStyle(
                                    color: Color(0xff5893D4),
                                    fontFamily: 'Ubuntu',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 120,
                            height: 3,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dateBox(String hint, TextEditingController controller) {
    return SizedBox(
      width: hint == "YYYY" ? 90 : 70,
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Ubuntu',
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.black26),
          ),
        ),
      ),
    );
  }

  Widget _genderButton(String gender) {
    bool isSelected = selectedGender == gender;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedGender = gender;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              isSelected
                  ? Icons.radio_button_checked
                  : Icons.radio_button_checked,
              color: isSelected ? const Color(0xff5893D4) : Colors.grey,
            ),
            const SizedBox(width: 6),
            Text(
              gender,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: 'Ubuntu',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
