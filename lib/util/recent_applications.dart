import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/models/recent_application_model.dart';
import 'package:equals_online_app/routes/app_router.dart';
import 'package:equals_online_app/util/status_pill.dart';
import 'package:flutter/material.dart';
import 'package:equals_online_app/constants/theme.dart';
import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/util/circle_avatar.dart';

class RecentApplications extends StatelessWidget {
  final Application application;

  const RecentApplications({required this.application});

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
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          application.date,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          application.amount,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                    statusPill(application.status)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    application.status == 'PENDING TERMS'
                        ? Expanded(
                            child: Container(
                            width: 80,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  // Handle button press
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'Accept Terms',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ))
                        : Container(),
                    const SizedBox(width: 10),
                    Expanded(
                        child: Container(
                      width: 80,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.red,
                          width: 1.0,
                        ),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            // Handle button press
                            // context.router
                            //     .push(SingleProductRoute(product: product));
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
