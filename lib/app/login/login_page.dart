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
                color: Colors.white.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.purpleAccent),
                          labelText: 'Email',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                          counterText: '',
                        ),
                        style: TextStyle(color: Colors.purple),
                        maxLength: 30,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.purpleAccent),
                          labelText: 'Senha',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                          counterText: '',
                        ),
                        style: TextStyle(color: Colors.purple),
                        maxLength: 30,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ButtonTheme(
                        buttonColor: Colors.deepPurpleAccent,
                        height: 50,
                        minWidth: 200,
                        child: RaisedButton(
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            loginController.doLogin(
                              emailController.text,
                              passwordController.text,
                              context,
                            );
                          },
                        ),
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
