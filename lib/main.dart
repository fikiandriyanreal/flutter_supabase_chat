import 'package:flutter/material.dart';
import 'package:flutter_supabase/pages/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_supabase/utils/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://hsywdlmhffvmjpqvidmt.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhzeXdkbG1oZmZ2bWpwcXZpZG10Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQ2ODQyMTAsImV4cCI6MjAxMDI2MDIxMH0.glvdQNN4RfBNREZTAXnCFV-0dMsW2-M7sCD_Tuw1-5A',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Chat App',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
