import 'package:assingment_project/presentation/screens/code_verify_screen.dart';
import 'package:assingment_project/presentation/screens/sign_in_screen.dart';
import 'package:assingment_project/presentation/widgets/appBackgroundWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class EmailVerifyScreen extends StatefulWidget {
  const EmailVerifyScreen({super.key});

  @override
  State<EmailVerifyScreen> createState() => _EmailVerifyScreenState();
}

class _EmailVerifyScreenState extends State<EmailVerifyScreen> {
  final TextEditingController _emailController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
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
            child: Column(
              children: <Widget>[
                const Gap(100),
                Text(
                  "Your Email",
                  style: theme.textTheme.titleLarge,
                ),
                const Gap(5),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'A 4 digits verification code will be sent to your email address',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                const Gap(16),
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      labelText: "Email", hintText: "Enter Your Valid Email"),
                ),
                const Gap(16),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PinCodeVerifyScreen()));
                        },
                        child: const Text("Verify"))),
                // const Gap(16),

                // Row(
                //   children: <Widget>[
                //     const Text("Already Have An Account?"),
                //     TextButton(onPressed: (){
                //       Navigator.pop(context, MaterialPageRoute(builder: (context)=>  const SingInScreen()));
                //     }, child: const Text("Sign In"))
                //   ],
                // ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
