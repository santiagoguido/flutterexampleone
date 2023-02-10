import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/my_button.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  String? email;
  String? password;

  bool _wrongEmail = false;
  bool _wrongPassword = false;

  String _emailText = 'Introduzca un email válido';
  String _passwordText = 'Usa una contraseña más segura';


  // sign user in method
  void signUserIn() {}
  void click(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: null,
            backgroundColor: Colors.transparent,
            leading: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              },
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              ),
            )),


      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/logos_images/logo_main.png')
              ),
              // logo

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 5.0, left: 15.0, right: 5.0),
                      child: Text(
                        'Regístrate',
                        style: TextStyle(color: Colors.indigo[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,),
                      ),
                    ),
                  ]
              ),


              Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, bottom: 20.0, left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        errorText: _wrongEmail ? _emailText : null,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        errorText: _wrongPassword ? _passwordText : null,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        errorText: _wrongPassword ? _passwordText : null,
                      ),
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ],
          ),



          child: Row(
              children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                const SizedBox(height: 30),
                MyButton(onTap: () {},
                ),
                const SizedBox(height: 30),
                MyButtonContrast(
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    'O inicia sesión con:',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
          ),


          const SizedBox(height: 20),


          // google + apple sign in buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: click,
                  icon: const Icon(FontAwesomeIcons.google,color: Colors.redAccent)
              ),
              IconButton(
                  onPressed: click,
                  icon: const Icon(FontAwesomeIcons.apple,color: Colors.black,)
              ),
              IconButton(
                  onPressed: click,
                  icon: const Icon(FontAwesomeIcons.facebook,color: Colors.blueAccent,)
              ),
              // apple button
              //SquareTile(imagePath: 'assets/logos_images/facebook_logo.png')
            ],
          ),

          const SizedBox(height: 16),
              ],
          ),
        ),
      ),
    );
  }
}