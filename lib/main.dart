import 'package:equals_online_app/constants/theme.dart';
import 'package:equals_online_app/routes/app_router.dart';
import 'package:flutter/material.dart';
// import 'firebase_options.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  final appRouter = AppRouter();

  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false, home: MyApp(appRouter: appRouter)),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Equals Online App',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            // Set the default font family for bodyText1
            fontFamily: null, // Use the default system font
            fontSize: 16.0,
          ),
          // Add additional text styles as needed
        ),
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
