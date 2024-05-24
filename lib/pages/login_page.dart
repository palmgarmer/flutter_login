import 'package:flutter/material.dart';
import 'package:flutter_application/components/ContinueButton.dart';
import 'package:flutter_application/components/squreTile.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Login Logo
                const Text("Login",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 5,
                ),

                // welcome text
                const Text(
                  "Welcome! Let's have a great day",
                ),
                const SizedBox(
                  height: 25,
                ),

                // Email Field
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "Enter your email",
                    ),
                  ),
                ),

                // Password Field
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "Enter your password",
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                // Forgot Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                // Continue Button
                ContinueButton(
                  onTap: () {},
                ),
                const SizedBox(
                  height: 25,
                ),

                //Or continue with
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("OR"),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                SqureTile(
                  imagePath: 'lib/images/google.png',
                  title: 'Google',
                  onTap: () {},
                ),

                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
