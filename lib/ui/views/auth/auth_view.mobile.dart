import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'auth_viewmodel.dart';

class AuthViewMobile extends ViewModelWidget<AuthViewModel> {
  const AuthViewMobile({super.key});

  @override
  Widget build(BuildContext context, AuthViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, MOBILE UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
