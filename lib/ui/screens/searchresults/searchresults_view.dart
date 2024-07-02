import 'package:shopnow/constants/fonts.gen.dart';
import 'package:shopnow/ui/screens/searchresults/searchresults_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SearchresultsView extends StatelessWidget {
  const SearchresultsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchresultsViewmodel>.reactive(
      onViewModelReady: (model) {
        model.init();
      },
      viewModelBuilder: () {
        return SearchresultsViewmodel();
      },
      builder:
          (BuildContext context, SearchresultsViewmodel viewModel, Widget? child) {
        return Scaffold(  appBar: AppBar(
          title: const Text('Results'),
          iconTheme: const IconThemeData(color: Color(0xFF317773)),
        ),
        );
      },
    );
  }
}
