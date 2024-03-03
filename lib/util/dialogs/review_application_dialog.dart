import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/util/circle_avatar.dart';
import 'package:equals_online_app/util/dialogs/deal_note_dialog.dart';
import 'package:equals_online_app/util/dialogs/failed_dialog.dart';
import 'package:equals_online_app/util/dialogs/success_dialog.dart';
import 'package:equals_online_app/util/product_terms_card.dart';
import 'package:flutter/material.dart';

class ReviewApplicationDialog extends StatelessWidget {
  final Product product;

  const ReviewApplicationDialog({Key? key, required this.product})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          width:
              MediaQuery.of(context).size.width, // Adjust the width as needed
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                circleAvatar(product),
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Text(
                  'Offer Valid Until 23rd May 2023',
                  style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey),
                ),
                // const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$2458.67',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      margin: const EdgeInsets.only(top: 10),
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
                // const SizedBox(height: 8),
                Column(
                  children: [
                    ProductTermsCard(product: product),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amount',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        SizedBox(width: 16),
                        // Text(
                        //   'Minimum: \$1000',
                        //   style: TextStyle(
                        //       fontSize: 16,
                        //       color: Colors.black.withOpacity(0.7)),
                        // )
                      ],
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        initialValue: '1500',
                        validator: (value) {
                          // Add validation logic for the tenure
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tenure',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        const SizedBox(width: 16),
                        // Text(
                        //   'Min:2, Max: 6',
                        //   style: TextStyle(
                        //       fontSize: 16,
                        //       color: Colors.black.withOpacity(0.7)),
                        // )
                      ],
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        initialValue: '5',
                        validator: (value) {
                          // Add validation logic for the tenure
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Repayment Amount',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        SizedBox(width: 16),
                        // Text(
                        //   'Min:2, Max: 6',
                        //   style: TextStyle(
                        //       fontSize: 16,
                        //       color: Colors.black.withOpacity(0.7)),
                        // )
                      ],
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        initialValue: '3',
                        validator: (value) {
                          // Add validation logic for the tenure
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        // width: ,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              // Handle button press
                              Navigator.of(context)
                                  .pop(true); // Close the dialog
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'BACK',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        // width: ,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () async {
                              // Handle button press
                              //close the dialog
                              Navigator.of(context).pop();
                              showDialog(
                                  context: context,
                                  builder: (context) => const DealNoteDialog());
                              // bool? result = await ErrorDialog.show(
                              //     context,
                              //     'Deal Not Good',
                              //     'Your deal is not good. Please try again later.',
                              //     'CLOSE');
                              // bool? result = await SuccessDialog.show(
                              //     context,
                              //     'Application ',
                              //     'Your KYC has been updated successfully.You will receive an SMS with amount which  you qualify for.',
                              //     'NEXT');

                              // showDialog(
                              //   context: context,
                              //   builder: (context) => SuccessDialog(
                              //     title: 'Application Successful',
                              //     message:
                              //         'Your application was successful. You will receive and SMS with transaction details of your disbursement.',
                              //   ),
                              // );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'APPLY',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
