import 'package:shopnow/ui/statuspage/status_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StatusViewmodel>.reactive(
      onViewModelReady: (model) {
        model.init();
      },
      viewModelBuilder: () {
        return StatusViewmodel();
      },
      builder:
          (BuildContext context, StatusViewmodel viewModel, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Order Status'),
            iconTheme: const IconThemeData(color: Color(0xFF317773)),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEDE8E9),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/images/nikeairmaxap.png',
                            height: 90,
                            width: 90,
                          ),
                        ),
                        const SizedBox(width: 2),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nike Air Max AP',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '₹6,000',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Not Yet Delivered',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEDE8E9),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            'Order Id - #123ABCD456',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Divider(),
                        const SizedBox(height: 15),
                        Column(
                          children: [
                            _buildStep(
                              context,
                              title: 'Order Placed',
                              subtitle: 'October 5 2023, 8:00pm',
                              icon: Icons.shopping_cart,
                              isActive: true,
                              isCompleted: true,
                              showLine: true,
                            ),
                            _buildStep(
                              context,
                              title: 'Shipped',
                              subtitle: 'October 6 2023, 9:00am',
                              icon: Icons.local_shipping,
                              isActive: true,
                              isCompleted: false,
                              showLine: true,
                            ),
                            _buildStep(
                              context,
                              title: 'Out For Delivery',
                              subtitle: 'October 7 2023, 9:00am',
                              icon: Icons.delivery_dining,
                              isActive: true,
                              isCompleted: false,
                              showLine: true,
                            ),
                            _buildStep(
                              context,
                              title: 'Delivered Successfully',
                              subtitle: 'Not Yet Delivered',
                              icon: Icons.check_circle,
                              isActive: false,
                              isCompleted: false,
                              showLine: false,
                            ),
                            const SizedBox(height: 10,)
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: const BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 1,
                                offset: Offset(1, 2),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Cancel Order',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: const BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 1,
                                offset: Offset(1, 2),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              viewModel.gotohome();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF317773),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Continue Shopping',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildStep(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required bool isActive,
    required bool isCompleted,
    required bool showLine,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(11.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isCompleted ? const Color(0xFF317773) : Colors.grey,
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
            ),
            if (showLine)
              Container(
                height: 50,
                width: 2,
                color: Colors.grey,
              ),
          ],
        ),
        const SizedBox(width: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.black : Colors.black54,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
                color: isActive ? Colors.black54 : Colors.black54,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
