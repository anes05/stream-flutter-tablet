import 'package:agora/common_widgets/appColors.dart';
import 'package:agora/common_widgets/commonWidgets.dart';
import 'package:agora/routes/appRouter.dart';
import 'package:agora/routes/appRouter.gr.dart';
import 'package:agora/screens/loginPage/bloc/login_page_bloc.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:agora/common_widgets/toast.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    _emailController..text="test@test.com";
    final TextEditingController _passwordController = TextEditingController();
    _passwordController..text="password";
    return BlocProvider(
      create: (context) => LoginPageBloc(),
      child: BlocListener<LoginPageBloc, LoginPageState>(
        listener: (context, state) {
          state.when(
              initial: () {},
              loading: () {
                toastInfo(msg: " loading .. ");
              },
              success: () {
                toastInfo(msg: "you've logged in successfully");
                AutoRouter.of(context).push(const HomeRoute());
              },
              failure: () {
                toastInfo(msg: "Login failed");
                AutoRouter.of(context).push(const LoginRoute());
              });
        },
        child: Scaffold(
          backgroundColor: AppColors.mainBackground,
          appBar: buildAppBar("Login"),
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50.0),
                    _reusableText("Enter your Email address"),
                    buildTextField("Enter your email address", "email", "user", (value) {
                      _emailController.text = value;
                    },"test@test.com"),
                    _reusableText("Password"),
                    buildTextField("Enter your password", "password", "lock", (value) {
                      _passwordController.text = value;
                    },"password"),
                    BlocBuilder<LoginPageBloc, LoginPageState>(
                      builder: (context, state) {
                        return buildLogInAndRegButton("Log in", "login", () {
                          context.read<LoginPageBloc>().add(
                              LoginPageEvent.loginButtonPressed(
                                  email: _emailController.text,
                                  password: _passwordController.text));
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _reusableText(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.h),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey.withOpacity(0.95),
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}