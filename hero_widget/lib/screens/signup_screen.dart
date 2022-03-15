import 'package:flutter/material.dart';
import 'package:hero_widget/screens/profile_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.only(top: 15),
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height * 0.1,
          width: double.infinity,
          child: const Hero(
              tag: "hero tag 1",
              child: FlutterLogo(
                size: 200,
                style: FlutterLogoStyle.horizontal,
              )),
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black.withOpacity(0.3),
              ),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  authTextFormField(
                    hint: "Your name",
                    isPassword: false,
                    icon: Icons.person,
                  ),
                  authTextFormField(
                    hint: "Your Email",
                    isPassword: false,
                    icon: Icons.alternate_email,
                  ),
                  authTextFormField(
                    hint: "Password",
                    isPassword: true,
                    icon: Icons.security,
                  ),
                  authTextFormField(
                    hint: "Confirm Password",
                    isPassword: true,
                    icon: Icons.security,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ProfileScreen()));
                          },
                          child: const Text("Sign Up")),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                ),
                const Hero(
                  tag: "hero tag 2",
                  child: CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage("assets/profile_avatar.png"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  authTextFormField(
      {required String hint,
      required bool isPassword,
      required IconData icon}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black.withOpacity(0.5),
      ),
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        obscureText: isPassword ? true : false,
        decoration: InputDecoration(
          labelText: hint,
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.blue,
            ),
          ),
          prefixIcon: Icon(
            icon,
            color: Colors.blueAccent,
          ),
          suffixIcon: isPassword
              ? IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility_off,
                    color: Colors.blueAccent,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
