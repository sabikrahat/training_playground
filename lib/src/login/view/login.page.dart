import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:training_playground/src/login/provider/login.provider.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(loginProvider);
    final notifier = ref.watch(loginProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: notifier.emailController,
                decoration: const InputDecoration(
                  hintText: 'Enter email ',
                  labelText: 'Email',
                ),
              ),
              TextField(
                controller: notifier.pwdController,
                decoration: const InputDecoration(
                  hintText: 'Enter password ',
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  print('Login');
                  notifier.submit();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Login success'),
                    ),
                  );
                },
                child: const Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
