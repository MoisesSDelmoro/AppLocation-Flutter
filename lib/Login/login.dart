import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'LOGIN',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.50,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Image.asset(
                "assets/login/logo_login.png",
              ),
            ),
          ),
          Container(
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      width: size.width * 0.85,
                      height: size.height * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Image.asset(
                              "assets/login/google.png",
                            ),
                          ),
                          Text(
                            'Login com conta Google',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      width: size.width * 0.85,
                      height: size.height * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Image.asset(
                              "assets/login/user.png",
                            ),
                          ),
                          Text(
                            'Login com Usuário e Senha',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
