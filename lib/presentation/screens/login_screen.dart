import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:magic_cofee/presentation/screens/home_screen.dart';
import 'package:magic_cofee/presentation/screens/register_screen.dart';
import 'package:email_validator/email_validator.dart';
import 'package:magic_cofee/presentation/screens/splash_screen.dart';
import 'package:magic_cofee/presentation/screens/verfiy_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool _isObscure = true;
  final _username = "username@gmail.com";

  final _password = "password123";
  bool fetchCredentials(String username, String password) {
    // for (var j = 0; j < _username.length; j++) {
    //   if (username[j] == _username[j] && password[j] == _password[j]) {
    //     return true;
    //   }
    // }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: HexColor("#324A59"),
                  fontFamily: "Poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "WELCOME",
                style: TextStyle(
                  color: HexColor("#AAAAAA"),
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: usernameController,
                    validator: (value) => EmailValidator.validate(value!)
                        ? null
                        : "Please enter a valid email",
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: "Email Address ",
                      prefixIcon: Icon(
                        Icons.email,
                        color: HexColor("#324A59"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }

                      return null;
                    },
                    maxLines: 1,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      labelText: "Enter your password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility,
                          color: _isObscure ? HexColor("#324A59") : Colors.blue,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: HexColor("#324A59"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('forget your password?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerfiyScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'verfiy',
                          style: TextStyle(color: HexColor("#324A59")),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            if (fetchCredentials(usernameController.text,
                                passwordController.text)) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SplashScreen1Sub()),
                                (Route<dynamic> route) => false,
                              );
                            }
                          }
                        },
                        backgroundColor: HexColor("#324A59"),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not registered yet?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Create an account',
                    style: TextStyle(color: HexColor("#324A59")),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
