import 'package:equals_online_app/constants/theme.dart';
import 'package:flutter/material.dart';

class Statement extends StatelessWidget {
  const Statement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Row for labels ref and date , description and amount

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
              Text(
                'Ref, Date',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              // Text(
              //   'Date',
              //   style: TextStyle(
              //     fontSize: 18,
              //     fontWeight: FontWeight.normal,
              //     color: Colors.black.withOpacity(0.7),
              //   ),
              // ),
              Text(
                'Description',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              Text(
                'Amount',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // dateText('December 2023'),
        stateMentCard(
            'FT2077 Disbursement Amount', '25/11/2023', 'ZWL(20000.00)'),
        stateMentCard('FT2045 Admission Fee', '26/11/2023', 'ZWL(-50.00)'),
        stateMentCard('FT4549 Repayment', '01/12/2023', 'ZWL(-150.00)'),
        stateMentCard('FT4549 Repayment', '01/01/2024', 'ZWL(-150.00)'),
        stateMentCard('FT4549 Repayment', '01/02/2024', 'ZWL(-150.00)'),
        // dateText('January 2024'),
        // stateMentCard('CHRG:A/C Transfer', '12/12/2024', 'ZWL+400.00'),
        // stateMentCard('CHRG:A/C Received money', '12/12/2024', 'ZWL300.00'),
        // stateMentCard('CHRG:A/C Fees Tuition UZ', '12/12/2024', 'ZWL-500.00'),
        // dateText('February 2024'),
        // stateMentCard('CHRG:A/C Maintenance fee', '12/12/2024', 'ZWL-23.00'),
        // stateMentCard('CHRG:A/C Maintenance fee', '12/12/2024', 'ZWL-89.00'),
        // stateMentCard('CHRG:A/C Maintenance fee', '12/12/2024', 'ZWL-12.00'),
      ],
    );
  }

  Widget dateText(String text) {
    return Container(
      color: primaryNotiBack,
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget stateMentCard(String title, String date, String amount) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.withOpacity(0.2), width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                ),
              ]),

          // Spacer(),
          // const SizedBox(width: 100),
          Text(
            amount,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
