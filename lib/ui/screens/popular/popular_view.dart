import 'package:shopnow/constants/fonts.gen.dart';
import 'package:shopnow/ui/screens/popular/popular_viewmodel.dart';
import 'package:shopnow/ui/widgets/shared.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked/stacked.dart';
import '../../../models/product.dart';
import '../catalogue/catalogue_viewmodel.dart';

class PopularView extends StatelessWidget {
  const PopularView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PopularViewmodel>.reactive(
      onViewModelReady: (model) {
        model.init();
      },
      viewModelBuilder: () => PopularViewmodel(),
      builder:
          (BuildContext context, PopularViewmodel viewModel, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Popular'),
            iconTheme: const IconThemeData(color: Color(0xFF317773)),
          ),
          body: Expanded(
            child: GridView.builder(
              itemCount: viewModel.popproducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                final product = viewModel.popproducts[index];
                return ProductCard(product: product, viewModel: viewModel);
              },
            ),
          ),
        );
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  final PopularViewmodel viewModel;

  ProductCard({required this.product, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xFFF7F6F7),
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
                      topLeft: Radius.circular(15),
                    ),
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
                    const SizedBox(height: 5),
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
              color: Color(0xFF317773),
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
