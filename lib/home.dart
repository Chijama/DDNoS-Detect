import 'dart:developer';

import 'package:ddnos/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'DDNos Detect',
          style: TextStyles().AppBar(),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            TitleWidget('Network Details'),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    newMethod('SSID'),
                    SizedBox(height: 5),
                    newMethod('Netmast'),
                    SizedBox(height: 5),
                    newMethod('GateWay'),
                    SizedBox(height: 5),
                    newMethod('DNS')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TitleWidget('Network Stats'),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    newMethod('Upload speed'),
                    SizedBox(height: 5),
                    newMethod('Download speed'),
                    SizedBox(height: 5),
                    newMethod('Latency')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Align TitleWidget(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyles().blackTextStyle700(),
      ),
    );
  }

  Row newMethod(String label) {
    return Row(
      children: [
        Text(
          '$label: ',
          style: TextStyles().darkGreyTextStyle500(),
        ),
        Text('------'),
      ],
    );
  }
}
