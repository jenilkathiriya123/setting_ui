import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Res/Global.dart';
import 'Screens/Home_Page.dart';

void main() {
  runApp(
    uipage(),
  );
}

class uipage extends StatefulWidget {
  const uipage({Key? key}) : super(key: key);

  @override
  State<uipage> createState() => _uipageState();
}

class _uipageState extends State<uipage> {
  @override
  Widget build(BuildContext context) {
    return (isIos)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                actions: [
                  Switch(
                      value: isIos,
                      onChanged: (val) {
                        setState(() {
                          isIos = val;
                        });
                      })
                ],
                title: const Text(
                  "Settings Ui",
                ),
                elevation: 6,
                backgroundColor: Colors.red,
                centerTitle: false,
              ),
              backgroundColor: Colors.blueGrey.shade50,
              body: setting(),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                backgroundColor: Colors.red.shade600,
                middle: Text("Settings Ui"),
                trailing: Container(
                  height: 40,
                  width: 40,
                  child: CupertinoSwitch(
                    activeColor: Colors.red.shade300,
                    value: isIos,
                    onChanged: (val) {
                      setState(() {
                        isIos = val;
                      });
                    },
                  ),
                ),
              ),
              child: setting(),
              backgroundColor: Colors.grey.shade50,
            ),
          );
  }
}
