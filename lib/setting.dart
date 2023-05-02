import 'dart:developer';

import 'package:ddnos/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            settingsText('Auto-Refresh Rate'),
            settingsText('Notifications'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Auto-Disconnect: ',
                  style: TextStyles().darkGreyTextStyle500(),
                ),
                Text('ON',
                    style: TextStyles()
                        .defaultText(16, FontWeight.w500, Colors.green)),
              ],
            ),
            SizedBox(height: 12),
            settingsText('About Us')
          ],
        ),
      ),
    ));
  }

  Widget settingsText(String text) => Column(
        children: [
          Text(
            text,
            style: TextStyles().darkGreyTextStyle500(),

            // style: TextStyles().blackTextStyle(18, FontWeight.w500),
          ),
          SizedBox(height: 12),
        ],
      );
}
