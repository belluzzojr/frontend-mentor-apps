import 'package:flutter/material.dart';

import '../style-reuse/text.dart';
import '../style-reuse/button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/logo.png'),
                  const SizedBox(
                    width: 80,
                  ),
                  IconButton(
                    onPressed: () => {
                      // ignore: avoid_print
                      print("CLICK"),
                    },
                    icon: const Icon(
                      Icons.format_align_justify,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, 0, 20),
              child: Image.asset(
                'assets/cellphone.png',
                fit: BoxFit.cover,
              ),
            ),
            const TextTitle(
              text: 'Next generation',
            ),
            const TextTitle(
              text: 'digital banking',
            ),
            const TextSimple(
              text:
                  'Take your financial life online. Your Easybank account will be a one-stop-shop for spending, saving, budgeting, investing, and much more.',
            ),
            const Button(
              text: 'Request Invite',
              icon: Icons.request_page,
              color: Color.fromRGBO(48, 200, 143, 100),
            ),
            const SizedBox(
              height: 40,
            ),
            const TextTitle(text: 'Why choose'),
            const TextTitle(text: 'Easybank?'),
            const TextSimple(
              text:
                  'We leverage Open Banking to turn your bank account into your financial hub. Control your finances like never before.',
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
