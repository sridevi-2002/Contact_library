// import 'package:contactui/contacts.dart';
import 'package:contactui/main.dart';
import 'package:flutter/material.dart';

class RegPage extends StatefulWidget {
  const RegPage({super.key});

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  TextEditingController content1 = TextEditingController();
  TextEditingController content2 = TextEditingController();

  final formfield = GlobalKey<FormState>();
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Register"),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              const SizedBox(
                child:  Image(image: NetworkImage("https://cdn.vectorstock.com/i/preview-lt/23/70/default-avatar-profile-icon-vector-18942370.webp"),height: 100,width: 100,)),
              const SizedBox(
                height: 20,
              ),
              TextField(
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
                    child: Icon(
                        passToggle ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
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
                    child: Icon(
                        passToggle ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyApp()));
                },
                child: const Text(
                  "REGISTER",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  selectionColor: Colors.amberAccent,
                ),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                   TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>const MyApp()));
                   }, child: const Text("Sign in"))
                ],
              ),
             
            ],
          ),
        ),
      ),
    );
  
}
}