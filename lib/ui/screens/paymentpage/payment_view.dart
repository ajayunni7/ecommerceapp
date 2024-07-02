import 'package:shopnow/ui/screens/paymentpage/payment_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentViewmodel>.reactive(
      onViewModelReady: (model) {
        model.init();
      },
      viewModelBuilder: () {
        return PaymentViewmodel();
      },
      builder:
          (BuildContext context, PaymentViewmodel viewModel, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Payment Method'),
            iconTheme: const IconThemeData(color: Color(0xFF317773)),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //UPI---------------------------------------------------------
                  Card(
                    elevation: 5,
                    color: Colors.white,
                    child: ExpansionTile(
                      collapsedIconColor: Color(0xFF317773),
                      minTileHeight: 90,
                      leading: const Icon(
                        Icons.account_balance_wallet,
                        color: Color(0xFF317773),
                      ),
                      shape: const RoundedRectangleBorder(),
                      title: const Text('UPI'),
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          child: ListTile(
                            title: const Text('PhonePe'),
                            leading: Image.asset('assets/images/phonepe.png'),
                            trailing: Radio(
                              activeColor: const Color(0xFF317773),
                              fillColor: WidgetStateColor.resolveWith(
                                  (Set<WidgetState> states) {
                                if (states.contains(WidgetState.disabled)) {
                                  return Colors.grey; // Custom inactive color
                                }
                                return const Color(0xFF317773);
                              }),
                              value: 'PhonePe',
                              groupValue: viewModel.selectedPaymentMethod,
                              onChanged: (value) {
                                viewModel.selectPaymentMethod(value);
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Colors.white,
                          child: ListTile(
                            title: const Text('Google Pay'),
                            leading: Image.asset('assets/images/pgpay.png'),
                            trailing: Radio(
                              activeColor: Color(0xFF317773),
                              fillColor: WidgetStateColor.resolveWith(
                                  (Set<WidgetState> states) {
                                if (states.contains(WidgetState.disabled)) {
                                  return Colors.grey; // Custom inactive color
                                }
                                return const Color(0xFF317773);
                              }),
                              value: 'Google Pay',
                              groupValue: viewModel.selectedPaymentMethod,
                              onChanged: (value) {
                                viewModel.selectPaymentMethod(value);
                              },
                            ),
                          ),
                        ),
                        ListTile(
                          title: const Text('Paytm'),
                          leading: Image.asset('assets/images/ppaytm.png'),
                          trailing: Radio(
                            activeColor: Color(0xFF317773),
                            fillColor: WidgetStateColor.resolveWith(
                                (Set<WidgetState> states) {
                              if (states.contains(WidgetState.disabled)) {
                                return Colors.grey; // Custom inactive color
                              }
                              return const Color(0xFF317773);
                            }),
                            value: 'Paytm',
                            groupValue: viewModel.selectedPaymentMethod,
                            onChanged: (value) {
                              viewModel.selectPaymentMethod(value);
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Amazon Pay'),
                          leading: Image.asset('assets/images/pamazonpay.png'),
                          trailing: Radio(
                            activeColor: Color(0xFF317773),
                            fillColor: WidgetStateColor.resolveWith(
                                (Set<WidgetState> states) {
                              if (states.contains(WidgetState.disabled)) {
                                return Colors.grey; // Custom inactive color
                              }
                              return const Color(0xFF317773);
                            }),
                            value: 'Amazon Pay',
                            groupValue: viewModel.selectedPaymentMethod,
                            onChanged: (value) {
                              viewModel.selectPaymentMethod(value);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  //credit,debit card-------------------------------------------
                  Card(
                    elevation: 5,
                    color: Colors.white,
                    child: ExpansionTile(
                      leading: const Icon(
                        Icons.payment,
                        color: Color(0xFF317773),
                      ),
                      collapsedIconColor: const Color(0xFF317773),
                      shape: const RoundedRectangleBorder(),
                      minTileHeight: 90,
                      title: const Text('Credit / Debit Card'),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              const TextField(
                                decoration: InputDecoration(
                                  labelText: 'Name On Card',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 15),
                              const TextField(
                                decoration: InputDecoration(
                                    labelText: 'Card Number',
                                    border: OutlineInputBorder()),
                              ),
                              const SizedBox(height: 15),
                              const TextField(
                                decoration: InputDecoration(
                                    labelText: 'Expiry Date (mm/yy)',
                                    border: OutlineInputBorder()),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xFF317773)),
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Save Card',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Net Banking-------------------------------------------------
                  Card(
                    elevation: 5,
                    color: Colors.white,
                    child: ExpansionTile(
                      leading: const Icon(
                        Icons.payments,
                        color: Color(0xFF317773),
                      ),
                      collapsedIconColor: const Color(0xFF317773),
                      shape: const RoundedRectangleBorder(),
                      minTileHeight: 90,
                      title: const Text('Net Banking'),
                      children: <Widget>[
                        ListTile(
                          title: const Text('SBI'),
                          leading: Image.asset('assets/images/psbi.png'),
                          trailing: Radio(
                            activeColor: Color(0xFF317773),
                            fillColor: WidgetStateColor.resolveWith(
                                (Set<WidgetState> states) {
                              if (states.contains(WidgetState.disabled)) {
                                return Colors.grey; // Custom inactive color
                              }
                              return const Color(0xFF317773);
                            }),
                            value: 'SBI',
                            groupValue: viewModel.selectedPaymentMethod,
                            onChanged: (value) {
                              viewModel.selectPaymentMethod(value);
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('HDFC'),
                          leading: Image.asset('assets/images/phdfc.png'),
                          trailing: Radio(
                            activeColor: const Color(0xFF317773),
                            fillColor: WidgetStateColor.resolveWith(
                                (Set<WidgetState> states) {
                              if (states.contains(WidgetState.disabled)) {
                                return Colors.grey; // Custom inactive color
                              }
                              return const Color(0xFF317773);
                            }),
                            value: 'HDFC',
                            groupValue: viewModel.selectedPaymentMethod,
                            onChanged: (value) {
                              viewModel.selectPaymentMethod(value);
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Axis Bank'),
                          leading: Image.asset('assets/images/paxis.png'),
                          trailing: Radio(
                            activeColor: Color(0xFF317773),
                            fillColor: WidgetStateColor.resolveWith(
                                (Set<WidgetState> states) {
                              if (states.contains(WidgetState.disabled)) {
                                return Colors.grey; // Custom inactive color
                              }
                              return const Color(0xFF317773);
                            }),
                            value: 'Axis Bank',
                            groupValue: viewModel.selectedPaymentMethod,
                            onChanged: (value) {
                              viewModel.selectPaymentMethod(value);
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('ICICI'),
                          leading: Image.asset('assets/images/picici.png'),
                          trailing: Radio(
                            activeColor: const Color(0xFF317773),
                            fillColor: WidgetStateColor.resolveWith(
                                (Set<WidgetState> states) {
                              if (states.contains(WidgetState.disabled)) {
                                return Colors.grey; // Custom inactive color
                              }
                              return const Color(0xFF317773);
                            }),
                            value: 'ICICI',
                            groupValue: viewModel.selectedPaymentMethod,
                            onChanged: (value) {
                              viewModel.selectPaymentMethod(value);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Card(
                    elevation: 5,
                    color: Colors.white,
                    child: ListTile(
                      minTileHeight: 90,
                      title: const Text('Cash On Delivery'),
                      leading: const Icon(
                        Icons.currency_exchange,
                        color: Color(0xFF317773),
                      ),
                      trailing: Radio(
                        activeColor: const Color(0xFF317773),
                        fillColor: WidgetStateColor.resolveWith(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.disabled)) {
                            return Colors.grey; // Custom inactive color
                          }
                          return const Color(0xFF317773);
                        }),
                        value: 'Cash On Delivery',
                        groupValue: viewModel.selectedPaymentMethod,
                        onChanged: (value) {
                          viewModel.selectPaymentMethod(value);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: Container(
                      width: 360,
                      decoration: BoxDecoration(
                          color: const Color(0xFF317773),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Save',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )),
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
}
