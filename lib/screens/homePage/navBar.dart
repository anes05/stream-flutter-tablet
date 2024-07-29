import 'package:agora/routes/appRouter.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.question_mark),
            title: const Text("Consult questions"),
            onTap: (){
              AutoRouter.of(context).push(const QuestionsRoute());

            },
          ),
          ListTile(
            leading: const Icon(Icons.live_tv),
            title: const Text("Consult Live"),
            onTap: (){
              AutoRouter.of(context).push(const LiveRoute());

            },
          )
        ],
      ),

    );
  }
}
