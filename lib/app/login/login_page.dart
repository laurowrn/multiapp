import 'package:flutter/material.dart';
import 'package:multiapp/app/login/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginController loginController = LoginController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              'https://c4.wallpaperflare.com/wallpaper/500/442/354/outrun-vaporwave-hd-wallpaper-preview.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.6),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height - 410,
              width: MediaQuery.of(context).size.width - 80,
              child: Card(
                color: Colors.white.withOpacity(0.9),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          counterText: '',
                        ),
                        maxLength: 30,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: passwordController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          border: OutlineInputBorder(),
                          counterText: '',
                        ),
                        maxLength: 15,
                        maxLines: 1,
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RaisedButton(
                        child: Text('Login'),
                        onPressed: () {
                          loginController.doLogin(
                            emailController.text,
                            passwordController.text,
                            context,
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
