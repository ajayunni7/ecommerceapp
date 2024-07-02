import 'package:shopnow/ui/screens/trackpage/track_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TrackView extends StatelessWidget {
  const TrackView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TrackViewmodel>.reactive(
      onViewModelReady: (model) {
        model.init();
      },
      viewModelBuilder: () {
        return TrackViewmodel();
      },
      builder:
          (BuildContext context, TrackViewmodel viewModel, Widget? child) {
        return Scaffold(  appBar: AppBar(
          title: const Text('Track Order'),
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
                              viewModel.gotostatuspage();
                            },
                            child: const Text(
                              'Track Product',
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
                //Removed-----------
              ],
            ),
          ),
        );
      },
    );
  }
}
