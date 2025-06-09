import 'package:flutter/material.dart';
import 'package:local_algeria/screens/components/myTextField.dart';


import 'loginScreen.dart';
class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
    final emailController = TextEditingController();
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final passwordContoller = TextEditingController();
    void signUp(){}
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false, // Set this to false
        body: Stack(
            children:[
              const Image(
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  image:AssetImage("assets/background.jpg")
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.15),
                        Colors.black.withOpacity(0.5)
                      ],
                      begin:Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    )
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: SizedBox(
                        child: Text('REGISTER', style: TextStyle(
                            color:Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0).copyWith(bottom: 20),
                      child: SizedBox(

                        child: Text('Create Your Account Now !',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    MyTextField(
                        controller: firstNameController,
                        hintText: 'First Name',
                        obscureText: false,
                      prefixIcon: Icons.person,
                    ),
                    MyTextField(
                        controller: lastNameController,
                        hintText: 'Last Name',
                        obscureText: false,
                        prefixIcon: Icons.person,

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
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: GestureDetector(
                        onTap:signUp,
                        child: SizedBox(width: 350,
                          height: 65,

                          child: ElevatedButton(
                            onPressed: () {
                              // Add your button click logic here
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(255, 196, 0, 100), // White text color
                              elevation: 4, // Elevation to create a shadow
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50), // Rounded corners
                              ),
                              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?", style: TextStyle(color: Colors.white, fontSize: 15),),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              // Navigate to the SignupPage when the button is pressed
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginScreen()),
                              );
                            },
                            child: const Text("Login", style: TextStyle(color:Color.fromRGBO(255, 196, 0, 100)),),
                          ),
                        ],
                      ),
                    ),

                  ],


                ),
              )
            ]
        ),
      );
    }
}
