import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/routes/app_router.dart';
import 'package:equals_online_app/util/dialogs/apply_dialog.dart';
import 'package:flutter/material.dart';
import 'package:equals_online_app/constants/theme.dart';
import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/util/circle_avatar.dart';

class TotalAmountCard extends StatelessWidget {
  final Product product;

  const TotalAmountCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(SingleProductRoute(product: product));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 9.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Available Limit',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$${product.availableAmount}',
                        style: TextStyle(
                            fontSize: 43.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Current Balance',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$500.00',
                        style: TextStyle(
                            fontSize: 43.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 35,
                    // width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Colors.purple)),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          // showDialog(
                          //   context: context,
                          //   builder: (context) {
                          //     return ApplicationDialog(product: product);
                          //   },
                          // );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.refresh,
                                color: Colors.purple,
                              ),
                              Text(
                                'Refresh Balance',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 35,
                    // width: 60,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return ApplicationDialog(product: product);
                            },
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                'Apply',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
