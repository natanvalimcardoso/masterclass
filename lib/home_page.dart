import 'package:flutter/material.dart';
import 'package:masterclass/components/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lista de Exercícios'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width * 0.5,
                height: 30,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 8, 210, 213),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Normal',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: SingleChildScrollView(
                    child: Column(
                  children: const [
                    Button(
                        text: 'Aula 2 - Login Banco',
                        color: Colors.blue,
                        route: '/loginBank'),
                    Button(
                      text: 'Aula 3 - Anim Implicíta',
                      color: Colors.blue,
                      route: '/animacacaoImplicita',
                    ),
                  ],
                )),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.5,
                color: Color.fromARGB(255, 8, 210, 213),
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width * 0.5,
                height: 30,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 124, 5, 139),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Hard',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      Button(
                          text: 'Aula 2 - Login Tinder',
                          color: Colors.blue,
                          route: '/loginTinder'),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.5,
                color: Color.fromARGB(255, 124, 5, 139),
              )
            ],
          )
        ],
      ),
    );
  }
}
