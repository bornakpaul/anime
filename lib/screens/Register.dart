import 'package:anime/screens/Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController usernameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: SafeArea(
              child: Column(
                children: [
                  HeaderWidget(
                    width: width,
                    text: 'Create a \nnew Account',
                  ),
                  TextFieldWidget(
                    width: width,
                    usernameController: usernameController,
                    hintText: 'UserName',
                  ),
                  TextFieldWidget(
                    width: width,
                    usernameController: usernameController,
                    hintText: 'Email',
                  ),
                  TextFieldWidget(
                    width: width,
                    usernameController: usernameController,
                    hintText: 'Password',
                  ),
                  ButtonWidget(
                    width: width,
                    height: height,
                    text: 'Register',
                    textSize: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          width: width / 1.8,
                          text: 'Already have an account ?',
                          textSize: 16,
                          textColor: Colors.grey.shade500,
                        ),
                        TextLinkWidget(
                            width: width / 6,
                            text: 'Sign In',
                            textSize: 16,
                            textColor: Colors.black87)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: TextWidget(
                      width: width / 1.15,
                      text:
                          'By registration, I agree to the Terms of Use and Privacy Policy',
                      textSize: 14,
                      textColor: Colors.grey.shade400,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50),
                    width: width,
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          color: Colors.grey.shade500,
                        )),
                        TextWidget(
                          width: width / 3,
                          text: 'or Register with',
                          textSize: 14,
                          textColor: Colors.grey.shade500,
                        ),
                        Expanded(
                            child: Divider(
                          color: Colors.grey.shade500,
                        )),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      children: [
                        ButtonWidget(
                          width: width / 3,
                          height: height,
                          text: 'Facebook',
                          textSize: 16,
                        ),
                        ButtonWidget(
                          width: width / 3,
                          height: height,
                          text: 'Google',
                          textSize: 16,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
