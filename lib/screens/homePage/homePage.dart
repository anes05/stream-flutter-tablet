import 'package:agora/common_widgets/commonWidgets.dart';
import 'package:agora/screens/homePage/navBar.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: NavBar(),
      appBar: buildAppBar("Home Page"),
    );
  }
}
