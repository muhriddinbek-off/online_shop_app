import 'package:flutter/material.dart';
import 'package:online_shop_app/screens/add_to_cart.dart';
import 'package:online_shop_app/servises/data/Product_api.dart';
import 'package:online_shop_app/servises/data/api/Provider_api.dart';
import 'package:online_shop_app/servises/data/api/provider_id.dart';
import 'package:provider/provider.dart';

class ContainerGrid extends StatefulWidget {
  const ContainerGrid({
    super.key,
  });

  @override
  State<ContainerGrid> createState() => _ContainerGridState();
}

class _ContainerGridState extends State<ContainerGrid> {
  ProductApi productApi = ProductApi();
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderApiServise>(
      builder: (context, value, child) {
        if (value.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.6),
          itemCount: value.productInfo[0].products.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    if (context.read<PrductViewModal>().products.isNotEmpty) {
                      context.read<PrductViewModal>().products.removeAt(0);
                    }
                    context.read<PrductViewModal>().getProductInfo(value.productInfo[0].products[index].id);
                    context.read<ProductApi>().getProductName(value.productInfo[0].products[index].id);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddToCart(),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 203,
                    width: MediaQuery.of(context).size.height * 0.4,
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: NetworkImage(value.productInfo[0].products[index].thumbnail), fit: BoxFit.cover),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        value.productInfo[0].products[index].title,
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
                      ),
                      Text(
                        value.productInfo[0].products[index].brand,
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
                      ),
                      Text(
                        '\$${value.productInfo[0].products[index].price}',
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20), height: 1.8),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
