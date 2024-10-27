import 'package:flutter/material.dart';
import 'package:uts/widgets/setting_layout.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF4F4F4),
        body: SafeArea(
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    floating: true,
                    snap: true,
                    toolbarHeight: 110,
                    backgroundColor: Colors.white,
                    title: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Joyo Sugito',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "081234567899",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/images/profile.jpeg'),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    size: 16,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 10),
                  ),
                ];
              },
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    AccountSetting(
                      title: "Account Type",
                      value: "Basic",
                    ),
                    AccountSetting(
                      title: "Account Setting",
                      value: "",
                    ),
                    AccountSetting(
                      title: "LinkAja Syariah",
                      value: "Not Active",
                    ),
                    AccountSetting(
                      title: "Payment Method",
                      value: "",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AccountSetting(
                      title: "Email",
                      value: "joyosugito58@gmail.com",
                    ),
                    AccountSetting(
                      title: "Old Account Recovery",
                      value: "",
                    ),
                    AccountSetting(
                      title: "Security Question",
                      value: "Not Set",
                    ),
                    AccountSetting(
                      title: "Pin Settings",
                      value: "",
                    ),
                    AccountSetting(
                      title: "Language",
                      value: "English",
                    ),
                    SizedBox(height: 5),
                    AccountSetting(
                      title: "Term of Service",
                      value: "",
                    ),
                    AccountSetting(
                      title: "Privacy Policy",
                      value: "",
                    ),
                    AccountSetting(
                      title: "Help Center",
                      value: "",
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 55,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text(
                        "LinkAja Clone v1.0.0",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    SizedBox(height: 10),
                  ],
                ),
              )),
        ));
  }
}