import 'package:flutter/material.dart';
import 'package:my_app/app_state.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                title: const Text("Settings"),
                ),
                body:
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Consumer<SettingsScreenNotifier> (                   
                         builder: (context, notifier, child) {
                           return SwitchListTile(
                               title: const Text('Dark Mode'),
                               value: notifier.isDarkModeEnabled,
                               secondary:  const Icon(Icons.dark_mode,
                                   color: Color(0xFF642ef3)
                               ),
                               onChanged: (bool value) {
                                 notifier.toggleApplicationTheme(value);    /// 2 
                               }
                           );
                         }
                        )
                      ]
                  )
                );
          }
}