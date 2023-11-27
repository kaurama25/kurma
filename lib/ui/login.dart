import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login Admin",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 50),
                Center(
                  child: Form(
                    key: _formKey,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Column(
                        children: [
                          usernameTextField(),
                          SizedBox(height: 24),
                          passwordTextField(),
                          SizedBox(height: 40),
                          tombolLogin(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget usernameTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Username"),
      controller: _usernameCtrl,
    );
  }

  Widget passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Password"),
      obscureText: true,
      controller: _passwordCtrl,
    );
  }

  Widget tombolLogin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        child: Text("Login"),
        onPressed: () {},
      ),
    );
  }
}