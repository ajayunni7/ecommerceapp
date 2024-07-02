import 'package:shopnow/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewmodel>.reactive(
      onViewModelReady: (model) {
        model.init();
      },
      viewModelBuilder: () {
        return ProfileViewmodel();
      },
      builder:
          (BuildContext context, ProfileViewmodel viewModel, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Profile'),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // ProfileHeader
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Border color
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/gut2.jpg'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Brolin Thomas',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'asd@gmail.com',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // AccountSettingsSection
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 5, top: 5),
                      child: Text(
                        'Account Settings',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Card(
                      color: const Color(0xffF1F1EF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                              width: 1, color: Colors.black38)),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {

                            },
                            leading: const Icon(
                              Icons.person,
                              color: Color(0xFF317773),
                              size: 30,
                            ),
                            title: const Text(
                              'Edit Profile',
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF317773),
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: Colors.black38,
                          ),
                          ListTile(
                            onTap: () {},
                            leading: const Icon(
                              Icons.lock,
                              color: Color(0xFF317773),
                              size: 30,
                            ),
                            title: const Text('Security'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF317773),
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: Colors.black38,
                          ),
                          ListTile(
                            onTap: () {
                              viewModel.gotoaddresspage();
                            },
                            leading: const Icon(
                              Icons.location_on,
                              color: Color(0xFF317773),
                              size: 30,
                            ),
                            title: const Text('Saved Address'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF317773),
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: Colors.black38,
                          ),
                          ListTile(
                            onTap: () {
                              viewModel.gotopayment();
                            },
                            leading: const Icon(
                              Icons.payment,
                              color: Color(0xFF317773),
                              size: 30,
                            ),
                            title: const Text('Payment Settings'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF317773),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // OrdersSection
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 5, top: 5),
                      child: Text(
                        'Orders',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Card(
                      color: const Color(0xffF1F1EF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                              width: 1, color: Colors.black38)),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              viewModel.gototrackorder();
                            },
                            leading: const Icon(
                              Icons.pin_drop_outlined,
                              color: Color(0xFF317773),
                              size: 30,
                            ),
                            title: const Text('Track Order'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF317773),
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: Colors.black38,
                          ),
                          ListTile(
                            onTap: () {
                              viewModel.gotoorderhistory();
                            },
                            leading: const Icon(
                              Icons.history,
                              color: Color(0xFF317773),
                              size: 30,
                            ),
                            title: const Text('Order History'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF317773),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // GeneralSection
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 5, top: 5),
                      child: Text(
                        'General',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Card(
                      color: const Color(0xffF1F1EF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                              width: 1, color: Colors.black38)),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {},
                            leading: const Icon(
                              Icons.card_giftcard,
                              color: Color(0xFF317773),
                              size: 30,
                            ),
                            title: const Text('Invite & Earn'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF317773),
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: Colors.black38,
                          ),
                          ListTile(
                            onTap: () {},
                            leading: const Icon(
                              Icons.local_offer,
                              color: Color(0xFF317773),
                              size: 30,
                            ),
                            title: const Text('Coupons'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF317773),
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: Colors.black38,
                          ),
                          ListTile(
                            onTap: () {
                              viewModel.gonotif();
                            },
                            leading: const Icon(
                              Icons.notifications,
                              color: Color(0xFF317773),
                              size: 30,
                            ),
                            title: const Text('Notifications'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF317773),
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: Colors.black38,
                          ),
                          ListTile(
                            onTap: () {
                              viewModel.gotosuccesstemp();
                            },
                            leading: const Icon(
                              Icons.help,
                              color: Color(0xFF317773),
                              size: 30,
                            ),
                            title: const Text('Help Center'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF317773),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // LogOutButton
                SizedBox(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width - 50,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            title: const Center(
                                child: Icon(Icons.question_mark,
                                    size: 40, color: Color(0xFF317773))),
                            content: Text("Do you want to log out?",textAlign: TextAlign.center,),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Cancel"),
                              ),
                              TextButton(
                                onPressed: () {
                                  viewModel.logout();
                                },
                                child: const Text("Yes"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.red,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                        SizedBox(
                            width:
                                5), // Adding a bit of spacing between icon and text
                        Text(
                          'Log out',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
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
