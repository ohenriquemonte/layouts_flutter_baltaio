// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.0),
        elevation: 0,
        // leading: const Text('1'),
        // title: const Text('Teste'),
        // actions: const [
        //   Icon(Icons.favorite),
        // ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 40),
          color: const Color(0xFFF5F5F5),
          child: Center(
            child: Column(
              children: [
                Container(
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
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Signup',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 60),
                        TextFormField(
                          //   autofocus: true,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            labelText: 'Name',
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
                          //   autofocus: true,
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
                          //   autofocus: true,
                          obscureText: true,
                          keyboardType: TextInputType.text,
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
                        const SizedBox(height: 40),
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: FlatButton(
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
