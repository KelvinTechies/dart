import 'package:flutter/material.dart';
import 'package:practicing/Pages/home_page.dart';
import 'package:practicing/Pages/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text('Hello, Welcome back',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    )),
                Spacer(),
                Text('Login to Continue',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.white10.withOpacity(0.5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  onPressed: () {},
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                      )),
                ),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return MainPage();
                          },
                        ),
                      );
                    },
                    child: Text('Login'),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  ),
                ),
                Spacer(),
                Text(
                  'Or Sign in with',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image/download-removebg-preview.png',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Sign Up with Google'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image/Facebook_f_logo__2021_.svg-removebg-preview.png',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Sign Up with Facebook'),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Don't Have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.amber),
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(decoration: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
