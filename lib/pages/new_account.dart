import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 310,
                width: 310,
                child: Image.asset("assets/images/pic2.png"),
              ),
            ),
            const Text("Create your new account"),
            const Text(
              "Welcome New User!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(16.0),
              // const EdgeInsets.symmtric(version: 16.0, horizontal: 32.0;)
              child: Column(
                children: [
                  TextFormField(
                    autocorrect: true,
                    decoration: const InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "User Name",
                    ),
                  ),
                  TextFormField(
                    autocorrect: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Email Id",
                      labelText: "Email Id",
                    ),
                  ),
                  TextFormField(
                    autocorrect: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Phone number",
                      labelText: "Phone number",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    autocorrect: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, myRoutes.loginRoute);
                    },
                    child: Text("Sign Up now!"),
                    style: TextButton.styleFrom(
                        minimumSize: const Size(100, 50),
                        backgroundColor: Colors.amber),
                  ),
                  const Text("______"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, myRoutes.loginRoute);
                      },
                      child: const Text("Go back to login screen"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
