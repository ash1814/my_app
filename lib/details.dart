import 'package:flutter/material.dart';
import 'package:my_app/package_detail.dart';

class Detail extends StatelessWidget {
  final PackageDetails packageDetails;

  Detail(this.packageDetails);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
        children: [
            Text("PackageName:${packageDetails.packageName}"),
            Text("Monthly Subscription detail: ${packageDetails.monthlyName}tk"),
            Text("Yearly Subscription detail: ${packageDetails.yearlyName}tk")
        ],
      ),
          )),
    );
  }
}
