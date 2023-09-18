import 'package:flutter/material.dart';
 class RegisterView extends StatefulWidget {
   const RegisterView({Key? key}) : super(key: key);
 
   @override
   State<RegisterView> createState() => _RegisterViewState();
 }
 
 class _RegisterViewState extends State<RegisterView> {

   late final TextEditingController _email;

   late final TextEditingController _password;

   get userCredential => null;

   @override
   void initState() {
     _email = TextEditingController();
     _password = TextEditingController();
     super.initState();
   }

   @override
   void dispose() {
     _email.dispose();
     _password.dispose();
     super.dispose();
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
         title: const Text('Register'),
     ),
     body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Create New Account',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                    fontFamily: 'Pacifico',
                    color: Colors.blue
                ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Row(
                      children: [
                        Text('Already have an account?',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Pacifico'
                    ),
                        )
                        TextButton(onPressed: ,

                            child: child)
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
     )
     );
   }
 }
 
