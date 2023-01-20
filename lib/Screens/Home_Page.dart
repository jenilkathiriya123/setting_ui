import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Res/Global.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: const Text(
              "Common",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(10),
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                const Icon(
                  Icons.language,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Languages",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "English",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          (isIos) ? const SizedBox() : const SizedBox(),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(height: 7),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: const Icon(
                  Icons.cloud_queue,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Environment",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Production",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              "Account",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.phone,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Phone Number",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          (isIos)
              ? const SizedBox()
              : const SizedBox(
                  height: 10,
                ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          (isIos)
              ? const SizedBox()
              : const SizedBox(
                  height: 10,
                ),

          Divider(color: Colors.grey),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.account_box,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Sign Out",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: const Text(
              "Security",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: const Icon(
                  Icons.phonelink_lock,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                "Lock app in Background",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const Spacer(),
              (isIos)
                  ? CupertinoSwitch(
                      value: one,
                      onChanged: (val) {
                        setState(() {
                          one = val;
                        });
                      })
                  : Switch(
                      activeColor: Colors.red,
                      value: one,
                      onChanged: (val) {
                        setState(() {
                          one = val;
                        });
                      }),
            ],
          ),
          (isIos)
              ? const SizedBox()
              : const SizedBox(
                  height: 10,
                ),
          Divider(color: Colors.grey),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: const Icon(
                  Icons.fingerprint,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                "Use Fingerprint",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              (isIos)
                  ? CupertinoSwitch(
                      value: two,
                      onChanged: (val) {
                        setState(() {
                          two = val;
                        });
                      })
                  : Switch(
                      activeColor: Colors.red,
                      value: two,
                      onChanged: (val) {
                        setState(() {
                          two = val;
                        });
                      }),
            ],
          ),
          (isIos)
              ? const SizedBox()
              : const SizedBox(
                  height: 10,
                ),

          Divider(color: Colors.grey),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: const Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                "Use Password",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              (isIos)
                  ? CupertinoSwitch(
                      value: three,
                      onChanged: (val) {
                        setState(() {
                          three = val;
                        });
                      })
                  : Switch(
                      activeColor: Colors.red,
                      value: three,
                      onChanged: (val) {
                        setState(() {
                          three = val;
                        });
                      }),
            ],
          ),
          //Misc
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
            child: const Text(
              "Misc",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.assignment,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Terms of Services",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Divider(color: Colors.grey),
          (isIos)
              ? const SizedBox()
              : const SizedBox(
                  height: 10,
                ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.save,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Open Source Licenses",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
