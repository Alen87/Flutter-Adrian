import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String adminEmail = "";
  String adminPassword= "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * .2,
                child: Column(
                  children: [
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(23),color: Colors.lightBlueAccent),
                      padding: const EdgeInsets.all(20),
                      width: 600,
                      height: 100,
                      child: const Text(
                        "  Bok svima!" +
                            "\n" +
                            "Moje ime je Adrian,došao sam 27.03.2023. kako bi ulijepšo svijet",
                     style: TextStyle(color: Colors.pinkAccent), ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(

                        "images/viber_image_2023-03-28_17-07-47-065.jpg"),
                    const SizedBox(height: 10,),
                    TextField(

                      onChanged: (value) {
                        adminEmail = value;
                      },
                      style: const TextStyle(fontSize: 16, color: Colors.white,),
                      decoration: const InputDecoration(

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.pinkAccent, width: 2),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.blue),
                        icon: Icon(
                          Icons.email,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                    TextField(

                      onChanged: (value) {
                        adminPassword = value;
                      },
                      style: const TextStyle(fontSize: 16, color: Colors.white,),
                      decoration:  const InputDecoration(

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.pinkAccent, width: 2),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.blue),
                        icon: Icon(
                          Icons.admin_panel_settings,
                          color: Colors.cyan,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
