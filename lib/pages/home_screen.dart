import 'package:ecomapp/models/my_product.dart';
import 'package:ecomapp/widgets/product_card.dart';
import 'package:flutter/material.dart';

//step 8 - homescreen
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //step 14
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),

      //step 9 -column widget
      child: Column(
        children: [
          const Text(
            "Our Products",
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          //step 10- row widget
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //step 12 call it
              //step 15 - add inside things
              _buildProductCategory(index: 0, name: "All Products"),
              //step 16 - create two more categories
              _buildProductCategory(index: 1, name: "Jackets"),
              _buildProductCategory(index: 2, name: "Sneakers"),
            ],
          ),
        ],
      ),
    );
  }

//step 11
  _buildProductCategory({required int index, required String name}) =>
      Container(
        width: 100,
        height: 40,
        margin: const EdgeInsets.only(top: 10, right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            //step 13
            color: isSelected == index ? Colors.red : Colors.red.shade300,
            borderRadius: BorderRadius.circular(8)),
        child: Text(name, style: const TextStyle(color: Colors.white)),
      );

  //step 20 - show all the product here

  // ignore: unused_element
  _buildAllProducts() => GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100 / 140),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),

      //step 21
      scrollDirection: Axis.vertical,
      itemCount: MyProducts.allProducts.length,
      itemBuilder: (context, index) {
        final allProducts = MyProducts.allProducts[index];
        return ProductCard(product: allProducts);
      });
}
