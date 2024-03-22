import 'package:flutter/material.dart';
import 'package:flutter_inspiration_ui/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        tools: const [
          ...DevicePreview.defaultTools,
        ],
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.spaceGrotesk().fontFamily),
      title: 'Flutter Inspiration UI',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
