import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/routes/app_router.dart';
import 'package:equals_online_app/util/alert.dart';
import 'package:equals_online_app/util/dialogs/loan_details_dialog.dart';
import 'package:equals_online_app/util/dialogs/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:equals_online_app/constants/theme.dart';
import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/util/circle_avatar.dart';

class CurrentLoanCard extends StatelessWidget {
  final Product product;

  const CurrentLoanCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // context.router.push(SingleProductRoute(product: product));
      },
      child: Container(
          //full width
          width: MediaQuery.of(context).size.width,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 8, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CURRENT LOAN',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.lightBlue,
                        ),
                      ),
                      Text(
                        'ACTIVE',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  )),
              Divider(
                color: Colors.grey.withOpacity(0.2),
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$6500.00',
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.8)),
                        ),
                        const Text(
                          'Next automatic deduction 23/02/2024',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      // width: 80,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => const LoanDetailsDialog(),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Pay Off',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
