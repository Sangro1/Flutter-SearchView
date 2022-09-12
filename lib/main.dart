import 'package:flutter/material.dart';

import 'customSearch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool obsecureText = false;
  bool autofocus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: const Text(
          'Search',
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [

          TextFormField(
            decoration: const InputDecoration(
              helperText: 'enter your email',

            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              helperText: 'enter password',

            ),
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.lock)),
        ],
      ),
    );
  }
}
