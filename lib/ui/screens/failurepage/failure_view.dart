
import 'package:shopnow/ui/screens/failurepage/failure_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class FailureView extends StatefulWidget {
  const FailureView({super.key});

  @override
  _FailureViewState createState() => _FailureViewState();
}

class _FailureViewState extends State<FailureView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late FailureViewmodel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = FailureViewmodel();
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
    return ViewModelBuilder<FailureViewmodel>.reactive(
      viewModelBuilder: () => _viewModel,
      builder:
          (BuildContext context, FailureViewmodel viewModel, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Color(0xFF317773)),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 170,
                  child: Lottie.asset(
                    'assets/images/Animationfail4.json',
                    controller: _controller,
                    onLoaded: (composition) {
                      _controller.duration = composition.duration;
                      _controller.forward();
                    },
                  ),
                ),
                const Text(
                  'Order Failed!',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFD00539)),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color(0xFF317773),
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
                        viewModel.gotocart();
                      },
                      child: const Text(
                        'Retry',
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
