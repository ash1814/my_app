import 'package:flutter/material.dart';
import 'package:my_app/details.dart';
import 'package:my_app/package_detail.dart';

class form extends StatefulWidget {
  @override
  _formState createState() => _formState();
}

class _formState extends State<form> {
  final List<PackageDetails> package = [
    new PackageDetails("Basic Plus","700","95"),
    new PackageDetails("Ultra","3000", "450"),
    new PackageDetails("Standard","10,500", "1575"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Subscription Details',
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height * .9,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: package.length,
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detail(package[i])));
                        },
                        child: Card(
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("${package[i].packageName}"),
                                    Icon(
                                      Icons.arrow_right,
                                      color: Colors.green,
                                      size: 24.0,
                                    ),
                                  ],
                                ))),
                      );
                    })),
          ),
        ));
  }
}
