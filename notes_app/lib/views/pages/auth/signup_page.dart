import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Signup",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
                TextField(
                  obscureText: isObscureText,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        isObscureText = !isObscureText;
                        setState(() {});
                      },
                      icon: Icon(isObscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Sign Up"),
            ),
            Column(
              children: [
                const Text("Already have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("sign in"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
