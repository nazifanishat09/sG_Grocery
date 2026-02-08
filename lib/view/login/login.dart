import 'package:flutter/material.dart';

import '../widget/button_widget.dart';
import '../widget/custom_text.dart';
import '../widget/textFormField.dart';
import 'container.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Center(child: Image(image: AssetImage("assets/logo/Logo.png"))),
            SizedBox(height: 40),
            Center(child: Image(image: AssetImage("assets/loginPic.png"))),
            CustomTextWidget(
              title: 'Login',
              fs: 24,
              fw: FontWeight.w600,
              fc: Color(0xff55AB60),
            ),
            SizedBox(height: 30),
            CustomTextWidget(
              fc: Colors.black,
              fs: 18,
              fw: FontWeight.w500,
              title: 'Email Id',
            ),

            TextFormFieldWidget(
              title: 'Enter Your Email Id',
              kyboard: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            CustomTextWidget(
              fc: Colors.black,
              fs: 18,
              fw: FontWeight.w500,
              title: 'Password',
            ),

            TextFormFieldWidget(
              title: 'Enter Your Password',
              kyboard: TextInputType.visiblePassword,
            ),
            SizedBox(height: 20),
            ButtonWidget(title: 'Login',fs: 18,fw: FontWeight.w600,fc: Colors.white,),
            SizedBox(height: 20),
            Row(
              spacing: 5,
              children: [
                Expanded(
                  child: Divider(
                    height: 10,
                    color: Color(0xff858FAD),
                    thickness: 1,
                  ),
                ),

                CustomTextWidget(
                  title: "Or continue with",
                  fs: 16,
                  fc: Color(0xff858FAD),
                  fw: FontWeight.w400,
                ),
                Expanded(
                  child: Divider(
                    height: 10,
                    color: Color(0xff858FAD),
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(spacing: 10,
              children: [
                Expanded(
                  child: ContainerWidget(
                    conH: 50,
                    conW: 183,
                    borderC: Colors.green,
                    conImage: AssetImage("assets/logo/google.png"), title: 'Google',
                  ),
                ),
                Expanded(
                  child: ContainerWidget(
                    conH: 50,
                    conW: 183,
                    borderC: Colors.green,
                    conImage: AssetImage("assets/logo/fb.png"), title: 'Facebook',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                CustomTextWidget(title:"Don’t You Have an Account?",fs: 16,fc: Colors.grey[700],),
                CustomTextWidget(title: "Register",fs: 16,fw: FontWeight.w900,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
