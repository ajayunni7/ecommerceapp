import 'package:shopnow/ui/screens/successpage/success_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class SuccessView extends StatefulWidget {
  const SuccessView({super.key});

  @override
  _SuccessViewState createState() => _SuccessViewState();
}

class _SuccessViewState extends State<SuccessView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late SuccessViewmodel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = SuccessViewmodel();
    _controller = AnimationController(vsync: this);
    _viewModel.init(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SuccessViewmodel>.reactive(
      viewModelBuilder: () => _viewModel,
      builder:
          (BuildContext context, SuccessViewmodel viewModel, Widget? child) {
        return Scaffold(
          backgroundColor: const Color(0xFF317773),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Color(0xFF317773)),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  child: Lottie.asset(
                    'assets/images/Animationsuccess5.json',
                    controller: _controller,
                    onLoaded: (composition) {
                      _controller.duration = composition.duration;
                      _controller.forward();
                    },
                  ),
                ),
                const Text(
                  'Order Confirmed!',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1D3C3B),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: TextButton(
                      onPressed: () {
                        viewModel.gototrack();
                      },
                      child: const Text(
                        'Track Order',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEDE8E9),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: TextButton(
                      onPressed: () {
                        viewModel.gotohome();
                      },
                      child: const Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF317773)),
                      )),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
