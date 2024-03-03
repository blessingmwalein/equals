import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/layouts/app_layout.dart';
import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/util/product_card.dart';

import 'package:flutter/material.dart';

@RoutePage()
class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _HomePageState();
}

class _HomePageState extends State<ProductListPage> {
  //product list
  final List<Product> products = [
    Product(
        name: 'SSB Loan Product',
        offerDate: '2022-01-01',
        availableAmount: 7239.89,
        interest: 5,
        tenure: 12,
        currency: 'USD',
        description: 'This is a loan product for SSB customers',
        isAvailable: true,
        color: Colors.green),
    Product(
        name: 'Payday Loan Product',
        offerDate: '2022-01-01',
        availableAmount: 7239.89,
        interest: 5,
        currency: 'USD',
        isAvailable: true,
        description: 'This is a loan product for SSB customers',
        color: Colors.green.withOpacity(0.2),
        tenure: 12),
    Product(
        name: 'Credit Card',
        offerDate: '2022-01-01',
        availableAmount: 7239.89,
        interest: 5,
        currency: 'ZWL',
        isAvailable: false,
        description: 'This is a loan product for SSB customers',
        color: Colors.purple,
        tenure: 12),
  ];
  @override
  Widget build(BuildContext context) {
    return MainPageLayout(
      title: "Available Products",
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              //product list
              products.isEmpty
                  ? Column(
                      children: [
                        //add icon fort empty list
                        SizedBox(
                          height: 150,
                        ),
                        const Center(
                          child: Icon(
                            Icons.hourglass_empty,
                            size: 100,
                            color: Colors.grey,
                          ),
                        ),

                        Center(
                          child: Text(
                            'No products available',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                        )
                      ],
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return ProductCard(product: products[index]);
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
