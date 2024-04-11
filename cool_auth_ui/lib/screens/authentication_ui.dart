
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common/common.dart';
import '../router/router.dart';
import '../widgets/custom_widget.dart';
import 'fade_animationtest.dart';

class AuthenticationUI extends StatefulWidget {
  const AuthenticationUI({super.key});

  @override
  State<AuthenticationUI> createState() => _AuthenticationUIState();
}

class _AuthenticationUIState extends State<AuthenticationUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),

          Image.asset(
            "assets/images/forApp.png",
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              FadeInAnimation(
                delay: 2,
                child: CustomElevatedButton(
                  message: "Login",
                  function: () {
                    GoRouter.of(context).pushNamed(Routers.loginpage.name);
                  },
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeInAnimation(
                delay: 2.5,
                child: ElevatedButton(
                    onPressed: () {
                      GoRouter.of(context)
                          .pushNamed(Routers.signuppage.name);
                    },
                    style: ButtonStyle(
                        side: const MaterialStatePropertyAll(
                            BorderSide(color: Colors.black)),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        fixedSize: const MaterialStatePropertyAll(
                            Size.fromWidth(370)),
                        padding: const MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 20),
                        ),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.white)),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Urbanist-SemiBold",
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              FadeInAnimation(
                delay: 2.5,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Continue as guest",
                      style: Common().mediumTheme),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
