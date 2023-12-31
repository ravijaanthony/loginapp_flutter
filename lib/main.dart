import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:loginapp_flutter/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:loginapp_flutter/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:loginapp_flutter/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:loginapp_flutter/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:loginapp_flutter/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      // home: AppHome(),
      home: SplashScreen(),
    );
  }
}

/// App face
// class AppHome extends StatelessWidget {
//   const AppHome({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text(".app"), leading: const Icon(Icons.ondemand_video)),
//       body: Center(
//         child: Text("Home Page"),
//       ),
//       // floatingActionButton: FloatingActionButton(child: const Icon(Icons.add_shopping_cart_outlined), onPressed: () {}),
//       // body: Padding(
//       //   padding: const EdgeInsets.all(20),
//       //   child: ListView(
//       //     children: [
//       //       Text("Heading", style: Theme.of(context).textTheme.headlineSmall),
//       //       const Text('Sub-heading'),
//       //       const Text('Paragraph'),
//       //       ElevatedButton(onPressed: () {}, child: const Text("Elevated button")),
//       //       OutlinedButton(onPressed: () {}, child: const Text("Outlined Button")),
//       //       const Padding(
//       //         padding: EdgeInsets.all(20),
//       //         child: Image(
//       //           image: AssetImage("assets/images/books.png"),
//       //         ),
//       //       )
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }

// TODO: Adding the backend for signin and login and the chat
