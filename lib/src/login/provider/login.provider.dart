import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = NotifierProvider<LoginProvider, void>(LoginProvider.new);

class LoginProvider extends Notifier {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();
  @override
  build() {
    // initially work
    emailController.text = 'abc@gmail.com';
    pwdController.text = '12345678';
  }

  void submit() {
    debugPrint('submit');
    debugPrint('email: ${emailController.text}');
    debugPrint('pwd: ${pwdController.text}');
    // await Future.delayed(const Duration(milliseconds: 500));
    debugPrint('done');
    //api te pathao
  }
}
