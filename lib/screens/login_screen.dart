import 'package:flutter/material.dart';
import 'package:untitled3/screens/chats.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;

  void _login(BuildContext context) {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == 'Ahmed aldsoukey' && password == 'adh20015555') {
      Navigator.of(context).pushNamed(ChatPage.routeName);
    } else {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Login Failed'),
          content: const Text('Invalid username or password.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
            ),
          ],
        ),
      );
    }
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      backgroundColor: const Color(0xFF232A42),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Enter your credentials',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: _usernameController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.person, color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: _passwordController,
                obscureText: _isObscure,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(Icons.lock, color: Colors.white),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.white,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _login(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE78230),
              ),
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Navigate to the forgot password page
              },
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Text(
              'Don\'t have an account?',
              style: TextStyle(color: Colors.white),
            ),
            TextButton(
              onPressed: () {
                // Navigate to the sign-up page
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
