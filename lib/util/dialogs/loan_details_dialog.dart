import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/util/circle_avatar.dart';
import 'package:equals_online_app/util/custom_dropdown.dart';
import 'package:equals_online_app/util/options_radio_buttons.dart';
import 'package:flutter/material.dart';

class LoanDetailsDialog extends StatelessWidget {
  const LoanDetailsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          width: MediaQuery.of(context).size.width *
              0.9, // Adjust the width as needed
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
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 5),
                          child: Text(
                            'LOAN DETAILS',
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
                        Stack(
                          children: [
                            // Container with border
                            Container(
                              margin: EdgeInsets.only(top: 14),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(
                                    10.0), // Border radius
                              ),
                              padding: const EdgeInsets.all(
                                  10.0), // Padding for the entire container
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  // First Row
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8, bottom: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Repayment reduction',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                            color:
                                                Colors.black.withOpacity(0.6),
                                          ),
                                        ),
                                        Text(
                                          'min \$1,000.00',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                            color:
                                                Colors.black.withOpacity(0.6),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Second Row
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8, bottom: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Tenure reduction',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                            color:
                                                Colors.black.withOpacity(0.6),
                                          ),
                                        ),
                                        Text(
                                          'min 3 months',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                            color:
                                                Colors.black.withOpacity(0.6),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Label on top of the container
                            Positioned(
                              top: -10,
                              left: 10,
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                  color: Colors
                                      .white, // Background color for the label
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        10.0), // Match the container's top-left border radius
                                    topRight: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    bottomLeft: Radius.circular(0.0),
                                  ),
                                ),
                                child: const Text(
                                  'Custom Amounts',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Early current repayment',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                              Text(
                                '\$4253.78',
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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Full repayment',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                              Text(
                                '\$562,553.78',
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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Arrears amount',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                              Text(
                                '\$0.00',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        )
                      ],
                    )),
                SizedBox(
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
                            'PAY OFF OPTIONS AMOUNTS',
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

                        //3 OPTIONS RADIO BUTTTONS
                        ThreeOptionsRadioButtons(),
                        const SizedBox(
                          height: 8,
                        ),
                        // StatusDropdown(),
                        // Padding(
                        //   padding: const EdgeInsets.only(
                        //       left: 16.0, right: 16, bottom: 16),
                        //   child: Column(
                        //     children: [
                        //       Row(
                        //         mainAxisAlignment:
                        //             MainAxisAlignment.spaceBetween,
                        //         children: [
                        //           Text(
                        //             'Amount',
                        //             style: TextStyle(
                        //                 fontSize: 16,
                        //                 color: Colors.black.withOpacity(0.7)),
                        //           ),
                        //         ],
                        //       ),
                        //       const SizedBox(height: 8),
                        //       SizedBox(
                        //         height: 45,
                        //         child: TextFormField(
                        //           decoration: const InputDecoration(
                        //             border: OutlineInputBorder(),
                        //           ),
                        //           keyboardType: TextInputType.number,
                        //           validator: (value) {
                        //             // Add validation logic for the tenure
                        //           },
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                      ],
                    )),
                const SizedBox(
                  height: 13,
                ),
                Center(
                  child: Container(
                    // width: ,
                    height: 50,
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
                            'CONFIRM',
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
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
