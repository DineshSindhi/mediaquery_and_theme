import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/theme/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme'),
        backgroundColor: Colors.blue,
        actions: [
          Switch(value: context.watch<ThemeProvider>().Theme,
              onChanged: (value){
            context.read<ThemeProvider>().Theme=value;
          })
        ],
      ),
    );
  }
}
