import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_clone/resources/auth_methods.dart';

class Google extends StatelessWidget {
  const Google({super.key});

  @override
  Widget build(BuildContext context) {
    // Static String routerName='/Google';
    final TextEditingController password = TextEditingController();
    final AuthMethods current = AuthMethods();
    final data = current.user.email;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment:MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Google',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Welcome',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25)),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_2_rounded, color: Colors.grey),
                  Text(
                    '$data',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                      hintText: 'Enter your password',
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text('Show password'),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              SizedBox(
                height: 250,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: ElevatedButton(
                  onPressed: () =>current.savepassoerd(password.text,context),
                  child: Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
