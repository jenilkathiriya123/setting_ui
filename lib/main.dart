import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(
    const Settings_ui(),
  );
}
class Settings_ui extends StatefulWidget {
  const Settings_ui({Key? key}) : super(key: key);
  @override
  State<Settings_ui> createState() => _Settings_uiState();
}
class _Settings_uiState extends State<Settings_ui> {
  bool my_back_lock = false;
  bool my_fingerprint = false;
  bool my_password = false;
  bool my_ios = false;

  @override
  Widget build(BuildContext context) {
    return (my_ios == false)
        ? MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Settings UI"),
              Switch(
                activeColor: Colors.white,
                value: my_ios,
                onChanged: (val) {
                  setState(() {
                    my_ios = val;
                  });
                },
              ),
            ],
          ),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Common",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const Icon(Icons.language),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Language",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "English",
                          style: TextStyle(
                              fontSize: 16, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 50,
                  color: Colors.black12,
                  thickness: 1,
                ),
                Row(
                  children: [
                    const Icon(Icons.cloud_outlined),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Environment",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "Production",
                          style: TextStyle(
                              fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Account",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const Icon(Icons.call),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Phone number",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 50,
                  color: Colors.black12,
                  thickness: 1,
                ),
                Row(
                  children: [
                    const Icon(Icons.email_outlined),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Email",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 50,
                  color: Colors.black12,
                  thickness: 1,
                ),
                Row(
                  children: [
                    const Icon(Icons.logout),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Sign out",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Security",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Icon(Icons.phonelink_lock),
                    const SizedBox(width: 20),
                    const Text(
                      "Lock app in background",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(width: 25),
                    Switch(
                        activeColor: Colors.red,
                        value: my_back_lock,
                        onChanged: (val) {
                          setState(() {
                            my_back_lock = val;
                          });
                        }),
                  ],
                ),
                const Divider(
                  height: 50,
                  color: Colors.black12,
                  thickness: 1,
                ),
                Row(
                  children: [
                    const Icon(Icons.fingerprint),
                    const SizedBox(width: 20),
                    const Text(
                      "Use fingerprint",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(width: 100),
                    Switch(
                      activeColor: Colors.red,
                      value: my_fingerprint,
                      onChanged: (val) {
                        setState(() {
                          my_fingerprint = val;
                        });
                      },
                    ),
                  ],
                ),
                const Divider(
                  height: 50,
                  color: Colors.black12,
                  thickness: 1,
                ),
                Row(
                  children: [
                    const Icon(Icons.lock),
                    const SizedBox(width: 20),
                    const Text(
                      "Change password",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(width: 70),
                    Switch(
                      activeColor: Colors.red,
                      value: my_password,
                      onChanged: (val) {
                        setState(() {
                          my_password = val;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Misc",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    Icon(Icons.book_outlined),
                    SizedBox(width: 20),
                    Text(
                      "Terms of Service",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const Divider(
                  height: 50,
                  color: Colors.black12,
                  thickness: 1,
                ),
                Row(
                  children: const [
                    Icon(Icons.collections_bookmark),
                    SizedBox(width: 20),
                    Text(
                      "Open source licenses",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    )
        : CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.destructiveRed,
          middle: Row(
            children: [
              const Text(
                "Setting UI",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Spacer(),
              CupertinoSwitch(
                activeColor: Colors.white,
                value: my_ios,
                onChanged: (val) {
                  setState(() {
                    my_ios = val;
                  });
                },
              ),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                height: 40,
                width: double.infinity,
                color: Colors.black12,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Common",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(CupertinoIcons.globe,color:Colors.grey,),
                        SizedBox(width: 20),
                        Text(
                          "Language",
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Text(
                          "English ",
                          style: TextStyle(
                              fontSize: 16, color: Colors.black54),
                        ),
                        Icon(
                          CupertinoIcons.right_chevron,
                            color:Colors.grey,
                          size: 20,
                        )
                      ],
                    ),
                    const Divider(
                      height: 30,
                      color: Colors.black12,
                      thickness: 1,
                    ),
                    Row(
                      children: const [
                        Icon(CupertinoIcons.cloud,color:Colors.grey),
                        SizedBox(width: 20),
                        Text(
                          "Environment",
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Text(
                          "Production",
                          style: TextStyle(
                              fontSize: 16, color: Colors.black54),
                        ),
                        Icon(
                          CupertinoIcons.right_chevron,
                            color:Colors.grey,
                          size: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                height: 40,
                width: double.infinity,
                color: Colors.black12,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Account",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(CupertinoIcons.phone,color:Colors.grey,),
                        SizedBox(width: 20),
                        Text(
                          "Phone number",
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.right_chevron,
                            color:Colors.grey,
                          size: 20,
                        )
                      ],
                    ),
                    const Divider(
                      height: 20,
                      color: Colors.black12,
                      thickness: 1,
                    ),
                    Row(
                      children: const [
                        Icon(CupertinoIcons.mail,color:Colors.grey,),
                        SizedBox(width: 20),
                        Text(
                          "Email",
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.right_chevron,
                            color:Colors.grey,
                          size: 20,
                        )
                      ],
                    ),
                    const Divider(
                      height: 20,
                      color: Colors.black12,
                      thickness: 1,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.logout,color:Colors.grey,),
                        SizedBox(width: 20),
                        Text(
                          "Sign out",
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.right_chevron,
                            color:Colors.grey,
                          size: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                height: 40,
                width: double.infinity,
                color: Colors.black12,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Security",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.phonelink_lock,color:Colors.grey,),
                        const SizedBox(width: 10),
                        const Text(
                          "Lock app in background",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Spacer(),
                        CupertinoSwitch(
                          activeColor: Colors.red,
                          value: my_back_lock,
                          onChanged: (val) {
                            setState(() {
                              my_back_lock = val;
                            });
                          },
                        ),
                      ],
                    ),
                    const Divider(
                      height: 20,
                      color: Colors.black12,
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.fingerprint,color:Colors.grey,),
                        const SizedBox(width: 20),
                        const Text(
                          "Use fingerprint",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Spacer(),
                        CupertinoSwitch(
                          activeColor: Colors.red,
                          value: my_fingerprint,
                          onChanged: (val) {
                            setState(() {
                              my_fingerprint = val;
                            });
                          },
                        ),
                      ],
                    ),
                    const Divider(
                      height: 10,
                      color: Colors.black12,
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.lock,color:Colors.grey,),
                        const SizedBox(width: 20),
                        const Text(
                          "Change password",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Spacer(),
                        CupertinoSwitch(
                          activeColor: Colors.red,
                          value: my_password,
                          onChanged: (val) {
                            setState(() {
                              my_password = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                height: 40,
                width: double.infinity,
                color: Colors.black12,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Misc",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.book_outlined,color:Colors.grey,),
                        SizedBox(width: 20),
                        Text(
                          "Terms of Service",
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.right_chevron,
                            color:Colors.grey,
                          size: 20,
                        )
                      ],
                    ),
                    const Divider(
                      height: 30,
                      color: Colors.black12,
                      thickness: 1,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.collections_bookmark,color:Colors.grey,),
                        SizedBox(width: 20),
                        Text(
                          "Open source licenses",
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.right_chevron,
                          color: Colors.grey,
                          size: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}