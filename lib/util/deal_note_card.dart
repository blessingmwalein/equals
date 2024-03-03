import 'package:equals_online_app/util/bank_product_terms.dart';
import 'package:equals_online_app/util/dialogs/success_dialog.dart';
import 'package:equals_online_app/util/terms_check_box.dart';
import 'package:flutter/material.dart';

class DealNoteCard extends StatefulWidget {
  const DealNoteCard({super.key});

  @override
  State<DealNoteCard> createState() => _DealNoteCardState();
}

class _DealNoteCardState extends State<DealNoteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      width:
          MediaQuery.of(context).size.width * 0.9, // Adjust the width as needed
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 1,
        //     blurRadius: 1,
        //     offset: const Offset(0, 1),
        //   ),
        // ],
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 5),
                          child: Text(
                            'DEAL NOTE',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.lightBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.2),
                      thickness: 1,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Product Name',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          Text(
                            'SSB Loan Product',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Currency',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          Text(
                            'ZWL',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Applied Amount',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          Text(
                            '\$12,263.78',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Applied Amount',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          Text(
                            '\$425,263.78',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Repayment Amount',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          Text(
                            '\$12,263.78',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Repayment Amount',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          Text(
                            '\$25,353.78',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tenure',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          Text(
                            '12 months',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                )),
            const SizedBox(
              height: 8,
            ),
            Container(
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
                      padding: EdgeInsets.only(left: 10.0, top: 5),
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
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
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
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
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
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
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
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
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
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
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
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8, bottom: 10),
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
                    const SizedBox(
                      height: 8,
                    )
                  ],
                )),
            const SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      width: 80,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5.0),
                        // border: Border.all(
                        //   color: Colors.black.withOpacity(0.8),
                        // ),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.email_outlined),
                            color: Colors.white.withOpacity(0.8),
                          ),
                          Text(
                            'Email Offer Letter',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Container(
                      width: 80,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5.0),
                        // border: Border.all(
                        //   color: Colors.black.withOpacity(0.8),
                        // ),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.download),
                            color: Colors.white.withOpacity(0.8),
                          ),
                          Text(
                            'Download',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //download statement
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
