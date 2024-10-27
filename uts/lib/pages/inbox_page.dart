import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              'Inbox',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.tab,
            splashFactory: NoSplash.splashFactory,
            tabs: [
              Tab(text: 'Notification'),
              Tab(text: 'Update'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            NotificationMessage(),
            UpdateMassages(),
          ],
        ),
      ),
    );
  }
}

class UpdateMassages extends StatelessWidget {
  const UpdateMassages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/No-Messages.png',
              width: 400,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'No Messages Yet',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Don't worry, you'll be the first to know if there is any messages sent for you",
              style: TextStyle(
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationMessage extends StatelessWidget {
  final List<Map<String, String>> messages = [
    {
      'time': '27 Sep 2024, 10:00 WIB',
      'title': 'Pembayaran Pertama Kamu!',
      'description':
          'Teruskan transaksi menggunakan LinkAja, raih pointmu dan dapatkan bonus-bonus menarik lainnya!',
    },
    {
      'time': '24 Sep 2024, 18:00 WIB',
      'title': 'Sukses Verifikasi',
      'description':
          'Email anda telah berhasil diverifikasi. Kamu dapat menggunakan email ini untuk memulihkan akunmu atau mengatur pin baru ketika terlupa.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 5),
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      message['time']!,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      message['title']!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        message['description']!,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Divider(color: Colors.grey.shade300, thickness: 1),
                SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}