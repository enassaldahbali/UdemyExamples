import 'package:flutter/material.dart';
import 'package:untitled11/login/component%20user.dart';


// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);

  }
bool isPassword=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  defaultFormText(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: ( value) {
                      if (value!.isEmpty) {
                        return "Email must not be empty";
                      }
                      //return null;
                    },
                    prefex: Icons.email,
                    lable: 'Email',
                  ),

                  SizedBox(
                    height: 15.0,
                  ),
                  //////////////////////////////////////////////
                  defaultFormText(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    lable: "password",
                    isPassword: isPassword,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "password is too short";
                      }
                      return null;
                    },
                    prefex: Icons.lock,
                     sufficient:isPassword? Icons.visibility:Icons.visibility_off,
                    onSufficientPressed: (){
                      setState(() {
                        isPassword=!isPassword;
                      });


                    }

                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  defaultButton(
                      function: () {
                        if (formKey.currentState !.validate()) {
                          print(emailController.text);
                          print(passwordController.text);
                        }
                      },
                      text: " Login"),

                  SizedBox(
                    height: 15.0,
                  ),
                  defaultButton(
                    function: () {
              if(formKey.currentState==null)
                {
                  print("_formKey.currentState is null!");
                }

             else if (formKey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);
                    }


    },
                    text: "register",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
