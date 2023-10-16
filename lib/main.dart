import 'package:elegore/models/cart_model.dart';
import 'package:elegore/models/discover_model.dart';
import 'package:elegore/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:elegore/pages/main_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserCart()),
        ChangeNotifierProvider(create: (context) => DiscoverImage()),
        ChangeNotifierProvider(create: (context) => Themeprovider()),
      ],
      builder: (context, child) => MaterialApp(
        theme: Provider.of<Themeprovider>(context).themedata,
        // darkTheme: darkMode,
        debugShowCheckedModeBanner: false,
        home: const MainPage(),
      ),
    );
  }
}
