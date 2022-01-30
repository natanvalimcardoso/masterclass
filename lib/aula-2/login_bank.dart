import 'package:flutter/material.dart';

class LoginBank extends StatelessWidget {
  const LoginBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF151414),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: MediaQuery.of(context).size.width < 600
                ? const EdgeInsets.only(top: 100)
                : const EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Image.asset('assets/images/logo_seam.png'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 50),
            height: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Get your Money\nUnder Control',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text('Manage your expenses \n Seamlessly',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    )),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 40,
                width: 380,
                child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Sign Up with Email ID',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(94, 92, 229, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 40,
                width: 380,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Image.asset('assets/images/google.png'),
                    ),
                    const Text(
                      'Sign Up with Google',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
