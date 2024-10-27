import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:uts/pages/account_page.dart';
import 'package:uts/pages/history_page.dart';
import 'package:uts/pages/home_page.dart';
import 'package:uts/pages/inbox_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    HistoryPage(),
    InboxPage(),
    AccountPage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40),
          FloatingActionButton(
            backgroundColor: Colors.red,
            splashColor: Colors.transparent,
            child: Icon(
              HugeIcons.strokeRoundedQrCode,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          SizedBox(height: 10),
          Text(
            'Pay',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          HugeIcons.strokeRoundedHome09,
                          color: currentTab == 0 ? Colors.red : Colors.grey,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.red : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HistoryPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          HugeIcons.strokeRoundedDocumentValidation,
                          color: currentTab == 1 ? Colors.red : Colors.grey,
                        ),
                        Text(
                          "History",
                          style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.red : Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = InboxPage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          HugeIcons.strokeRoundedMail01,
                          color: currentTab == 2 ? Colors.red : Colors.grey,
                        ),
                        Text(
                          "Inbox",
                          style: TextStyle(
                              color:
                                  currentTab == 2 ? Colors.red : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = AccountPage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          HugeIcons.strokeRoundedUser,
                          color: currentTab == 3 ? Colors.red : Colors.grey,
                        ),
                        Text(
                          "Account",
                          style: TextStyle(
                              color:
                                  currentTab == 3 ? Colors.red : Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}