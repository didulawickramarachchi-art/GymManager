import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Make sure this is imported
import 'firebase_options.dart';                     // Your generated options file
import 'Screens/login_screen.dart';                 // Your LoginScreen import

void main() async {                                // <--- main() MUST be async
  // 1. Ensure Flutter bindings are initialized. This is crucial before any plugin setup.
  WidgetsFlutterBinding.ensureInitialized();       // <--- Add this line

  // 2. Initialize Firebase using the options generated for the current platform.
  await Firebase.initializeApp(                    // <--- Add this block and await the call
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // 3. Then, run your Flutter app.
  runApp(GymApp());
}

class GymApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gym Manager",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginScreen(), // Your initial screen
    );
  }
}
