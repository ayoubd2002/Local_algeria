import 'package:flutter/material.dart';
import 'package:local_algeria/screens/components/myTextField.dart';
import 'package:local_algeria/screens/intro_screen.dart';
import 'signUpScreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final emailController = TextEditingController();
  final passwordContoller = TextEditingController();
  void signIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        const Image(
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            image: AssetImage("assets/background.jpg")),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.15),
              Colors.black.withOpacity(0.5)
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: SizedBox(
                  height: 40,
                  child: Text(
                    'Sign in to your account',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
                prefixIcon: Icons.email,
              ),
              MyTextField(
                hintText: 'Password',
                controller: passwordContoller,
                obscureText: true,
                prefixIcon: Icons.key,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      onPressed: null,
                      child: const Text(
                        'Forgot Password ?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: signIn,
                child: SizedBox(
                  width: 350,
                  height: 65,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => introscreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(255, 196, 0, 100), // White text color
                      elevation: 4, // Elevation to create a shadow
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(50), // Rounded corners
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        // Navigate to the SignupPage when the button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()),
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style:
                            TextStyle(color: Color.fromRGBO(255, 196, 0, 100)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.withOpacity(0.8),
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.withOpacity(0.8),
                    )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13, vertical: 11),
                    child: Image.asset("assets/google.png", height: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/facebook.png", height: 60),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/apple.png", height: 50),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
