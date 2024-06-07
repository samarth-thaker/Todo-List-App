import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController();
  final _pwdController = TextEditingController();
  void signIn() {
    Navigator.pushNamed(context, '/dashboard');
  }
  void signUpNow(){
    Navigator.pushNamed(context, '/signup');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 203, 223, 226),
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
                  hintText: "password",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: signIn, child: const Text('Login')),
          
            const SizedBox(
              child: Text("Don't have an account?"),
            ),
            TextButton(onPressed: signUpNow, child:const Text("Sign up now"))
          ],
      ),
    )
    );
  }
}
