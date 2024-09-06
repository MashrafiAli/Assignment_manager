
import 'package:assingment_project/presentation/screens/auth/reset_Screen.dart';
import 'package:assingment_project/presentation/widgets/appBackgroundWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../assignment/assignmentScreen.dart';
import '../assignment/bottom_nav_bar.dart';
import 'email_verify_Screen.dart';


class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: AppBackgroundWidget(
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formkey,
            child:  Column(
              children: <Widget>[
                const Gap(100),
                 Text("Let's Start with Us!",style: theme.textTheme.titleLarge,),
                const Gap(16),
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "Enter Your Valid Email"
                  ),
                ),
                const Gap(16),
                TextField(
                  controller: _passwordController,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: const InputDecoration(
                    // labelText: "Password",
                    hintText: "Enter Password"
                  ),
                ),
                const Gap(24),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBar()));
                    }, child: const Text("Sign In"))),
                const Gap(16),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const EmailVerifyScreen()));
                }, child: const Text("Forgot Password?")),

                Row(
                  children: <Widget>[
                    const Text("Don't Have An Account?"),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  SingUpScreen()));
                    }, child: const Text("Sign Up"))
                  ],
                ),


              ],
            ),
          ),
        )),
      ),
    );
  }
}
