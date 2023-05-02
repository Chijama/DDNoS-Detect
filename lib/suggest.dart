import 'dart:developer';

import 'package:ddnos/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SuggestedActions extends StatelessWidget {
  const SuggestedActions({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Suggested Actions',
          style: TextStyles().AppBar(),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Text(
                          'Network Status: ',
                          style: TextStyles().darkGreyTextStyle500(),
                        ),
                        Text(
                          'GOOD',
                          style: TextStyles()
                              .darkGreyTextStyle500()
                              .copyWith(color: Colors.green, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Refresh'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: themes().primaryColor,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
            Card(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                padding: const EdgeInsets.all(12),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '-  Consider subscribing to a VPN',
                        style: TextStyles().darkGreyTextStyle500(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        style: TextStyles().darkGreyTextStyle500(),
                        '-  Consider using a more private web browser like duck duck go.',
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
