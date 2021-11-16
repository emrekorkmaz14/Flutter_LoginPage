import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wasty/widgets/FirstButton.dart';
import 'package:wasty/widgets/PrivacyPolicy.dart';
import 'package:wasty/widgets/RegisterWithScial.dart';
import 'package:wasty/widgets/TextFieldInformationPassword.dart';

import '../widgets/PrivacyPolicy.dart';
import '../widgets/TextFieldInformation.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              textWastyMethod(),
              textGetStartedMethod(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  children: [
                    textBecomePartMethod(),
                    SizedBox(
                      height: 10,
                    ),
                    TextFieldInformation(
                      name: "E-Mail",
                      icon: Icon(Icons.email_outlined,color: Colors.green.shade400,),
                    ),
                    
                    SizedBox(
                      height: 20,
                    ),
                    TextFieldInformationPassword(
                      name: "Create Password",
                      icon: Icon(Icons.lock_outline,color: Colors.green.shade400,),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFieldInformationPassword(
                      name: "Repeat Password",
                      icon: Icon(Icons.lock_outline,color: Colors.green.shade400,),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    FirstButton(
                      text: "Join in community",
                      onPressed: (){print("tıklandı");},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    PrivacyPolicy(
                      privacyPolicyFunc: (){print("privacyclicked");},
                      termsOfUseFunc: (){print("termclicked");},
                    ),
                    dividerMethod(),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RegisterWithScial(
                              text: "Google",
                              svg: SvgPicture.asset("assets/google.svg"),
                              func: (){print("google");},
                            ),
                            RegisterWithScial(
                              text: "Apple",
                              svg: SvgPicture.asset("assets/apple.svg"),
                              func: (){print("apple");},

                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RegisterWithScial(
                              text: "Twitter",
                              svg: SvgPicture.asset("assets/twitter.svg"),
                              func: (){print("twitter");},

                            ),
                              RegisterWithScial(
                              text: "Facebook",
                              svg: SvgPicture.asset("assets/facebook.svg"),
                              func: (){print("facebook");},

                            ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    
  }

  Row dividerMethod() {
    return Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 75,
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'or connect with',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          height: 75,
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                    ],
                  );
  }

  Row textBecomePartMethod() {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Become part of the future',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        '.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                            color: Colors.green.shade400),
                      ),
                    ],
                  );
  }

  Container textGetStartedMethod() {
    return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3)),
                ],
              ),
              padding: EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              height: 55,
              child: Text(
                'Get Started',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.green.shade400,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            );
  }

  Container textWastyMethod() {
    return Container(
              height: 150,
              width: double.infinity,
              color: Colors.green.shade400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'wasty.',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'think for nature.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
  }
}







