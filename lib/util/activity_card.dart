import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/routes/app_router.dart';
import 'package:equals_online_app/util/alert.dart';
import 'package:flutter/material.dart';
import 'package:equals_online_app/constants/theme.dart';
import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/util/circle_avatar.dart';

class ActivityCard extends StatelessWidget {
  final Product product;

  const ActivityCard({required this.product});

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
                  'ACTIVITY',
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
                padding: const EdgeInsets.all(8.0),
                child: alertMessage(
                    'Accept terms and conditions for your recent application'),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8),
                child: alertMessage(
                    'Update your KYC to enable you to apply for this product'),
              ),
            ],
          )),
    );
  }
}
