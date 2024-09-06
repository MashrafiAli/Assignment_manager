import 'package:assingment_project/presentation/screens/sign_in_screen.dart';
import 'package:assingment_project/presentation/widgets/appBackgroundWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';


class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  final TextEditingController _fastNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    _fastNameController.dispose();
    _lastNameController.dispose();
    _phoneNumberController.dispose();
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
                 Text("Join with Us👋!",style: theme.textTheme.titleLarge,),
                const Gap(16),
                TextField(
                  controller: _fastNameController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      labelText: "Fast Name",
                      hintText: "Enter Your First Name"
                  ),
                ),
                const Gap(16),
                TextField(
                  controller: _lastNameController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      labelText: "Last Name",
                      hintText: "Enter Your Last Name",
                  ),
                ),
                const Gap(16),
                TextField(
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      labelText: "Number",
                      hintText: "Enter Your Phone Number"
                  ),
                ),

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

                    }, child: const Text("Sign Up"))),
                const Gap(16),

                Row(
                  children: <Widget>[
                    const Text("Already Have An Account?"),
                    TextButton(onPressed: (){
                      Navigator.pop(context, MaterialPageRoute(builder: (context)=>  const SingInScreen()));
                    }, child: const Text("Sign In"))
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
