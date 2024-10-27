import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:uts/widgets/appbarIconButton.dart';
import 'package:uts/widgets/balanceCard.dart';
import 'package:uts/widgets/quickActionButton.dart';
import 'package:uts/widgets/servicesIcon.dart';
import 'package:uts/widgets/swipeImage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.white,
              toolbarHeight: 80,
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    'assets/logo/linkaja.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              actions: [
                AppbarIconButton(
                  icon: Icons.favorite_outline,
                  onPressed: () {},
                ),
                AppbarIconButton(
                  icon: Icons.support_agent_outlined,
                  onPressed: () {},
                ),
                SizedBox(width: 10),
              ],
            ),
          ],
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        padding: const EdgeInsets.all(15),
                        height: 140,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xFFDE2425),
                            Color(0xFFC22327),
                          ]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Hi, Joyo Sugito",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                BalanceCard(
                                    title: "Your Balance", balance: "Rp.20.310"),
                                SizedBox(width: 5),
                                BalanceCard(
                                    title: "Bonus Balance", balance: "0"),
                                SizedBox(width: 5),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.all(10),
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey.shade300, width: 0.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            QuickActionButton(
                                icon: HugeIcons.strokeRoundedMoneyAdd02,
                                title: "TopUp"),
                            QuickActionButton(
                                icon: HugeIcons.strokeRoundedMoneyReceive02,
                                title: "CashOut"),
                            QuickActionButton(
                                icon: HugeIcons.strokeRoundedMoneySend02,
                                title: "Send Money"),
                            QuickActionButton(
                                icon: HugeIcons.strokeRoundedMenuCircle,
                                title: "See All"),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      GridView.count(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 4,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 5,
                        childAspectRatio: 0.9,
                        children: [
                          ServicesIcon(
                            icon: HugeIcons.strokeRoundedSmartPhone01,
                            title: "Pulsa/Data",
                          ),
                          ServicesIcon(
                            icon: HugeIcons.strokeRoundedElectricHome01,
                            title: "Electricity",
                          ),
                          ServicesIcon(
                            icon: HugeIcons.strokeRoundedInternetAntenna04,
                            title: "Cable TV & Internet",
                          ),
                          ServicesIcon(
                            icon: HugeIcons.strokeRoundedCreditCard,
                            title: "Kartu Uang Elektronik",
                          ),
                          ServicesIcon(
                            icon: HugeIcons.strokeRoundedChurch,
                            title: "Gereja",
                          ),
                          ServicesIcon(
                            icon: HugeIcons.strokeRoundedMosque01,
                            title: "Masjid",
                          ),
                          ServicesIcon(
                            icon: HugeIcons.strokeRoundedGift,
                            title: "Other Donation",
                          ),
                          ServicesIcon(
                            icon: HugeIcons.strokeRoundedMore01,
                            title: "More",
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 20, bottom: 10, right: 20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            SwipeImage(
                              images: [
                                'assets/images/Information-1.jpg',
                                'assets/images/Information-3.jpg',
                                'assets/images/Information-4.jpg',
                                'assets/images/Information-5.jpg',
                                'assets/images/Information-2.jpg',
                              ],
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Best Deals",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "See All",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10), // Space between the two rows
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  BestDealCard(
                                    image: "assets/images/BestDeal-1.jpg",
                                    title:
                                        "Waktunya Gajian! Pake LinkAja Buat Seluruh Transaksimu",
                                    caption: "Promo Payday LinkAja",
                                  ),
                                  BestDealCard(
                                    image: "assets/images/BestDeal-2.jpg",
                                    title:
                                        "Beli Token Listrik & Dapatkan Cashback 10%",
                                    caption: "Cashback 1.500",
                                  ),
                                  BestDealCard(
                                    image: "assets/images/BestDeal-3.jpg",
                                    title:
                                        "Untung Beli Paket Data Telkomsel dapat Cashback 50%",
                                    caption: "Cashback 2000",
                                  ),
                                  BestDealCard(
                                    image: "assets/images/BestDeal-4.jpg",
                                    title:
                                        "Bayar Tagihan Halo dapatkan Cashback 2000",
                                    caption: "Cashback 2000",
                                  ),
                                  BestDealCard(
                                    image: "assets/images/BestDeal-5.jpg",
                                    title:
                                        "Beli Voucher Games Harga Terjangkau Disini",
                                    caption: "Bayarnya Pakai LinkAja",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30), // Space between the two rows

                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Latest Update",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10), // Space between the two rows
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  BestDealCard(
                                    image: "assets/images/Information-1.jpg",
                                    title: "Isi Saldo LinkAja via Himbara",
                                    caption:
                                        "BNI, Bank Mandiri, BNI, BTN, Admin Rp.1000",
                                  ),
                                  BestDealCard(
                                    image: "assets/images/Information-2.jpg",
                                    title: "Palestina Masih Butuh Bantuan Kita",
                                    caption:
                                        "Mari Sebarkan Harapan untuk Saudara Palestina",
                                  ),
                                  BestDealCard(
                                    image: "assets/images/Information-3.jpg",
                                    title:
                                        "Fitur PAYLATER! yang Baru dari LinkAja",
                                    caption:
                                        "Aktifkan & Transaksi Fitur Paylater di LinkAja",
                                  ),
                                  BestDealCard(
                                    image: "assets/images/Information-4.jpg",
                                    title: "Tarik Tunai dengan LinkAja di ATM",
                                    caption:
                                        "Mudah dan Praktis Tanpa Kartu Loh!",
                                  ),
                                  BestDealCard(
                                    image: "assets/images/Information-5.jpg",
                                    title:
                                        "Cuma Rp.1.000 Transfer ke Rekening Bank",
                                    caption: "Pakai LinkAja Lebih Mudah",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
                // Space between the two rows
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BestDealCard extends StatelessWidget {
  final String image;
  final String title;
  final String caption;

  const BestDealCard({
    required this.image,
    required this.title,
    required this.caption,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 320,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Container
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Title
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 4),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Caption
            Text(
              caption,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}