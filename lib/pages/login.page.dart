// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'signup.page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFF5F5F5),
          padding:
              const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 40),
          child: Column(
            children: [
              Container(
                height: 450,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text('Sign in to continue'),
                            ],
                          ),
                          FlatButton(
                            child: const Text('Sign Up'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignupPage(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: const TextStyle(fontSize: 20),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        height: 40,
                        child: FlatButton(
                          onPressed: () {},
                          child: const Text('Forgot your password?'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: FlatButton(
                          child: const Text(
                            'Sign In',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: const Text(
                  '- OR - ',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: FlatButton(
                  child: Row(
                    children: [
                      SizedBox(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          'assets/facebook.png',
                          width: 24,
                        ),
                      ),
                      const Text(
                        'Sign In with Facebook',
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: FlatButton(
                  child: Row(
                    children: [
                      SizedBox(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          'assets/google.png',
                          width: 24,
                        ),
                      ),
                      const Text(
                        'Sign In with Google',
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
