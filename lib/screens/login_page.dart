
import 'package:appone/commons/my-button.dart';
import 'package:appone/commons/my_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../commons/square_Tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text controllers
  final usernameContrioller = TextEditingController();
  final passwordController = TextEditingController();

  //signuser in
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),

              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              //welcome back message
              Text(
                'welcome back, you\'ve been missed',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25,),

              //username text field
              MyTextField(
                controller: usernameContrioller,
                hintText: "Username",
                obscureText: false,
              ),

              const SizedBox(height:10),

              //password text field
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height:10),

              //forgot password
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25,),

              //sign in button
              MyButton(
                  onTap: signUserIn,
              ),

              const SizedBox(height: 20,),

              //or continue with
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Text('Or continue with'),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
              ),

              const SizedBox(height: 20,),

              //google and apple sign in buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google button
                    SquareTile(imagePath: 'lib/Flutter Images/google.webp',

                    ),

                    SizedBox(width: 25),

                    //apple button
                    SquareTile(imagePath: 'lib/Flutter Images/apple.jpg')
                  ],
              ),

              const SizedBox(height: 50,),

              //not a member register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a Member',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4,),
                  const Text(
                    'Register Now',
                      style: TextStyle(
                      color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  )
                  )
                ],
              )
           ],
          ),
        ),
      ),
    );

  }
}
