import 'package:flutter/material.dart';
import 'package:flutter_multi_shop_app/views/screens/auth_screens/register_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login Your Account",
                    style: GoogleFonts.lato(
                      color: Color(0xFF0d120E),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                      fontSize: 23,
                    ),
                  ),
                  Text(
                    "To Explore the world exclusive",
                    style: GoogleFonts.lato(
                      color: Color(0xFF0d120E),
                      letterSpacing: 0.2,
                      fontSize: 14,
                    ),
                  ),
                  Image.asset(
                    "assets/images/Illustration.png",
                    width: 200,
                    height: 200,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email",
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w600, letterSpacing: 0.2),
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty) {
                        return "Please enter your email";
                      } else {
                        return null;
                      }
                    },
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9)),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          labelText: "Enter your email",
                          labelStyle: GoogleFonts.nunitoSans(
                              fontSize: 14, letterSpacing: 0.1),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/icons/email.png",
                              width: 20,
                              height: 20,
                            ),
                          ))),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty) {
                        return "Please enter your password";
                      } else {
                        return null;
                      }
                    },
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9)),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          labelText: "Enter your password",
                          labelStyle: GoogleFonts.nunitoSans(
                              fontSize: 14, letterSpacing: 0.1),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/icons/password.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                          suffixIcon: const Icon(Icons.visibility))),
                          const SizedBox(height: 20),
                          InkWell(
                            onTap: () {
                              if(_formKey.currentState!.validate()) {
                                print("correct");
                              } else {
                                print("incorrect");
                              }
                            },
                            child: Container(
                              width: 319,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: const LinearGradient(
                                  colors: [Color(0xFF102DE1), Color(0xCC0D6EFF)],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Sign In",
                                  style: GoogleFonts.lato(
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
              
                          const SizedBox(
                            height: 20,
                          ),
              
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text("Need an Account? ", style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1
                            ),), InkWell(
                               onTap: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return RegisterScreen();
                                }))
                              },
                              child: Text("Sign Up", style: GoogleFonts.roboto(
                                color: const Color(0xFF103DE5),
                                fontWeight: FontWeight.bold
                              ),),
                            )
                          ],)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
