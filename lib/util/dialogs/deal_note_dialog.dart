import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/util/bank_product_terms.dart';
import 'package:equals_online_app/util/circle_avatar.dart';
import 'package:equals_online_app/util/dialogs/failed_dialog.dart';
import 'package:equals_online_app/util/dialogs/success_dialog.dart';
import 'package:equals_online_app/util/options_radio_buttons.dart';
import 'package:equals_online_app/util/terms_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DealNoteDialog extends StatefulWidget {
  const DealNoteDialog({Key? key}) : super(key: key);

  @override
  _DealNoteDialogState createState() => _DealNoteDialogState();
}

class _DealNoteDialogState extends State<DealNoteDialog> {
  late InAppWebViewController _webViewController;
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://www.cbz.co.zw/terms-conditions/'));

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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
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
                                '\$24',
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
                              left: 8.0, right: 8, bottom: 8),
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
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 8),
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
                // const BankProductTerms(),
                // const Text(
                //   'Terms and Conditions',
                //   style: TextStyle(
                //     fontSize: 18.0,
                //     fontWeight: FontWeight.normal,
                //     color: Colors.lightBlue,
                //   ),
                // ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200, // Set the height as needed
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Set background color
                    borderRadius:
                        BorderRadius.circular(5.0), // Set border radius
                    border: Border.all(color: Colors.grey), // Set border color
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Terms and Conditions',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '1. This website is owned by CBZ Holdings Limited, a company with limited liability duly incorporated in accordance with the laws of Zimbabwe.',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          '2. This website is made available free of charge..',
                          style: TextStyle(fontSize: 14),
                        ),

                        // Add more terms as needed
                      ],
                    ),
                  ),
                ),

                AcceptTermsCheckbox(),
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
                                'CANCEL',
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
                              bool? result = await ErrorDialog.show(
                                  context,
                                  'Incorrect Information Provided',
                                  'You have provided wrong information. Please press back provide the correct information.',
                                  'CLOSE');

                              if (result != null && result) {
                                Navigator.of(context).pop(true);
                              }
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
                    )
                  ],
                )
                // const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
