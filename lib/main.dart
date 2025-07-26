import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practice/firebase_options.dart';
import 'package:practice/helper/loader_services.dart';
import 'package:practice/helper/snackbar_service.dart';
import 'package:practice/provider/sigin_provider.dart';
import 'package:provider/provider.dart';

import 'Screens/homepage_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SignInProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: SnackbarService.messengerKey,
      navigatorKey: LoaderService.navigatorKey,
      home: const HomePageScreen(),
    );
  }
}
