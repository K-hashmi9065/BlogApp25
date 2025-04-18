import 'package:blog_app/core/theme/app_theme.dart';
import 'package:blog_app/features/auth/presentaion/bloc/auth_bloc.dart';
import 'package:blog_app/features/auth/presentaion/pages/login_page.dart';
import 'package:blog_app/init_dependences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependences();

  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (_) => serviceLocator<AuthBloc>())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkTheme,
      home: const LoginPage(),
    );
  }
}
