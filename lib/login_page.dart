import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
              "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Your Name",
                      labelText: "UserName"
                  ),
                ),

                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      labelText: "Password",
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                    onPressed: (){
                      print("Welcome");
                    },
                    child: Text("Login"),
                  style:  TextButton.styleFrom()
                  ),
              ],
            ),
          )

        ],
      )
    );
  }
}
