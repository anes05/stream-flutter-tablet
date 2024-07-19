import 'package:agora/common_widgets/appColors.dart';
import 'package:agora/common_widgets/commonWidgets.dart';
import 'package:agora/routes/appRouter.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height
        ),
        child: IntrinsicHeight(
          child: Container(
            color: AppColors.mainBackground,
            child: Scaffold(
              backgroundColor: AppColors.mainBackground,
              appBar: buildAppBar("live-stream app"),
              body: Column(
                children: [
                  Center(
                    child: pageBody(
                      context,
                      "assets/images/welcome-image.png",
                      "Welcome to our live streaming app",
                      "Our team would be very happy for you to be choosing us instead of any other app",
                      "Continue to Log In", () {
                        AutoRouter.of(context).push(const LoginRoute());
                    }),
                  ),
                ]
              ),

            ),
          ),
        ),
      ),
    );
  }
}
