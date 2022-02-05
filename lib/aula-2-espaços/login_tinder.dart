import 'package:flutter/material.dart';

class LoginTinder extends StatelessWidget {
  const LoginTinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(235, 102, 94, 1),
            Color.fromRGBO(232, 67, 113, 1),
          ],
        )),
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 20, top: 40),
                height: 25,
                width: 25,
                child: Image.asset('assets/images/back.png'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      margin: const EdgeInsets.only(bottom: 10, right: 10),
                      width: 30,
                      child: Image.asset('assets/images/tinder.png')),
                  const Text('tinder',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Column(
                children: [
                  const Text(
                    'By tapping Create Account or Sign In, you agree to our ',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Terms.',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold)),
                      Text(
                        'Learn how we process your data in our',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(' Privacy Policy.',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold)),
                      Text(
                        'and ',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                      Text('Cookie Policy.',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    ButtonSocialMedia(
                      text: 'SIGN IN WITH APPLE',
                      route: '/home',
                      image: 'assets/images/apple.png',
                    ),
                    ButtonSocialMedia(
                      text: 'SIGN IN WITH FACEBOOK',
                      route: '/home',
                      image: 'assets/images/facebook_white.png',
                    ),
                    ButtonSocialMedia(
                      text: 'SIGN IN WITH PHONE NUMBER',
                      route: '/home',
                      image: 'assets/images/chat.png',
                    ),
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Trouble signing in?',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//* Componente -> Botões:

class ButtonSocialMedia extends StatelessWidget {
  const ButtonSocialMedia(
      {Key? key, required this.text, required this.route, required this.image})
      : super(key: key);
  final String text;
  final String route;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () {
            Navigator.pushReplacementNamed(context, route);
          },
          child: Ink(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: 25,
                    width: 25,
                    child: Image.asset(image),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        text,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
