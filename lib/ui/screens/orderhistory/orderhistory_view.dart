import 'package:shopnow/constants/fonts.gen.dart';
import 'package:shopnow/ui/screens/orderhistory/orderhistory_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OrderhistoryView extends StatelessWidget {
  const OrderhistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderhistoryViewmodel>.reactive(
      onViewModelReady: (model) {
        model.init();
      },
      viewModelBuilder: () {
        return OrderhistoryViewmodel();
      },
      builder: (BuildContext context, OrderhistoryViewmodel viewModel,
          Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Order History'),
            iconTheme: const IconThemeData(color: Color(0xFF317773)),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                //Card 1---------------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEDE8E9),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/nikeairmaxap.png',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Order Id -#123ABCD456',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      color: Colors.black54
                                    ),
                                  ),
                                  Text(
                                    'Nike Air Max AP',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    '₹6,000',
                                    style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Item yet to be Delivered!',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black54
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF317773),
                          ),
                          margin: const EdgeInsets.only(top: 10),
                          height: 40,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              viewModel.gotoproductpage();
                            },
                            child: const Text(
                              'Buy Again',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Card 2--------------------------------------------------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 16,
                    ),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEDE8E9),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/nikeimpact4v.png',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Order Id -#123ABCD754',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54
                                    ),
                                  ),
                                  Text(
                                    'Nike Impact 4v',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    '₹6,000',
                                    style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Delivered on 07-10-2023',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black54
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF317773),
                          ),
                          margin: const EdgeInsets.only(top: 10),
                          height: 40,
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Buy Again',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
