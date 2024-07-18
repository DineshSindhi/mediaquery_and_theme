
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/theme/provider.dart';
import 'package:theme/theme/theme.dart';

import 'mediaqueary_chatapp/media.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(),child: MyApp(),));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Dark=context.watch<ThemeProvider>().Theme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Dark ? darkTheme:lightTheme,
      home: MediaPage(),
    );
  }
}

