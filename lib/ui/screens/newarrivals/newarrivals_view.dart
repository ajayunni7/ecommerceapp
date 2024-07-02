import 'package:shopnow/constants/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../models/product.dart';
import 'newarrivals_viewmodel.dart';

class NewarrivalsView extends StatelessWidget {
  const NewarrivalsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewarrivalsViewmodel>.reactive(
      onViewModelReady: (model) {
        model.init();
      },
      viewModelBuilder: () {
        return NewarrivalsViewmodel();
      },
      builder: (BuildContext context, NewarrivalsViewmodel viewModel,
          Widget? child) {
        return Scaffold(
            appBar: AppBar(
              title: const Text('New Arrivals'),
              iconTheme: const IconThemeData(color: Color(0xFF317773)),
            ),
            body: Column(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      PageView.builder(
                        controller: viewModel.pageController,
                        itemCount: viewModel.images.length,
                        onPageChanged: viewModel.onPageChanged,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 80),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  spreadRadius: 2,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                viewModel.images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                      if (viewModel.currentPage > 0)
                        Positioned(
                          left: 30,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFF317773),
                              size: 30,
                            ),
                            onPressed: () {
                              viewModel.goToPreviousPage();
                            },
                          ),
                        ),
                      if (viewModel.currentPage < viewModel.images.length - 1)
                        Positioned(
                          right: 30,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF317773),
                              size: 30,
                            ),
                            onPressed: () {
                              viewModel.goToNextPage();
                            },
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GridView.builder(
                      itemCount: viewModel.newproducts.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.8),
                      itemBuilder: (context, index) {
                        final product = viewModel.newproducts[index];
                        return ProductCard(
                            product: product, viewModel: viewModel);
                      },
                    ),
                  ),
                ),
              ],
            ));
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  final NewarrivalsViewmodel viewModel;

  ProductCard({required this.product, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          // padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color(0xFFF7F6F7),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                    child: Image.asset(
                      product.imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.brand,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(
                          '₹${product.price}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '₹${product.originalPrice}',
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
            icon: Icon(
              product.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: product.isFavorite ? const Color(0xFF317773) : const Color(0xFF317773),
            ),
            onPressed: () {
              viewModel.toggleFavorite(product);
              viewModel.notifyListeners();
            },
          ),
        ),
      ],
    );
  }
}
