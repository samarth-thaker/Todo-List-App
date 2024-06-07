import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp ({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();
  final _pwdController = TextEditingController();
  void signUp() {
    Navigator.pushNamed(context, '/dashboard');
  }
  void signInNow(){
    Navigator.pushNamed(context, '/signin');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 203, 223, 226),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                    ),
                  ),
                  hintText: "E-mail id",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
             SizedBox(
              width: 300,
              child: TextField(
                controller: _pwdController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.deepOrange,
                  )),
                  hintText: "Set password",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _pwdController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.deepOrange,
                  )),
                  hintText: "Confirm password",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: signUp, child: const Text('Login')),
          
            const SizedBox(
              child: Text("Don't have an account?"),
            ),
            TextButton(onPressed: signInNow, child:const Text("Sign In now"))
          ],
      ),
    )
    );
  }
}
