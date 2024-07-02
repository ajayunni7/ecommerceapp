import 'package:shopnow/ui/screens/addresspage/address_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddressViewmodel>.reactive(
      onViewModelReady: (model) {
        model.init();
      },
      viewModelBuilder: () {
        return AddressViewmodel();
      },
      builder:
          (BuildContext context, AddressViewmodel viewModel, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Saved Addresses'),
            iconTheme: const IconThemeData(color: Color(0xFF317773)),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          Radio<int>(
                            value: 0,
                            groupValue: viewModel.selectedAddress,
                            onChanged: (value) {
                              viewModel.selectAddress(value!);
                            },
                            activeColor: const Color(0xFF317773),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Home',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Oxford, Oxford Towers\n560017, Bangalore',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.edit,
                            color: Color(0xFF317773),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  child: Card(
                    color: const Color(0xFFFBF8F9),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        children: [
                          Radio<int>(
                            value: 1,
                            groupValue: viewModel.selectedAddress,
                            onChanged: (value) {
                              viewModel.selectAddress(value!);
                            },
                            activeColor: const Color(0xFF317773),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Office',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Oxford, Oxford Towers\n560017, Bangalore',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.edit,
                            color: Color(0xFF317773),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Center(
                  child: Container(
                    width: 340,
                    decoration: BoxDecoration(
                        color: const Color(0xFF317773),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(2, 2),
                          ),
                        ],
                        border: Border.all(
                            color: const Color(0xFF317773), width: 1.5)),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Save',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 340,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: const Color(0xFF317773), width: 1.5)),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Add New Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF317773),
                            fontSize: 16),
                      ),
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
