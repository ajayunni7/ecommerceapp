import 'package:shopnow/constants/fonts.gen.dart';
import 'package:shopnow/ui/screens/category/category_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoryViewmodel>.reactive(
      onViewModelReady: (model) {
        model.init();
      },
      viewModelBuilder: () {
        return CategoryViewmodel();
      },
      builder:
          (BuildContext context, CategoryViewmodel viewModel, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Category'),
            iconTheme: const IconThemeData(color: Color(0xFF317773)),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: viewModel.categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (context, index) {
                return CategoryItem(
                  title: viewModel.categories[index]['title']!,
                  image: viewModel.categories[index]['image']!,
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final String image;

  const CategoryItem({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.red,
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              height: 136, // Set a fixed height for the image container
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
            height: 8), // Add some space between the image and the text
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
