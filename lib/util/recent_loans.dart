import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/routes/app_router.dart';
import 'package:equals_online_app/util/status_pill.dart';
import 'package:flutter/material.dart';
import 'package:equals_online_app/constants/theme.dart';
import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/util/circle_avatar.dart';

class RecentLoans extends StatelessWidget {
  final Product product;

  const RecentLoans({required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(SingleProductRoute(product: product));
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
                padding: EdgeInsets.only(left: 10.0, top: 8),
                child: Text(
                  'RECENT LOANS',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.2),
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '17 March 2024',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          '\$728.00',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                    statusPill('CLOSED')
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
