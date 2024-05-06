import 'package:flutter/material.dart';
import 'package:saven_unity_card_flutter_plugin/src/screens/mpin_login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showWelcomeScreen = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Welcome to Home'),
        // ),
        body: _showWelcomeScreen
            ? const WelcomeScreen()
            : const MPinLoginPage(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _showWelcomeScreen ? 0 : 1,
          onTap: (index) {
            setState(() {
              _showWelcomeScreen = index == 0;
            });
          },
          backgroundColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: 'Card',
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to Travel App!!',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
