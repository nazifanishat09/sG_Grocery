import 'package:flutter/material.dart';
import 'package:sg_grocery/view/login/container.dart';
import 'package:sg_grocery/view/widget/button_widget.dart';
import 'package:sg_grocery/view/widget/custom_text.dart';
import 'package:sg_grocery/view/widget/textFormField.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Center(child: Image.asset("assets/logo/Logo.png")),
              SizedBox(height: 30),
              CustomTextWidget(
                title: "Register",
                fs: 24,
                fw: FontWeight.w600,
                fc: Colors.green,
              ),
              SizedBox(height: 20),
              CustomTextWidget(title: "Your Name", fs: 18, fw: FontWeight.w500),
              SizedBox(height: 10),
              TextFormFieldWidget(
                title: 'Enter Your Name',
                kyboard: TextInputType.text,
              ),
              SizedBox(height: 20),
              CustomTextWidget(title: "Email Id", fs: 18, fw: FontWeight.w500),
              SizedBox(height: 10),
              TextFormFieldWidget(
                title: 'Enter Your Email Id',
                kyboard: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              CustomTextWidget(title: "Password", fs: 18, fw: FontWeight.w500),
              SizedBox(height: 10),
              TextFormFieldWidget(
                title: 'Enter Your Password',
                kyboard: TextInputType.visiblePassword,
              ),
              SizedBox(height: 20),
              CustomTextWidget(
                title: "Confirm Password",
                fs: 18,
                fw: FontWeight.w500,
              ),
              SizedBox(height: 10),
              TextFormFieldWidget(
                title: 'Confirm Your Password',
                kyboard: TextInputType.visiblePassword,
              ),
              SizedBox(height: 20),
              CustomTextWidget(
                title: "Contact Number",
                fs: 18,
                fw: FontWeight.w500,
              ),
              SizedBox(height: 10),
              TextFormFieldWidget(
                title: 'Enter Your Contact Number',
                kyboard: TextInputType.number,
              ),
              SizedBox(height: 20),
              ButtonWidget(
                title: 'Register',
                fw: FontWeight.w600,
                fs: 18,
                fc: Colors.white, bHeight:50, bWidth: 396, cC: Colors.green, radius: 10,
              ),
              SizedBox(height: 20),
              Row(
                spacing: 5,
                children: [
                  Expanded(
                    child: Divider(thickness: 1, color: Color(0xff858FAD)),
                  ),
                  CustomTextWidget(
                    title: "Or continue with",
                    fs: 16,
                    fw: FontWeight.w400,
                    fc: Color(0xff858FAD),
                  ),
                  Expanded(
                    child: Divider(thickness: 1, color: Color(0xff858FAD)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: ContainerWidget(
                      conH: 50,
                      conW: 183,
                      conImage: AssetImage("assets/logo/google.png"),
                      title: "Google",
                    ),
                  ),
                  Expanded(
                    child: ContainerWidget(
                      conH: 50,
                      conW: 183,
                      conImage: AssetImage("assets/logo/fb.png"),
                      title: "Facebook",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextWidget(
                    title: "Already Have an Account?",
                    fs: 16,
                    fw: FontWeight.w400,
                    fc: Colors.grey[700],
                  ),
                  CustomTextWidget(title: "Login", fs: 16, fw: FontWeight.w900),
                  SizedBox(height: 50,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
