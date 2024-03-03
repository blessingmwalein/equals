import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/routes/app_router.dart';
import 'package:equals_online_app/util/dialogs/deal_note_dialog.dart';
import 'package:flutter/material.dart';
import 'package:equals_online_app/constants/theme.dart';
import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/util/circle_avatar.dart';

class ProductTermsCard extends StatelessWidget {
  final Product product;

  const ProductTermsCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => const DealNoteDialog(),
        );
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
                  'PRODUCT TERMS',
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
                padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Application Fee',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      '\$10.00',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Fixed Fee',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    // Text(
                    //   '\$10.00',
                    //   style: TextStyle(
                    //     fontSize: 17.0,
                    //     fontWeight: FontWeight.normal,
                    //     color: Colors.black.withOpacity(0.7),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Insurance Fee',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      '\$3.00',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Monthly Fee',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    // Text(
                    //   '\$10.00',
                    //   style: TextStyle(
                    //     fontSize: 17.0,
                    //     fontWeight: FontWeight.normal,
                    //     color: Colors.black.withOpacity(0.7),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Interest Rate',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      '15%',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Monthly',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    // Text(
                    //   '\$10.00',
                    //   style: TextStyle(
                    //     fontSize: 17.0,
                    //     fontWeight: FontWeight.normal,
                    //     color: Colors.black.withOpacity(0.7),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
