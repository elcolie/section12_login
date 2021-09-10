import 'package:flutter/material.dart';
import 'package:section12_login/mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            submitButton(),
            resetButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
      onSaved: (String? value){
        email = value!;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      obscureText: true,
      validator: validatePassword,
      onSaved: (String? value){
        password = value!;
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        if(formKey.currentState!.validate()){
          formKey.currentState!.save();
          print(email);
          print(password);
        }
      },
      child: Icon(Icons.add),
    );
  }

  Widget resetButton() {
    return ElevatedButton(
      onPressed: () {
        formKey.currentState!.reset();
      },
      child: Icon(Icons.reset_tv),
    );
  }

}
