import 'package:amazon_clone/features/product_details/services/product_details_services.dart';
import 'package:flutter/material.dart';

class CartProduct extends StatefulWidget {
  final int index;
  const CartProduct({required this.index, super.key});

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  final ProductDetailsServices productDetailsServices =
      ProductDetailsServices();

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
