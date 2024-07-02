import 'package:shopnow/constants/fonts.gen.dart';
import 'package:shopnow/ui/screens/notifications/notifications_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        iconTheme: const IconThemeData(color: Color(0xFF317773)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Flash Sale Alert - Watches---------------------------------------
            Card(
              color: const Color(0xFFEDE8E9),
              elevation: 5,
              margin: const EdgeInsets.only(
                  left: 25, right: 25, bottom: 15, top: 5),
              child: Column(
                children: [
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        'assets/images/notwatch.png',
                        fit: BoxFit.cover,
                        width: 70,
                        height: 70,
                      ),
                    ),
                    title: const Text(
                      'Flash Sale Alert - Watches:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Limited Time Offer!\n',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14),
                          ),
                          TextSpan(
                            text:
                                'Get up to 50% Off on luxury watches. Don\'t miss out!\n',
                            style: const TextStyle(
                                color: Colors.black54, fontSize: 14),
                          ),
                          TextSpan(
                            text: '*New',
                            style: const TextStyle(
                                color: Colors.green, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF317773),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 40,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Shop Now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // New Arrival - T-Shirts-------------------------------------------
            Card(
              color: const Color(0xFFEDE8E9),
              elevation: 5,
              margin: const EdgeInsets.only(
                  left: 25, right: 25, bottom: 15, top: 5),
              child: Column(
                children: [
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        'assets/images/notshirt.png',
                        fit: BoxFit.cover,
                        width: 70,
                        height: 70,
                      ),
                    ),
                    title: const Text(
                      'New Arrival - T-Shirts:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Explore our latest collection of trendy t-shirts.\n',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14),
                          ),
                          TextSpan(
                            text: 'Shop now for fresh styles!',
                            style: const TextStyle(
                                color: Colors.black54, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF317773),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 40,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Shop Now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Buy One, Get One Sunglasses Special------------------------------
            Card(
              color: const Color(0xFFEDE8E9),
              elevation: 5,
              margin: const EdgeInsets.only(
                  left: 25, right: 25, bottom: 15, top: 5),
              child: Column(
                children: [
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        'assets/images/notglasses.png',
                        fit: BoxFit.cover,
                        width: 70,
                        height: 70,
                      ),
                    ),
                    title: const Text(
                      'Buy One, Get One Sunglasses Special:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Buy One, Get One!\n',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14),
                          ),
                          TextSpan(
                            text:
                                'Shop for one pair of sunglasses and get the second pair at half price. Share the style!',
                            style: const TextStyle(
                                color: Colors.black54, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF317773),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 40,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Shop Now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
