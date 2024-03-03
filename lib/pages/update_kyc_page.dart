import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/layouts/app_layout.dart';
import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/routes/app_router.dart';
import 'package:equals_online_app/util/activity_card.dart';
import 'package:equals_online_app/util/current_loan.dart';
import 'package:equals_online_app/util/dialogs/failed_dialog.dart';
import 'package:equals_online_app/util/dialogs/success_dialog.dart';
import 'package:equals_online_app/util/options_card.dart';
import 'package:equals_online_app/util/product_card.dart';
import 'package:equals_online_app/util/product_terms_card.dart';
import 'package:equals_online_app/util/recent_applications.dart';
import 'package:equals_online_app/util/recent_loans.dart';
import 'package:equals_online_app/util/total_amount_card.dart';

import 'package:flutter/material.dart';

@RoutePage()
class KycUpdatePage extends StatefulWidget {
  const KycUpdatePage({super.key});

  @override
  State<KycUpdatePage> createState() => _KycUpdatePageState();
}

class _KycUpdatePageState extends State<KycUpdatePage> {
  final data = [
    {
      'name': 'Period at current residential address',
      'options': [
        'Less than 3 months',
        '3 months to 6 months',
        '6 months to 12 months',
        '12 months to 24 months',
        'More than 24 months'
      ]
    },
    {
      'name': 'Residential Home Status',
      'options': [
        'Rented property',
        'Provided by employer',
        'Owned with a mortgage',
        'Stay with parents/relative'
      ]
    },
    {
      'name': 'Time with current employer',
      'options': [
        'Less than 3 months',
        '3 months to 6 months',
        '6 months to 12 months',
        '12 months to 24 months',
        'More than 24 months'
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MainPageLayout(
      title: 'KYC Update',
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              for (var i = 0; i < data.length; i++)
                OptionsCard(
                  index: i + 1,
                  name: data[i]['name'],
                  values: data[i]['options'] as List<Object>,
                ),
              InkWell(
                onTap: () async {
                  bool? result = await SuccessDialog.show(
                      context,
                      'KYC Update Successful',
                      'Your KYC has been updated successfully.You will receive an SMS with amount which  you qualify for.',
                      'NEXT');
                  // bool? result = await ErrorDialog.show(
                  //     context,
                  //     'Missing KYC Details',
                  //     'We do not have enough information for you to apply. Kindly visit the branch with national ID and fill in the KYC details.',
                  //     'CLOSE');

                  if (result != null && result) {
                    // print('svika');
                    context.router.push(const ProductListRoute());
                  }
                },
                child: Container(
                  // width: 80,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'DONE',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
