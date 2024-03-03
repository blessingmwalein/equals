import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/routes/app_router.dart';
import 'package:equals_online_app/util/dialogs/apply_dialog.dart';
import 'package:flutter/material.dart';
import 'package:equals_online_app/constants/theme.dart';
import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/util/circle_avatar.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // context.router.push(SingleProductRoute(product: product));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 9.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.6,
              blurRadius: 0.6,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                circleAvatar(product),
                const SizedBox(width: 5.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 3),
                    //add description of the product
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        product.description,
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),

                    Text(
                      'Offer valid until ${product.offerDate}',
                      style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic),
                    ),

                    // Container(
                    //     color: Colors.red,
                    //     width: double.infinity,
                    //     height: 1.0,
                    //     child: Text('hellow')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$${product.availableAmount}',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: primaryBlack.withOpacity(
                                  0.7,
                                ),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const Text(
                              'Available Amount',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${product.interest}%',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: primaryBlack.withOpacity(
                                  0.7,
                                ),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const Text(
                              'Interest',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${product.tenure} months',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.normal,
                                  color: primaryBlack.withOpacity(
                                    0.7,
                                  )),
                            ),
                            const Text(
                              'Tenure',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                // const SizedBox(width: 10),
                Spacer(),
                // currency pill
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    product.currency,
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                    color: product.isAvailable
                        ? Colors.purple
                        : Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        // Handle button press
                        showDialog(
                            context: context,
                            builder: (context) =>
                                ApplicationDialog(product: product));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
                const SizedBox(width: 10),
                Expanded(
                    child: Container(
                  width: 80,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: Colors.purple,
                      width: 1.0,
                    ),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        // Handle button press
                        context.router
                            .push(SingleProductRoute(product: product));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Manage Loans',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                  ),
                ))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
