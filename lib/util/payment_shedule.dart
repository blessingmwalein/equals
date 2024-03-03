import 'package:equals_online_app/constants/theme.dart';
import 'package:flutter/material.dart';

class PaymentSchedule extends StatelessWidget {
  const PaymentSchedule({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: primaryNotiBack,
            border: Border(
              bottom: BorderSide(color: Colors.grey.withOpacity(0.2), width: 1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 4,
                child: Text(
                  'Month',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
              // Expanded(
              //   flex: 2,
              //   child: Text(
              //     'Opn Bal',
              //     style: TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.normal,
              //       color: Colors.black.withOpacity(0.7),
              //     ),
              //   ),
              // ),
              Expanded(
                flex: 4,
                child: Text(
                  'Repayment, Charges',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  'Opn Bal, Cls Bal',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        sheduleCard('December 2023', '1000.00', '850.00', '150.00', '5.00'),
        sheduleCard('December 2023', '1000.00', '850.00', '150.00', '5.00'),
      ],
    );
  }

  Widget sheduleCard(String month, String opBalance, String closingBalance,
      String repayment, String charges) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 9.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        //bottom border
        border: Border(
          bottom: BorderSide(color: Colors.grey.withOpacity(0.2), width: 1),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 1,
        //     blurRadius: 1,
        //     offset: const Offset(0, 1),
        //   ),
        // ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              month,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ),
          // Expanded(
          //   flex: 2,
          //   child: Text(
          //     '\$$opBalance',
          //     style: TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.normal,
          //       color: Colors.black.withOpacity(0.7),
          //     ),
          //   ),
          // ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$$repayment',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                Text(
                  '\$$charges',
                  style: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$$opBalance',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                Text(
                  '\$$closingBalance',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
