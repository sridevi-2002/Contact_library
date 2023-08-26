import 'package:contactui/register.dart';
import 'package:flutter/material.dart';

import 'profile.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController content1 = TextEditingController();
  TextEditingController content2 = TextEditingController();

  // final formfield = GlobalKey();
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        // appBar: AppBar(
        //   title: const Text("USER CONTACTS"),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.vectorstock.com/i/preview-lt/23/70/default-avatar-profile-icon-vector-18942370.webp"),
                  ),
                ),
                SizedBox(
                  width: 400,
                  child: TextField(
                    controller: content1,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      labelText: "Email",
                      hintText: "Enter your email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      suffix: InkWell(
                        onTap: () {
                          setState(
                            () {
                              passToggle = !passToggle;
                            },
                          );
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 400,
                  child: TextField(
                    controller: content2,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      labelText: "Password",
                      hintText: "Enter password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      suffix: InkWell(
                        onTap: () {
                          setState(
                            () {
                              passToggle = !passToggle;
                            },
                          );
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()));
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    selectionColor: Colors.amberAccent,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegPage()));
                        },
                        child: const Text("Sign up"))
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
