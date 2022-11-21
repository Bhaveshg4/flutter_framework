import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  // To have  anything private ad _ infront of the name, to keep it public just write the word
  //ex private _name , public name;
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  moveToHome(BuildContext context) async {
    setState(() {
      changeButton = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    await Navigator.pushNamed(context, myRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
  }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 2,
              ),
              SizedBox(
                height: 310,
                width: 310,
                child: Image.asset(
                  "assets/images/pic_1.png",
                ),
              ),
              const Text("Please Log In with your RKNEC Id"),
              Text(
                "Welcome $name",
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
                      //validator: (value) {
                      // if (value.isEmpty) {
                      //   return "User name cannot be Empty";
                      // }
                      // return null;
                      //},
                      onChanged: (Value) {
                        name = Value;
                        setState(() {
                          //Calling build again to chnage the state of the widgit
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      autocorrect: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      //validator: (value) {
                      // if (value.isEmpty) {
                      //   return "User name cannot be Empty";
                      // }
                      // return null;
                      //},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Material(
                      child: InkWell(
                        //it shows some animation in the taping of the button
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 100,
                          height: 30,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(Icons.done)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 50 : 8)),
                        ),
                      ),
                    ),
                    /*ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, myRoutes.homeRoute);
                      },
                      child: const Text("Sign In!"),
                      style: TextButton.styleFrom(
                          minimumSize: const Size(100, 50),
                          backgroundColor: Colors.amber),
                    ),*/
                    const Text("________"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, myRoutes.newAccount);
                        },
                        child: const Text(
                          "New User? click here..",
                          style: TextStyle(color: Colors.amber),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
